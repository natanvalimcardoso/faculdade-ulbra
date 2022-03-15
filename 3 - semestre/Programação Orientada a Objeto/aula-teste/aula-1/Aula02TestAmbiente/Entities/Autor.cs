namespace Aula02TestAmbiente.Entities
{
    public class Autor
    {
        public Autor(int id, string nome)
        {
            this.Id = id;
            this.Nome = nome;

        }
        public int Id { get; private set; }
        public string Nome { get; private set; }
        public string Endereco { get; set; }



    }
}