using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class IntrospectionTask : IConsoleTask
    {
        public void Execute()
        {
            int Inc(int a) => ++a;
            int Sum(int a, int b) => a + b;

            int Max(int a, int b) => a > b ? a : b;

            Console.WriteLine("Names: ");
            // there need to use reflactions, but it's ridiculous.
            Console.WriteLine();

            // an again.
            Console.WriteLine("Arguments");
            Console.WriteLine();

            // I can't take anonymous function name in the Csharp.
            // csharp is hard type language man.
            Func<string, string> anonymous = x => x;
            Console.WriteLine($"Anonymous function");

            Console.WriteLine("toString");
            
            Console.WriteLine();
        }
    }
}
