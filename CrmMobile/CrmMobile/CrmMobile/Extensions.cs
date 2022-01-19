using System;
using System.Collections.Generic;
using System.Text;

namespace CrmMobile
{
    internal static class Extensions
    {
        public static string ToBase64(this string input)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(input));
        }
    }
}
