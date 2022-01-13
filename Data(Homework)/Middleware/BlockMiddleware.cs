using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Homework_.Middleware
{
    public class BlockMiddleware
    {
        private readonly RequestDelegate next;

        public BlockMiddleware(RequestDelegate next)
        {
            this.next = next;
        }

        public async Task Invoke (HttpContext context)
        {
            if (context.Request.Path.StartsWithSegments("/api/Vehicles/1")) //1 id'li vehicle'a gittiğinde 
            {
                context.Response.StatusCode = 403;
                await context.Response.WriteAsync("403 -  3. odev kosulu saglandi...");
                
                return;
        }

        await next.Invoke(context);
        }
    }
}
