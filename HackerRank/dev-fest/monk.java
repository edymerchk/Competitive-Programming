import java.lang.*;
import java.util.*;
class TestClass {
  public static void main(String args[] ) throws Exception {
    Scanner in =new Scanner(System.in);
    int t=in.nextInt();
    while(t-->0){
      int n=in.nextInt();
      int k=in.nextInt();
      int a[][]=new int[n][n];
      for(int i=0;i<n;i++)
        for(int j=0;j<n;j++)
          a[i][j]=in.nextInt();
      int sum=0;
      while(k-->0){
        int acc_rows=0,acc_cols=0,min_rows=1000000,min_cols=1000000,idx_cols=0,idx_rows=0;
        for(int i=0;i<n;i++){
          int j=0;
          while(j<n-1){
            acc_rows=a[i][j++]+a[i][j];
          }
          if(acc_rows<min_rows){
            min_rows=acc_rows;
            idx_rows=i;
          }
        }
        for(int i=0;i<n;i++){
          int m=0;
          while(m<n-1){
            acc_cols=a[m++][i]+a[m][i];
          }
          if(acc_cols<min_cols){
            min_cols=acc_cols;
            idx_cols=i;
          }
        }
        if(min_rows<min_cols){
          int ur=0;
          sum+=min_rows;
          while(ur<n){
            a[idx_rows][ur]++;
            ur++;
          }
        }
        else {
          int uc=0;
          sum+=min_cols;
          while(uc<n){
            a[uc][idx_cols]++;
            uc++;
          }
        }
        idx_rows=idx_cols=min_rows=min_cols=acc_rows=acc_cols=0;
      }
      System.out.println(sum);
    }
  }
}
