using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjektAplikacjaBudowlanka.DBModels;
using ProjektAplikacjaBudowlanka.Models;
using System.Diagnostics;

namespace ProjektAplikacjaBudowlanka.Controllers
{
    public class HomeController : Controller
    {
        private readonly BudowlankaDBContext _budowlankaContext;

        public HomeController(BudowlankaDBContext budowlankaContext)
        {
            _budowlankaContext = budowlankaContext;
        }

        public async Task<IActionResult> Index()
        {
            var pracownicy = await _budowlankaContext.Pracownik.ToListAsync();
            Console.WriteLine(pracownicy.Count);
            Pracownik p = new Pracownik();
            p.idPracownik = 1;
            p.Imie = "Jerzy";
            p.Nazwisko = "Baron";
            await _budowlankaContext.Pracownik.AddAsync(p);
            await _budowlankaContext.SaveChangesAsync();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}