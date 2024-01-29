using ProjektAplikacjaBudowlanka.DBModels;

namespace ProjektAplikacjaBudowlanka.Models.User
{
    public class Uslugodawca
    {
        public string idUslugodawca { get; set; }
        public string Nazwa { get; set; }
        public string NIP { get; set; }

        public virtual ICollection<Oferta> NavigationOferty { get; set; }
        public virtual ICollection<Zdjecie> NavigationZdjecia { get; set; }
    }
}
