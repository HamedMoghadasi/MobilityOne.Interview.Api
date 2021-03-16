using Microsoft.AspNetCore.Mvc;
using MobilityOne.Interview.Api.Common;
using MobilityOne.Interview.Api.Models;
using MobilityOne.Interview.Api.Repositories.Interfaces;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MobilityOne.Interview.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IUserRepository _userRepository;
        public UsersController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        // GET: api/Users
        [HttpGet]
        public ActionResult<IEnumerable<User>> Get()
        {
            var users = _userRepository.GetAll();
            return Ok(new Response {Message = "All users fetched successfully!", Data = users });
        }

        // GET api/Users/5
        [HttpGet("{id}")]
        public ActionResult<User> Get(int id)
        {
            var user = _userRepository.GetById(id);
            if (user != null)
            {
                return Ok(new Response{Message="All users fetched successfully!", Data= user});
            }
            else
            {
                return BadRequest(new Response {Status=ResponseStatus.Error,Message="User not founded!"});
            }
        }

        // POST api/Users
        [HttpPost]
        public ActionResult Add([FromBody] User user)
        {
            _userRepository.Add(user);
            _userRepository.SaveChanges();
            return Ok(new Response { Message ="User added successfully!",Data=user});
        }

        // PUT api/Users/5
        [HttpPut]
        public ActionResult Update([FromBody] User user)
        {
            _userRepository.Edit(user);
            _userRepository.SaveChanges();
            return Ok(new Response {Message= "User edited successfully!" });
        }

        // DELETE api/Users/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var user = _userRepository.GetById(id);
            if (user != null)
            {
                _userRepository.Delete(user);
                _userRepository.SaveChanges();
                return Ok(new Response { Message = "User deleteed successfully!" });
            }
            else
            {
                return BadRequest(new Response { Status = ResponseStatus.Error, Message = "User not founded!" });
            }
        }
    }
}
