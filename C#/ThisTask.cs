using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class City
    {
        public string name = "Kiev";
        public int year = 482;

        public string f1 => this.name;
        public string f2() { return this.name; }

    }

    public class ThisTask : IConsoleTask
    {
        public void Execute()
        {
            var city = new City();
            Console.WriteLine(city.f1);
            Console.WriteLine(city.f2);
        }
    }
}
