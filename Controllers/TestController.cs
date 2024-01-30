using Microsoft.AspNetCore.Mvc;

namespace aspnet_cicd.Controllers;

[ApiController]
[Route("/test")]
public class TestController : ControllerBase
{
    
    [HttpGet]
    public string Get()
    {
       return "temel buddy";
    }
}
