using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlServerCe;

namespace Northwind.DataAccess
{
    public static class NorthwindData
    {


        public static List<Products> GetAllProduct()
        {
            using (NorthwindEntities context = new NorthwindEntities())
            {
                return context.Products.ToList();
            }

        }



    }

}
