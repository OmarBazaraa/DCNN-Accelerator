#include <bits/stdc++.h>
using namespace std;

// Image size
const int N = 256;

// Filter maximum size
const int M = 8;

// floor(filterSize / 2)
const int F = 1;

// Member variables
string s;
int idx, val;
int imgIn[N][N], imgConv[N][N], imgOut[N][N];
int filter[M][M];

int main() {
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

	// Compute the expected output image after applying convolution
	for (int i = F; i + F < N; ++i) {
		for (int j = F; j + F < N; ++j) {
			// Convolve the window centered at (i, j) with the filter
			for (int r = -F; r <= F; ++r) {
				for (int c = -F; c <= F; ++c) {
					imgConv[i][j] += imgIn[i + r][j + c] * filter[r + F][c + F];
				}
			}

			// Truncate result and consider only the first byte
			imgConv[i][j] &= 255;
		}
	}

	// Compare expected output with the actual output
	for (int i = 0; i < N; ++i) {
		for (int j = 0; j < N; ++j) {
			if (imgConv[i][j] != imgOut[i][j]) {
				printf("Cell (%d, %d) doesn't match expected result\n", i, j);
				printf("Expected output\t: %d\n", imgConv[i][j]);
				printf("Actual output\t: %d\n", imgOut[i][j]);
				//return 0;
			}
		}
	}

	// Test succeeded
	cout << "Test succeeded ^_^" << endl;

	return 0;
}