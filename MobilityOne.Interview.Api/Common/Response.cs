using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MobilityOne.Interview.Api.Common
{
    public class Response
    {
        public string Status { get; set; } = ResponseStatus.Success;
        public object? Data { get; set; }
        public string Message { get; set; } = string.Empty;
    }

    public static class ResponseStatus 
    {
        public const string Success = "success";
        public const string Error = "error";
    }
}
