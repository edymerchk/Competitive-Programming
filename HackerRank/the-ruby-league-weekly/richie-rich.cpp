/*
  [Richie Rich]
  [https://www.hackerrank.com/challenges/richie-rich/]

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

string richieRich(string s, int n, int k){
  string left = s.substr(0, s.length()/2);
  string right = s.substr(s.length()/2, s.length());

  reverse(right.begin(), right.end());

  int diff = 0;
  for (int i = 0; i < left.length(); ++i){
    if (left[i] != right[i]) diff ++;
  }

  if (diff > k) return "-1";

  for (int i = 0; i < left.length(); ++i){
    if (left[i] == right[i] && left[i] != '9'){
      if (k-2 >= diff && k-2 >= 0){
        k -= 2;
        left[i]= '9';
        right[i]= '9';
      }
    } else if (left[i] != right[i]){
      if (left[i] == '9'){
        if (k-1 >= diff-1){
          right[i] = '9';
          k--;
          diff--;
        }
      } else if (right[i] == '9'){
        if (k-1 >= diff-1){
          left[i] = '9';
          k--;
          diff--;
        }
      } else if (left[i] != '9' && right[i] != '9'){
        if (k-2 >= diff -1 && k-2 >= 0){
          k -= 2;
          diff--;
          left[i]= '9';
          right[i]= '9';
        } else if (k-1 >= diff-1){
          if (left[i] > right[i])
            right[i] = left[i];
          else
            left[i] = right[i];
          k -= 1;
          diff--;
        }
      }
    }
  }

  bool odd = s.length()% 2 != 0;
  reverse(right.begin(), right.end());

  if (odd && k > 0){
    return left + "9" + right.substr(1, right.length());
  }

  return left + right;
}

int main() {
    int n, k;
    string s;
    cin >> n;
    cin >> k;
    cin >> s;
    string result = richieRich(s, n, k);
    cout << result << endl;
    return 0;
}

