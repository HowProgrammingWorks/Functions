using System;
using System.Linq;
using System.Web.Script.Serialization;

namespace ConsoleApp1
{
    class SpreadTask : IConsoleTask
    {
        public void Execute()
        {
            void f1(params int[] args) => System.Console.WriteLine(
                args.Select(x => x.ToString()).Aggregate((x, y) => $"{x} {y}"));

            f1(1, 2, 3);

            void f2(params object[] args)
            {
                args.Select(obj =>
                {
                    Console.WriteLine("1");
                    if (obj.GetType() == typeof(object))
                        Console.WriteLine(new JavaScriptSerializer().Serialize(obj));
                    else
                        Console.WriteLine($"{obj.GetType()}: {obj}");

                    return String.Empty;
                }).Count();
            }

            f2(1, "Marcus", new { field = "value"} );

        }
    }
}
