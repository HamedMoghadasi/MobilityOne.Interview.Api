using MobilityOne.Interview.Api.Models;
using System.Collections.Generic;

namespace MobilityOne.Interview.Api.Repositories.Interfaces
{
    public interface IUserRepository
    {
        IEnumerable<User> GetAll();
        User GetById(int id);
        void Add(User user);
        void Edit(User user);
        void Delete(User user);

        void SaveChanges();
    }
}
