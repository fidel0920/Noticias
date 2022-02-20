using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

namespace Inicio
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            consumo("house");
        }

        public void consumo(string _texto)
        {
            var cliente = new RestClient();
            var peticion = new RestRequest("https://newsapi.org/v2/everything?q=" + _texto + "&apiKey=95556134d6364d2c9cf0de95550e77cf", Method.Get);
            var respuesta = cliente.ExecuteAsync<Noticias>(peticion);

            /* Elementos a mostrar
               Autor
               Titulo
               Descripcion
               Imagen
               Fecha
               Contenido
               */
            lblAutor.Text = respuesta.Result.Data.articles[0].author;
            lblTitulo.Text = respuesta.Result.Data.articles[0].title;
            lblDescripcion.Text = respuesta.Result.Data.articles[0].description;
            imgConsumo.ImageUrl = respuesta.Result.Data.articles[0].urlToImage;
            lblFecha.Text = respuesta.Result.Data.articles[0].publishedAt.ToString();
            lblContenido.Text = respuesta.Result.Data.articles[0].content;
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            consumo(txtBuscar.Text);
        }
    }
}