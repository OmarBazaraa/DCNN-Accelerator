
#include <bits/stdc++.h>
#include<string>

using namespace std;

/*virtual signal -install /accelerator { (context /accelerator )&{FilterDin_0__0__0 , FilterDin_0__0__1 , FilterDin_0__0__2 , FilterDin_0__0__3 , FilterDin_0__0__4 , FilterDin_0__0__5 , FilterDin_0__0__6 , FilterDin_0__0__7 }} FilterDin_0__0_1w1w1w
# /accelerator/FilterDin_0__0_1w1w1w
add wave -position insertpoint  \
sim:/accelerator/FilterDin_0__0_1w1w1w*/

string convertToBinFlipped(int x) {
    string ret;
    while(x) {
        ret += ((x%2) + '0');
        x>>=1;
    }
    while(ret.size() < 8)
        ret += '0';
    return ret;
}

string hexa = "0123456789ABCDEF";
string convertToHex(int x) {
    string s; s += hexa[x/16];
    return s + hexa[x%16];
}

int main() {
    freopen("output_signal.txt", "w", stdout);
    freopen("input_signal.txt", "r", stdin);
    string virtualSignalName, componentName;

    int dimensionsCnt;
    int n, m;

    while (cin >> virtualSignalName >> componentName >> dimensionsCnt) {
        n = m = 1;
        cin>>n;
        if (dimensionsCnt ==2)
            cin>>m;

	    cout << "virtual signal -install /" + componentName + " { (context /" + componentName + " )&{";
        if (dimensionsCnt == 1) {
            for (int i = 0; i < n; i++) {
                for (int k = 0; k < 8; k++)
                    cout << virtualSignalName + "_" << i << "__" << k << " ," [((i == n - 1 && k == 7) ? 0 : 1)];
            }
        } else {
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < m; j++) {
                    for (int k = 0; k < 8; k++)
                        cout << virtualSignalName + "_" << i << "__" << j << "__" << k << " ," [((i == n - 1 && (j == m - 1) && (k == 7)) ? 0 : 1)];
                }
            }
        }
      
        cout << "}} " + virtualSignalName << endl;
        cout << "add wave -position insertpoint  \\\n";
        cout << "sim:/accelerator/" + virtualSignalName + "\n";
        cout << "force -freeze sim:/" + componentName + "/" + virtualSignalName + " " << n * m * 8  <<"'b";
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                int x;
                cin >> x;
                cout<< convertToBinFlipped(x);
            }
        }
        cout << " 0\n";
    }
}
