using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace GroceriesHelp.Models
{
    public class ProductRepo : IProductRepo
    {
        private IDbConnection connection;
        
        
        public ProductRepo(IDbConnection connection)
        {
            this.connection = connection;
        }
       

        public IEnumerable<Product> All => connection.Query<Product>("SELECT * FROM produit");

        public Product GetById(int id) =>
            connection.QueryFirst<Product>("SELECT * FROM Produit WHERE Id = @Id", new { Id =id }); //..Where @Id == ..Id = ..
        

        public void Save(Product product)
        {
            connection.Execute(
                "INSERT INTO Produit (Nom, Image, Id) VALUES (@nom, @image, @Id)", product
                );
        }
    }
}
