using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Hunderassenverwaltung.Startup))]
namespace Hunderassenverwaltung
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
