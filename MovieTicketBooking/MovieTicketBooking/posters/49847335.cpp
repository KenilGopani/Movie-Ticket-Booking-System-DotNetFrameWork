#include<bits/stdc++.h>
#define ll long long
#define pb push_back
#define lowbit(x) ((x)&(-(x)))
#define mid ((l+r)>>1)
#define lson rt<<1, l, mid
#define rson rt<<1|1, mid+1, r
#define fors(i, a, b) for(int i = (a); i < (b); ++i)
#define all(vec) vec.begin(),vec.end()
using namespace std;
int main()
{
    int T; cin>>T;
    while(T--){
        int n, m, x; cin>>n>>m>>x;
        #define P pair<int,int>
        vector<P> a;
        fors(i,0,n){
            int t; cin>>t;
            a.pb(P(t,i+1));
        }
        sort(all(a));reverse(all(a)); vector<int> ans;
        fors(i,0,a.size()){
            if(i+1 <= x) ans.pb(a[i].second);
            else if(a[i].first >= m) ans.pb(a[i].second);
        }sort(all(ans));
        cout<<ans.size();
        for(int id:ans) cout<<" "<<id; cout<<endl;
    }
	return 0;
}
