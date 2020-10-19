using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class ContextTask : IConsoleTask
    {


        public void Execute()
        {
            var cities = new[] { "Athens", "Roma", "London", "Beijing", "Kiev", "Riga" };

            int Func(string s) => s.Length;

            void F1()
            {
                var otherCities = new[] {"Athens", "Roma"};
                string OtherFunc(string s) => s.ToUpper();
                Console.WriteLine(otherCities.Aggregate((x, y) => $"{x} {y}"));
                Console.WriteLine(otherCities.Select(OtherFunc).Aggregate((x, y) => $"{x} {y}"));

                string ToLowerFunc(string s) => s.ToLower();
                Console.WriteLine(otherCities.Aggregate((x, y) => $"{x} {y}"));
                Console.WriteLine(otherCities.Select(ToLowerFunc).Aggregate((x, y) => $"{x} {y}"));

                var someOtherCities = new[] {"London", "Beijing", "Kiev"};
                Console.WriteLine(someOtherCities.Aggregate((x, y) => $"{x} {y}"));
                Console.WriteLine(someOtherCities.Select(ToLowerFunc).Aggregate((x, y) => $"{x} {y}"));
            }


            F1();

            Console.WriteLine(cities.Aggregate((x, y) => $"{x} {y}"));
            Console.WriteLine(cities.Select(x => Func(x).ToString()).Aggregate((x, y) => $"{x} {y}"));

        }
    }
}
