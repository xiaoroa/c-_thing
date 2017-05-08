#include <iostream>
#include <vector>
#include <math.h>
#include <fstream>
#define PI 3.14159265
using namespace std;

int main()
{
    int n = 100; // precision
    int t = 1000; // iteration times
    std::vector<double> u (n,0.0); //declare vector
    std::vector<double> f (n,0.0); //second order derivative

    double h = 2*PI/(n-1);
    for(int i = 0; i < n; i++) //calculate sin(x)
    {
        f[i] = sin(h*i);
    }

    for(int i = 0; i<n; i++)
    {
        f[i] = - f[i]; // the second derivative = - sin(x)
    }
    cout<<endl;

    for(int i = 0 ; i < t; i++) // do iteration n times
    {

        for(int k = 1; k < n-1; k++) // drop the boundary points u[0] and u[h-1]
            u[k] = (u[k+1] + u[k-1] - h*h*f[k]) / 2;
    }

    ofstream myfile;
    myfile.open("n100t1000.txt");
    for(int i = 0; i < n; i++)
    {
        cout<<u[i]<<" ";
        myfile << u[i]<<",";
    }

    return 0;
}
