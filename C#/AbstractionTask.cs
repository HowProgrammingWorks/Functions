using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class AbstractionTask : IConsoleTask
    {
        public void Execute()
        {
            Func<double, double, double> power = Math.Pow;

            double Square(double x) => power(x, 2);
            double Cube(double x) => power(x, 3);

            Console.WriteLine(power(10, 2));
            Console.WriteLine(Square(10));

            Console.WriteLine(power(10, 3));
            Console.WriteLine(Cube(10));
        }
    }
}
