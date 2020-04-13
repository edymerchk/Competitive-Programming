/*
  2D Array - DS
  https://www.hackerrank.com/contests/nivelaciones/challenges/2d-array

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
  int max = -64;

  vector< vector<int> > arr(6,vector<int>(6));
  for(int i = 0;i < 6;i++){
    for(int j = 0;j < 6;j++){
      cin >> arr[i][j];
    }
  }

  for(int i = 1;i <= 4;i++){
    for(int j = 1;j <= 4;j++){
       int sum = arr[i][j] + arr[i-1][j-1] + arr[i-1][j] + arr[i+1][j-1] + arr[i-1][j+1] + arr[i+1][j] + arr[i+1][j+1];
       if (sum > max){ max = sum; }
    }
  }
  cout << max;
  return 0;
}
