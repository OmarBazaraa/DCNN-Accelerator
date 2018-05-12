#include <bits/stdc++.h>
using namespace std;

int main() {
	freopen("output.txt", "w",stdout);
	freopen("input.txt", "r", stdin);
	string archName, filePath, fileName;

	cout << "load_library tsmc035_typ \n set_working_dir \"/home/ayman/Desktop/repo/DCNN-Accelerator/synthesis/generated_files\"\n";

	cout << "load_library tsmc035_typ\n";
	cout << "read -technology \"tsmc035_typ\"  { /home/ayman/Desktop/repo/DCNN-Accelerator/utilities/common.vhd }\n";
	// cout << "pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize \n";
	// cout << "set novendor_constraint_file FALSE\n";
	// cout << "auto_write common.vhd\n";
	
	while(cin>>filePath>>fileName>>archName) {
		if (filePath[0] == '#') continue;
		cout << "read -technology \"tsmc035_typ\"  { " + filePath + "/" + fileName + ".vhd }\n";
		
		cout << "pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize \n";
		cout << "pre_optimize -extract \n";
		cout << "elaborate " + fileName + " -architecture " + archName + " \n";
		cout << "pre_optimize .work." + fileName + "." + archName + " -common_logic -unused_logic -boundary -xor_comparator_optimize \n";
		cout << "pre_optimize .work." + fileName + "." + archName + " -extract \n";

		if (fileName == "main") {
			cout << "optimize .work." + fileName + "." + archName + " -target tsmc035_typ -macro -area -effort standard -hierarchy preserve \n";
			cout << "optimize_timing .work." + fileName + "." + archName + " \n";
			cout << "report_area /home/ayman/Desktop/repo/DCNN-Accelerator/synthesis/generated_files/report_area.txt -cell_usage -all_leafs \n";
		}

		cout << "optimize .work." + fileName + "." + archName + " -target tsmc035_typ -macro -delay -effort standard -hierarchy " + (fileName == "main" ? "preserve" : "auto") + " \n";
		cout << "optimize_timing .work." + fileName + "." + archName + " \n";


		if (fileName == "main") {
			cout << "report_delay /home/ayman/Desktop/repo/DCNN-Accelerator/synthesis/generated_files/report_delay.txt -num_paths 1 -critical_paths -clock_frequency\n";
		}

		cout << "set novendor_constraint_file FALSE\n";
		cout << "auto_write -format Verilog " + fileName + ".v\n";
	}
}
