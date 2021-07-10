using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(phimvietnamxua.Startup))]
namespace phimvietnamxua
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
