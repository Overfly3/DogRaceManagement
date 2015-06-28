using Hunderassenverwaltung.Managers;
using Hunderassenverwaltung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hunderassenverwaltung.Entities
{
    public class Race
    {
        RacesSet myRaceEntity;

        public Race(int id)
        {
            fillEntity(id);
        }

        private void fillEntity(int id)
        {
            myRaceEntity = new RaceManager().GetRaceById(id);
        }

        public int Id
        {
            get
            {
                return myRaceEntity.Id;
            }
        }

        public string Name
        {
            get
            {
                return myRaceEntity.Name;
            }
        }

        public int MinimumAge
        {
            get
            {
                return myRaceEntity.MinimumAge;
            }
        }

        public int MaximumAge
        {
            get
            {
                return myRaceEntity.MaximumAge;
            }
        }

        public int MinimumWeight
        {
            get
            {
                return myRaceEntity.MinimumWeight;
            }
        }

        public int MaximumWeight
        {
            get
            {
                return myRaceEntity.MaximumWeight;
            }
        }

        public int MinimumWithers
        {
            get
            {
                return myRaceEntity.MinimumWithers;
            }
        }

        public int MaximumWithers
        {
            get
            {
                return myRaceEntity.MaximumWithers;
            }
        }

        public string History
        {
            get
            {
                return myRaceEntity.History;
            }
        }

        public string GeneralInformation
        {
            get
            {
                return myRaceEntity.GeneralInformation;
            }
        }

        public string PayAttentionTo
        {
            get
            {
                return myRaceEntity.PayAttentionTo;
            }
        }

        public byte[] Picture
        {
            get
            {
                return myRaceEntity.Picture;
            }
        }

        public FurrsSet Furr
        {
            get
            {
                return myRaceEntity.FurrsSet;
            }
        }

        public GroupsSet Group
        {
            get
            {
                return myRaceEntity.GroupsSet;
            }
        }

        public CharacteristicsSet Characteristics
        {
            get
            {
                return myRaceEntity.CharacteristicsSet;
            }
        }

        public SocialUsagesSet SocialUsages
        {
            get
            {
                return myRaceEntity.SocialUsagesSet;
            }
        }

        public WorkUsagesSet WorkUsages
        {
            get
            {
                return myRaceEntity.WorkUsagesSet;
            }
        }
    }
}