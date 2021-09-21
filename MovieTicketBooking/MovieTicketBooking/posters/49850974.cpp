
#include<bits/stdc++.h>
#define fast_io ios_base::sync_with_stdio(false);cin.tie(NULL)
using namespace std;
#include <cmath>
#define ll long long int
#include <algorithm>

void init_code() {
	fast_io;
#ifndef ONLINE_JUDGE
	freopen("input.in", "r", stdin);
	freopen("output.in", "w", stdout);
#endif
}
struct code
{
	int x;
	int y;
};
bool sortStr(code a, code b)
{
	return a.y > b.y;
}
int main() {
	init_code();
	ll q;
	cin >> q;
	while (q--)
	{
		int n, m, x, c = 0;
		cin >> n >> m >> x;
		code ve[n];
		for (int i = 0; i < n; ++i)
		{
			int a;
			cin >> a;
			ve[i].x = i + 1;
			ve[i].y = a;
		}
		sort(ve, ve + n, sortStr);
		std::vector<int> u;
		for (int i = 0; i < n; ++i)
		{
			if (ve[i].y >= m)
			{
				u.push_back(ve[i].x);
				c++;
			}
			else if (c < x)
			{

				u.push_back(ve[i].x);
				c++;
			}
			else
			{
				break;
			}

		}
		cout << c << ' ';
		sort(u.begin(), u.end());
		for (int i = 0; i < u.size(); ++i)
		{
			cout << u[i] << ' ';
		}
		cout << '\n';
	}
}