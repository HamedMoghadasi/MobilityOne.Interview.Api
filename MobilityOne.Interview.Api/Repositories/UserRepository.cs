using Microsoft.EntityFrameworkCore;
using MobilityOne.Interview.Api.Models;
using MobilityOne.Interview.Api.Repositories.Interfaces;
using System.Collections.Generic;
using System.Linq;

namespace MobilityOne.Interview.Api.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext _context;
        public UserRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public IEnumerable<User> GetAll()
        {
            return _context.Users.AsNoTracking().AsEnumerable();
        }

        public User GetById(int id)
        {
            return _context.Users.SingleOrDefault(item => item.Id == id);
        }

        public void Add(User user)
        {
            _context.Users.Add(user);
        }

        public void Edit(User user)
        {
            _context.Users.Update(user);
        }
        public void Delete(User user)
        {
            _context.Users.Remove(user);
        }

        public void SaveChanges()
        {
            _context.SaveChanges();
        }
    }
}
