using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Timesheet.Models
{
    public static class Helper
    {
        public static DateTime ToDateTime(this string str)
        {
            DateTime dt = new DateTime(1900, 1, 1);
            DateTime.TryParse(str, out dt);
            return dt;
        }

    }
}