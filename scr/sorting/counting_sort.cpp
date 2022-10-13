#include<iostream>
using namespace std;

void countingsort(int arr[], int n, int k); // n:배열의 원소 개수, k: 배열 원소의 범위
int get_max(int arr[],int n);
int main() {
	int size;
	cout << "배열 크기:";
	cin >> size;
	int* arr = new int[size];
	for (int i = 0; i < size; i++) {
		cin >> arr[i];
	}
	for (int i = 0; i < size; i++) {
		cout << arr[i] << ' ';
	}
	cout << endl;
	///////// 배열 생성 완료 ///////////
	int max = get_max(arr, size);
	 countingsort(arr, size,max);
	for (int i = 0; i < size; i++) {
		cout << arr[i] << ' ';
	}
	cout << endl;
	
	delete[] arr;
}
void countingsort(int arr[], int n, int k) { 
	int *count = new int[k+1]; 
	for (int i=0; i < k+1; i++) {
		count[i] = 0;
	}
	for (int i = 0; i < n; i++) { 
		count[arr[i]] ++;
	}
	for (int i = 0, j = 0; i < k+1; i++) {
		while (count[i] > 0) { //count[0]==1, count[1]==2, arr=={0,1,1}
			arr[j] = i;
			j++;
			count[i]--;
		}
	}

	delete[] count;

}

int get_max(int arr[],int n) {
	int max = arr[0];
	for (int i = 1; i < n; i++) {
		if (arr[i] > max)
			max = arr[i];
	}
	return max;
}
