
#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>

using namespace std;


int main(){
    string s;
    cin >> s;
    string t;
    cin >> t;
    int k;
    cin >> k;
    int eq = 0;
    for (int i = 0; i < min(s.length(),t.length()); ++i){
      if (s[i]==t[i])
        eq++;
      else
        break;
    }

    int totalStrSize = s.length()+t.length();

    if((totalStrSize-2*eq)>k){
      cout << "No" << endl;
    }
    else if((totalStrSize-2*eq)%2==k%2){
      cout << "Yes" << endl;
    }
    else if((totalStrSize-k)<0){
      cout << "Yes" << endl;
    }
    else{
      cout << "No" << endl;
    }
    return 0;
}



