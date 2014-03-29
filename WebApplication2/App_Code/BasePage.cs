using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web.UI;

namespace WebApplication2
{
    public class BasePage: Page
    {
        protected override void InitializeCulture()
        {
            string cultureFromCookies = String.Empty;

            try
            {
                if (Request.Cookies["SPRC"].Value != null)
                    cultureFromCookies = Request.Cookies["SPRC"].Value;
            }
            catch (Exception e)
            { }



            /* 
            * Get the culture from the Sessions 
            */
            string currentCulture;
              
            if (!String.IsNullOrEmpty(cultureFromCookies))
            {
                currentCulture = cultureFromCookies;
            }
            else
            {
                currentCulture =
                    Convert.ToString(Session["userCulture"]);
            }

            /* 
             * Check if there's in a 
             * culture in the Sessions 
             * Otherwise, set the Default Culture 
             */
            if (!string.IsNullOrEmpty(currentCulture))
                currentCulture = currentCulture;
            else
                currentCulture = "fr";

            /* 
             * Apply the Culture to our thread. 
             */
            Thread.CurrentThread.CurrentCulture =
                CultureInfo.CreateSpecificCulture(
                    currentCulture
                );

            Thread.CurrentThread.CurrentUICulture =
                new CultureInfo(currentCulture);

            base.InitializeCulture();  
        }
    }
}
