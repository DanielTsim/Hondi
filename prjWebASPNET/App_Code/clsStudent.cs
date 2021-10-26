using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjWebASPNET
{
    public class clsStudent
    {
        private string name;
        private float average;
        private string course;

        public clsStudent()
        {
            name = course = "undefined";
            average = -1;
        }
        public clsStudent(string Name, float Average, string Course)
        {
            this.name = Name;
            this.average = Average;
            this.course = Course;
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public float Average
        {
            get
            {
                return average;
            }

            set
            {
                average = value;
            }
        }

        public string Course
        {
            get
            {
                return course;
            }

            set
            {
                course = value;
            }
        }

        public override string ToString()
        {
            return Name;
        }
    }
}