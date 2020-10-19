using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            IConsoleTask consoleTask;

            //consoleTask = new ContextTask();
            //consoleTask = new AbstractionTask();
            //consoleTask = new DefaultTask();
            //consoleTask = new IntrospectionTask();
            //consoleTask = new SpreadTask();
            consoleTask = new MethodTask();
            //consoleTask = new ThisTask();
            //consoleTask = new iifetask();
            //consoleTask = new callapplyTask();

            consoleTask.Execute();
        }
    }
}
