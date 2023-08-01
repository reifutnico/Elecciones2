using Microsoft.AspNetCore.Mvc;

namespace TpElecciones.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        ViewBag.ListaPartidos = BD.ListarPartidos();
        return View();
    }   

    public IActionResult VerDetallePartido(int idPartido){
        ViewBag.Partido = BD.VerInfoPartido(idPartido);
        ViewBag.ListaCandidatos = BD.ListarCandidatos(idPartido);
        return View();
    }

    public IActionResult VerDetalleCandidato(int idCandidato){
        ViewBag.Candidato = BD.VerInfoCandidato(idCandidato);
        return View();
    }

    public IActionResult AgregarCandidato(int idPartido){
        ViewBag.IdPartido = idPartido;
        return View();
    }


    [HttpPost] public IActionResult GuardarCandidato(Candidato can){
        BD.AgregarCandidato(can);
        return RedirectToAction("VerDetallePartido", new {idPartido=can.IdPartido});
    }

   public IActionResult EliminarCandidato(int idCandidato, int idPartido){
        BD.EliminarCandidato(idCandidato);
        return View("VerDetallePartido");
    }

    
    public IActionResult Elecciones(){
        return View();
    }

    public IActionResult Creditos(){
        return View();
    }

}
