using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;

namespace ProyectoVI
{
    class Casa
    {
        private SerialPort Arduino = new SerialPort("COM9", 9600);

        public void EnviarCaracter(string dato)
        {
            Arduino.Open();
            Arduino.Write(dato);
            Arduino.Close();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;

namespace ProyectoVI

{

    class Program
    {
        static int Opcion = 0;
        static Casa Casa = new Casa();
        static void Main(string[] args)
        {
            Menu();
            
            while(Opcion != 16)
            {
                if (Opcion == 1)
                {
                    Casa.EnviarCaracter("q");
                }
                if (Opcion == 2)
                {
                    Casa.EnviarCaracter("w");
                }
                if (Opcion == 3)
                {
                    Casa.EnviarCaracter("e");
                }
                if (Opcion == 4)
                {
                    Casa.EnviarCaracter("r");
                }
                if (Opcion == 5)
                {
                    Casa.EnviarCaracter("t");
                }
                if (Opcion == 6)
                {
                    Casa.EnviarCaracter("y");
                }
                if (Opcion == 7)
                {
                    Casa.EnviarCaracter("u");
                }
                if (Opcion == 8)
                {
                    Casa.EnviarCaracter("c");
                }
                if (Opcion == 9)
                    Casa.EnviarCaracter("b");
                {
                }
                if (Opcion == 10)
                {
                    Casa.EnviarCaracter("i");
                }
                if (Opcion == 11)
                {
                    Casa.EnviarCaracter("o");
                }
                if (Opcion == 12)
                {
                    Casa.EnviarCaracter("p");
                }
                if (Opcion == 13)
                {
                    Casa.EnviarCaracter("a");
                }
                if (Opcion == 14)
                {
                    Casa.EnviarCaracter("s");
                }
                if (Opcion == 15)
                {
                    Casa.EnviarCaracter("");
                }
                if (Opcion == 16)
                {
                    Console.WriteLine("Gracias por usar nuestra app.");
                }
            }
        }
        static void Menu()
        {
            bool bucle = false;

            Console.WriteLine("Bienvenido al controlador de la casa domotica");
            Console.WriteLine("______________________________________________");
            Console.WriteLine("1. Encender luz de la sala");
            Console.WriteLine("2. Apagar luz de la sala");
            Console.WriteLine("3. Encender televisión");
            Console.WriteLine("4. Apagar televisión");
            Console.WriteLine("5. Abrir garaje");
            Console.WriteLine("6. Entreabrir garaje");
            Console.WriteLine("7. Cerrar garaje");
            Console.WriteLine("8. Abrir cortina 1");
            Console.WriteLine("9. Cerrar cortina 1");
            Console.WriteLine("10. Abortina 2");
            Console.WriteLine("11. Cerrar cortina 2");
            Console.WriteLine("12. Apagar luz del estudio");
            Console.WriteLine("13. Intensidad baja");
            Console.WriteLine("14. Intensidad media");
            Console.WriteLine("15 Intensidad alta");
            Console.WriteLine("16. Salir");
            Console.Write("\n Usted eligio la opción: ");
            while(bucle == false)
            { 
            try
            {
                Opcion = int.Parse(Console.ReadLine());
                    bucle = true;
            }
            catch
            {
                    Console.WriteLine("Caracter o número invalido");
                    Console.Write("Por favor, intente de nuevo:");
                    Opcion = int.Parse(Console.ReadLine());
                    Console.Clear();
            }
            }    
            
            
            
            
            Console.Clear();
            

        }
    }
}
