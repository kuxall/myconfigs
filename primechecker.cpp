#include <iostream>
#define ll long long int
using namespace std;

int divisor;
bool isPrime(ll num) {
	bool isprime = true;
	for ( int i = 2; i * i <= num; i ++ ) {
		if ( num %  i == 0 ) {
			divisor = i;
			isprime = false;
			break;
		}
	}
	return isprime;
}
int main() {
	ll num;
	cin >> num;
	if ( num < 2 ) {
		cout << "Sorry, I cant decide." << endl;
	} else {
		if ( isPrime(num) ) {
			cout << "Prime." << endl;
		} else {
			cout << "Not Prime, divisible by " << divisor << "." << endl;
		}
	}
	return 0;
}
