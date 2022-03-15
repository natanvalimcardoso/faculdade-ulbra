using System;
using Aula02TestAmbiente.Entities;

namespace Aula02TestAmbiente
{
    class Program
    {
        static void Main(string[] args)
        {
            //use o control + . para pegar as referencias (imports) dos pacotes
            Console.WriteLine("Hello World!");
            Autor oAutor = new Autor(555,"Rafaela");
            Livro objLivro = new Livro(100,"Bancos de dados",oAutor);

            Console.WriteLine(
                    objLivro.GetId() + " - " + 
                    objLivro.GetTitulo() + " - " + 
                    objLivro.GetValor() + " Autor: " + 
                    objLivro.Autor.Nome);

            objLivro.SetValor(199);
            Console.WriteLine("valor do livro:" + objLivro.GetValor());

        }
    }
}
