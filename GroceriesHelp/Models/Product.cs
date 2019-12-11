using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GroceriesHelp.Models
{
    public class Product
    {
        private int id;
        private string nom;
        private string image;
        private double price;
        private string description;
        public Product(int id, string nom, string url){
            this.id = id;
            this.nom = nom;
            this.image = url;
        }
        public Product(){
           }
        public int? Id { get => id; }
        public string Nom {
            get => nom;
            set => nom = value;
        }
        public string Image
        {
            get => image;
            set => image = value;
        }


    }
}
