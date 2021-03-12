using MobilityOne.Interview.Api.Models;
using MobilityOne.Interview.Api.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobilityOne.Interview.Api.Test.FakeRepositories
{
    class UserRepositoryFake : IUserRepository
    {
        private readonly List<User> _users;
        public UserRepositoryFake()
        {
            _users = new List<User>
            {
                new User { Id =1, Name="Hamed",PhoneNumber="+989197558632",EmailAddress="Hamed@gmail.com",Password="123456",Suspended=false,CreateDate=DateTime.Now,LastLogin=DateTime.Now},
                new User { Id =2, Name="Shahrzad",PhoneNumber="+989197558633",EmailAddress="Shahrzad@gmail.com",Password="123456",Suspended=false,CreateDate=DateTime.Now,LastLogin=DateTime.Now},
                new User { Id =3, Name="Nader",PhoneNumber="+989197558634",EmailAddress="Nader@gmail.com",Password="123456",Suspended=false,CreateDate=DateTime.Now,LastLogin=DateTime.Now},

            };
        }

        public IEnumerable<User> GetAll()
        {
            return _users;
        }

        public User GetById(int id)
        {
            return _users.FirstOrDefault(a => a.Id == id);
            
        }

        public void Add(User user)
        {
            if (user.Id == null) { 
                var lastId = _users.OrderBy(item => item.Id).Last().Id;
                user.Id = lastId + 1;
            }
            _users.Add(user);
        }

        public void Delete(User user)
        {
            var existing = _users.FirstOrDefault(a => a.Id == user.Id);
            _users.Remove(existing);
        }

        public void Edit(User user)
        {
            Delete(user);
            Add(user);
        }

        public void SaveChanges()
        {
            Console.WriteLine("Saved Changes !");
        }
    }
}
