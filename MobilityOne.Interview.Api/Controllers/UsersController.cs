using Microsoft.AspNetCore.Mvc;
using MobilityOne.Interview.Api.Models;
using MobilityOne.Interview.Api.Repositories.Interfaces;
using System.Threading.Tasks;

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
        public async Task<IActionResult> Get()
        {
            return Ok(_userRepository.GetAll());
        }

        // GET api/Users/5
        [HttpGet("{id}")]
        public async Task<IActionResult> Get(int id)
        {
            return Ok(_userRepository.GetById(id));
        }

        // POST api/Users
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] User user)
        {
            _userRepository.Add(user);
            _userRepository.SaveChanges();
            return Ok("User added successfully!");
        }

        // PUT api/Users/5
        [HttpPut]
        public async Task<IActionResult> Put([FromBody] User user)
        {
            _userRepository.Edit(user);
            _userRepository.SaveChanges();
            return Ok("User edited successfully!");
        }

        // DELETE api/Users/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var user = _userRepository.GetById(id);
            if (user != null)
            {
                _userRepository.Delete(user);
                _userRepository.SaveChanges();
                return Ok("User deleteed successfully!");
            }
            else {
                return NotFound("User not found!");
            }
        }
    }
}
