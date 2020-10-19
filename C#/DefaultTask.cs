using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class DefaultTask : IConsoleTask
    {
        public void Execute()
        {
            void fnNew(string a, string b = "Hello", int c = 5) 
                => Console.WriteLine(a, b, c); 

            fnNew("1", "2", 3);
            fnNew("1", "2");
            fnNew("1");

            // what?))
            /*
            function fnOld(a, b, c)
            {
                b = b || 'Hello';
                c = c || 5;
                console.dir({ a, b, c });
            }
            */

            // Sorry but csharp doesn't support ES6))))))))))

    }
}
}
