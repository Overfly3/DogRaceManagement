using Hunderassenverwaltung.Entities;
using Hunderassenverwaltung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hunderassenverwaltung.Managers
{
    public class RaceManager
    {
        public RacesSet GetRaceById(int id)
        {
            RacesSet race;
            using (var context = new HunderassenverwaltungEntities())
            {
                race = context.RacesSet
                    .Where(b => b.Id == id)
                    .First();
            }
            return race;
        }

        public List<Race> GetAllRaces()
        {
            List<Race> races = new List<Race>();
            foreach (int raceId in getAllRaceDataIds())
            {
                races.Add(new Race(raceId));
            }
            return races;
        }

        private List<int> getAllRaceDataIds()
        {
            List<int> raceDataIds = new List<int>();
            using (var context = new HunderassenverwaltungEntities())
            {
                foreach (RacesSet race in context.RacesSet)
                {
                    raceDataIds.Add(race.Id);
                }
            }
            return raceDataIds;
        }

        public byte[] GetBytes(string str)
        {
            byte[] bytes = new byte[str.Length * sizeof(char)];
            System.Buffer.BlockCopy(str.ToCharArray(), 0, bytes, 0, bytes.Length);
            return bytes;
        }

        public void CreateRace(RacesSet race)
        {
            using (var context = new HunderassenverwaltungEntities())
            {
                context.RacesSet.Add(race);
                context.SaveChanges();
            }
        }

        public void UpdateChanges(RacesSet race)
        {
            using (var context = new HunderassenverwaltungEntities())
            {
                //3. Mark entity as modified
                context.Entry(race).State = System.Data.Entity.EntityState.Modified;     
        
                //4. call SaveChanges
                context.SaveChanges();
            }
        }

        public void DeleteRace(int id)
        {
            using (var context = new HunderassenverwaltungEntities())
            {
                RacesSet race = new RacesSet { Id = id };
                context.RacesSet.Attach(race);
                context.RacesSet.Remove(race);
                context.SaveChanges();
            }
        }
    }
}