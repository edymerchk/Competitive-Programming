/*
  [Lily's Homework]
  [https://www.hackerrank.com/challenges/lilys-homework]

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
typedef map <int,int> mii;
typedef map <string,string> mss;
#define INF 1000000000


int findSwaps(vi vec, int n){
  int swaps = 0;
  vi sorted;
  mii mymap;
  for (int i = 0; i < n; ++i)
    mymap.insert(vec[i], i);

  sorted = vec;
  sort(sorted.begin(), vec.end());

  for (int i = 0; i < n; ++i){
    if(vec[i]!= sorted[i]){
      map[vec[i]] = map[sort[i]];
      vec[map[sort[i]]] = vec[i];
      vec[i] = sort[i];
    }
  }
  return -1;
}

int main() {
  int n;
  cin >> n;
  vi vec;
  for (int i = 0; i < n; ++i){
    int num;
    cin >> num;
    vec.insert(num);
  }


  int res1 = findSwaps(vec, n);
  sort(vec.begin(), vec.end());
  int res2 = findSwaps(vec, n);

  cout << min(res1, res2) << endl;
  return 0;
}

