using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class callapplyTask : IConsoleTask
    {
        public void f1(int a, int b)
        {
            Console.WriteLine($"f1({a}, {b})");
        }

        public void Execute()
        {
            f1(2, 3);

            /*
             *  f1(2, 3);
                f1.call(null, 2, 3);
            */

            /*
             * f1(...[2, 3]);
               f1.apply(null, [2, 3]);
             */
        }
    }
}
