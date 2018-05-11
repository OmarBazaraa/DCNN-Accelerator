#include <bits/stdc++.h>
using namespace std;

//
// Constants
//
const int N = 256;      // Image size
const int M = 8;        // Filter maximum size

//
// Global variables
//
int imgExpected[N][N];
int imgIn[N][N], imgOut[N][N];
int filter[M][M];
int filterSize;
bool stride;            // filter stride step:  0 => step=1,        1 => step=2
bool instruction;       // instruction type:    0 => convolution,   1 => pooling

// ==================================================================================

/**
 * Reads memory data and fill in & out images and the filter.
 */
void read(string fileName) {
    // Member variables
    string s;
    int idx, val;

    // Read RAM file
    ifstream fin("RESULT.mem");

    // Skip intial lines
    getline(fin, s);
    getline(fin, s);
    getline(fin, s);

    // Read input image
    idx = 0;
    while (idx < N * N) {
        fin >> s >> val;
        imgIn[idx / N][idx % N] = val;
        idx++;
    }

    // Read output image
    idx = 0;
    while (idx < N * N) {
        fin >> s >> val;
        imgOut[idx / N][idx % N] = val;
        idx++;
    }

    // Read filter
    idx = 0;
    while (idx < M * M) {
        fin >> s >> val;
        filter[idx / M][idx % M] = val;
        idx++;
    }
}

/**
 * Applies convolution to the input image and fill
 * the results in the expected image array.
 */
void applyConvolution() {
    int F = filterSize >> 1;

    for (int i = F; i + F < N; i += stride + 1) {
        for (int j = F; j + F < N; j += stride + 1) {
            // Get a reference to the current center of the window
            int& cur = imgExpected[i >> stride][j >> stride];

            // Convolve the window centered at (i, j) with the filter
            for (int r = -F; r <= F; ++r) {
                for (int c = -F; c <= F; ++c) {
                    cur += imgIn[i + r][j + c] * filter[r + F][c + F];
                }
            }

            // Truncate result and consider only the first byte
            cur &= 255;
        }
    }
}

/**
 * Applies pooling to the input image and fill
 * the results in the expected image array.
 */
void applyPooling() {
    int F = filterSize >> 1;

    for (int i = F; i + F < N; i += stride + 1) {
        for (int j = F; j + F < N; j += stride + 1) {
            // Get a reference to the current center of the window
            int& cur = imgExpected[i >> stride][j >> stride];

            // Sum the cells of the window centered at (i, j)
            for (int r = -F; r <= F; ++r) {
                for (int c = -F; c <= F; ++c) {
                    cur += imgIn[i + r][j + c];
                }
            }

            // Truncate result and consider only the first byte then shift the result
            cur &= 255;
            cur >>= filterSize;
        }
    }
}

/**
 * Compares expected output with the actual output.
 *
 * @return: the number of mis matched cells in the output image
 */
int compareResults() {
    int cnt = 0;

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            if (imgExpected[i][j] != imgOut[i][j]) {
                printf("Cell (%d, %d) doesn't match expected result\n", i, j);
                printf("Expected output\t: %d\n", imgExpected[i][j]);
                printf("Actual output\t: %d\n\n", imgOut[i][j]);
                cnt++;
            }
        }
    }

    return cnt;
}

/**
 * Main driver function.
 */
int main(int argc, char *argv[]) {
    // Read memory
    read(argc > 1 ? argv[1] : "RESULT.mem");

    //
    // Choose options
    //
    int option;

    // Filter size
    cout << "Please choose filter size: " << endl;
    cout << "1. 3x3" << endl;
    cout << "2. 5x5" << endl;

    cin >> option;
    filterSize = (option == 2 ? 5 : 3);

    // Filter stride step size
    cout << "Please choose filter stride step: " << endl;
    cout << "1. Step=1" << endl;
    cout << "2. Step=2" << endl;

    cin >> option;
    stride = (option == 2);

    // Instruction type
    cout << "Please choose operation type: " << endl;
    cout << "1. Convolution" << endl;
    cout << "2. Pooling" << endl;

    cin >> option;
    instruction = (option == 2);

    // -------------------------------------------------------
    
    // Perform operation
    instruction ? applyPooling() : applyConvolution();

    // Compare outputs
    int cnt = compareResults();

    if (cnt > 0) {
        printf("Total mis-matched cells\t: %d\n", cnt);
    } else {
        cout << "Test succeeded ^_^" << endl;
    }

    return 0;
}