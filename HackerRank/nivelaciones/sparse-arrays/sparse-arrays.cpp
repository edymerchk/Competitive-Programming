/*
  Sparse Arrays
  https://www.hackerrank.com/contests/nivelaciones/challenges/sparse-arrays

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
  int n, q;
  string word;
  msi store;

  cin >> n;

  for (int i = 0; i < n; ++i){
    cin >> word;
    if (store.count(word)){
      store[word] = store[word] + 1 ;
    } else {
      store[word] = 1;
    }
  }

  cin >> q;

  for (int i = 0; i < q; ++i){
    cin >> word;
    cout << store[word] << endl;
  }

  return 0;
}
