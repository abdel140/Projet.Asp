using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GroceriesHelp.Models
{
    public interface IProductRepo
    {
        /// <summary>
        /// Obtient toutes les produits de la table Produit
        /// </summary>
        IEnumerable<Product> All { get; }
        Product GetById(int id);

        void Save(Product product);
    }
}
