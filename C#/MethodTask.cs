using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class Obj1
    {
        public int inc(int a) => ++a;

        public int sum(int a, int b) => a + b;

        public int max(int a, int b) => a > b ? a : b;

        public int min(int a, int b) => a < b ? a : b;
    }
    class MethodTask : IConsoleTask
    {
        public void Execute()
        {
            var obj = new Obj1();

            Console.WriteLine(obj.inc(5));
            Console.WriteLine(obj.sum(1, 3));
            Console.WriteLine(obj.max(8, 6));
        }
    }
}
