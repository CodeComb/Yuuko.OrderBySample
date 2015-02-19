using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CodeComb.Yuuko;
using CodeComb.Yuuko.Schema;

namespace OrderBySample.Models
{
    public class SamplePorts : PortsContext
    {
        public SamplePorts()
        {
            RatingSource = new List<Rating>();
            RatingSource.Add(new Rating { Tech = ".Net", Score = 100 });
            RatingSource.Add(new Rating { Tech = "Java", Score = 0 });
            RatingSource.Add(new Rating { Tech = "NodeJS", Score = 80 });
            RatingSource.Add(new Rating { Tech = "Python", Score = 70 });
        }

        // Data Source
        [OrderBy("Score desc")]
        public List<Rating> RatingSource { get; set; }

        //Port
        [CollectionPort]
        [Binding("RatingSource")]
        public List<Rating> RatingPort { get; set; }
    }
}