/*
  [Caesar Cipher]
  [https://www.hackerrank.com/challenges/caesar-cipher-1/problem]

  Luis Edymerchk Laverde
*/
#include <algorithm>
#include <iostream>
#include <iterator>
#include <numeric>
#include <sstream>
#include <fstream>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <cstring>
#include <string>
#include <cstdio>
#include <vector>
#include <bitset>
#include <cmath>
#include <queue>
#include <tuple>
#include <deque>
#include <stack>
#include <list>
#include <map>
#include <set>
using namespace std;
typedef long long ll;
typedef pair<int,int> ii;
typedef pair<string,int> si;
typedef pair<int,ii> iii;
typedef vector <si> vsi;
typedef vector <ii> vii;
typedef vector <int> vi;
typedef vector <char> vc;
typedef vector <string> vs;
typedef map <string,vs> msvs;
typedef map <string,int> msi;
typedef map <string,string> mss;
#define INF 1000000000

// z => 122
// a => 97
// Z => 90
// A => 65

int main() {
    int n, k;
    string str;
    cin >> n;
    cin >> str;
    cin >> k;
    int len = str.length();
    for (int i = 0; i < len; ++i){
      if (65 <= str[i] && str[i] <= 90)
        str[i] = char(65 + ((str[i] - 65) + k) % 26);
      else if (97 <= str[i] && str[i] <= 122)
        str[i] = char(97 + ((str[i] - 97) + k) % 26);
    }
    cout << str << endl;
    return 0;
}
