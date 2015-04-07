using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint.Client;

namespace GestionListas
{
    public class CSOM
    {
        public static void AddItem(String nombre, String apellido, int edad, int nota)
        {
            using (var context = new ClientContext("https://letias.sharepoint.com"))
            {
                List alumnosList = context.Web.Lists.GetByTitle("Alumnos");
                context.Load(alumnosList);

                var creacion = new ListItemCreationInformation();
                var item = alumnosList.AddItem(creacion);

                item["Title"] = nombre;
                item["Apellido"] = apellido;
                item["Edad"] = edad;
                item["Nota"] = nota;

                item.Update();

                context.ExecuteQuery();
            }
        }
    }
}
