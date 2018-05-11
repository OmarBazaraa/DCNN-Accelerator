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
 * Reads memory data and fills in & out images and the filter.
 *
 * @param fileName  the RAM file name to read
 */
void readMemory(string fileName) {
    // Member variables
    string s;
    int idx, val;

    // Read RAM file
    ifstream fin(fileName);

    // Skip intial lines
    getline(fin, s);
    getline(fin, s);
    getline(fin, s);

    // Read input image
    for (int i = 0; i < N; ++i)
        for (int j = 0; j < N; ++j)
            fin >> s >> imgIn[i][j];

    // Read output image
    for (int i = 0; i < N; ++i)
        for (int j = 0; j < N; ++j)
            fin >> s >> imgOut[i][j];

    // Read filter
    for (int i = 0; i < M; ++i)
        for (int j = 0; j < M; ++j)
            fin >> s >> filter[i][j];
}

/**
 * Reads user options and fills the corresponding global variables.
 */
void readUserOptions() {
    int option;

    // Filter size
    cout << "Please choose filter size: " << endl;
    cout << "1. 3x3" << endl;
    cout << "2. 5x5" << endl;

    cin >> option;
    filterSize = (option == 2 ? 5 : 3);

    // Filter stride step size
    cout << "Please choose filter stride step size: " << endl;
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
}

/**
 * Applies convolution to the input image and fills
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
 * Applies pooling to the input image and fills
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
 * @return the number of mis-matching cells in the output image
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
    readMemory(argc > 1 ? argv[1] : "RAM_RESULT.mem");

    // Choose options
    readUserOptions();

    // Perform operation
    instruction ? applyPooling() : applyConvolution();

    // Compare outputs
    int cnt = compareResults();

    if (cnt > 0) {
        printf("\nTotal mis-matching cells\t: %d\n", cnt);
    } else {
        printf("\nTest succeeded ^_^\n");
    }

    return 0;
}