#include <iostream>
#include <stdio.h>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, char const *argv[])
{
	ifstream infile ("databin.txt");
	string line;	int i = 1;	
	if (infile.is_open()){
		while(infile.good()){
			getline(infile, line);
			cout << "signal INPUT_"<< i <<" : std_logic_vector(31 downto 0) := \"" << line << "\";" <<  endl;
			i++;
		}
	}

	infile.close();


/*			
	int j = 615;
	for (int i = 1; i < 655; ++i)
	{
		//printf("when %d => dina_seed <= INPUT_%d & INPUT_%d;\n", i,j,j+1);
		printf("INPUT_%d 	=> INPUT_%d,\n",i,i);
		j = j + 2;
	}
*/	return 0;
}

