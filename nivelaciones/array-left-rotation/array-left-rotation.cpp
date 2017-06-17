/*
  Left Rotation
  https://www.hackerrank.com/contests/nivelaciones/challenges/array-left-rotation

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

int main(){
  int n, d, input;
  vector<int> left;

  cin >> n >> d;

  for(int i = 0;i < n;i++){
    if (i >= d){
      cin >> input;
      cout << input << " ";
    } else {
      cin >> input;
      left.push_back(input);
    }
  }

  for(int i = 0; i < left.size(); i++){
     cout << left[i] << " ";
  }

  return 0;
}
