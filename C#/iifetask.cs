using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class iifetask : IConsoleTask
    {
        public void f1()
        {
            Console.WriteLine("f1");
        }

        public void Execute()
        {
            Action a = delegate { Console.WriteLine("anonymous"); };

            a = () => Console.WriteLine("Lamda");

            {
                Console.WriteLine("block");
            }
        }
    }
}
