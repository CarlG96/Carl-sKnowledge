# Use LINQ To get a list of one property from a list of objects
Use LINQ To get a list of one property from a list of objects (like getting display names of users from a list of users)

Here's a class called Employee 

```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Linq
{
    internal class Employee
    {
        internal string Name { get; set; }
        internal int Age { get; set; }
        internal DateTime StartDate { get; set; }
        internal List<Skills> ListOfSkills { get; set; }

        internal Employee(string name, int age, DateTime startDate, List<Skills> listOfSkills)
        {
            Name = name;
            Age = age;
            StartDate = startDate;
            ListOfSkills = listOfSkills;
        }
    }
    

    internal enum Skills
    {
        None,
        Manager,
        CSharp,
        Powershell,
        Yaml,
        Powerpoint,
        Azure,
        Devops,
        Cakes
    }
}
```

Here's a list of methods to do lots of things in Linq:


```C#
using Linq;
using System.Net.Http.Headers;

Console.WriteLine("Hello, World!");

List<Employee> listOfEmployees = new List<Employee>()
{
    new Employee("James",35, new DateTime(2021,05,17), new List<Skills>(){Skills.None}),
    new Employee("Daniel",22, new DateTime(2019,09,16), new List<Skills>(){Skills.Yaml, Skills.Cakes}),
    new Employee("Mark",50, new DateTime(2003,11,14), new List<Skills>(){Skills.Manager,Skills.Powershell,Skills.Azure}),
    new Employee("Shaun",43, new DateTime(1999,02,25), new List<Skills>(){Skills.Devops, Skills.Azure, Skills.CSharp}),
    new Employee("Jenny",18, new DateTime(2022,04,18), new List<Skills>(){Skills.None}),
    new Employee("Polly",24, new DateTime(2018,04,30), new List<Skills>(){Skills.Devops, Skills.Cakes}),
    new Employee("Olivia",31, new DateTime(2010,07,04), new List<Skills>(){Skills.Powershell,Skills.CSharp, Skills.Yaml}),
    new Employee("George",39, new DateTime(2013,11,11), new List<Skills>(){Skills.Manager, Skills.Powerpoint}),
    new Employee("Ryan",60, new DateTime(1990,12,25), new List<Skills>(){Skills.Devops, Skills.CSharp, Skills.Powershell}),
    new Employee("Chris",58, new DateTime(2012,01,17), new List<Skills>(){Skills.Cakes, Skills.Yaml, Skills.CSharp}),
    new Employee("Laura",29, new DateTime(2015,02,07), new List<Skills>(){Skills.Powershell, Skills.Yaml}),
    new Employee("Gwen",44, new DateTime(2011,09,16), new List<Skills>(){Skills.Azure, Skills.CSharp, Skills.Yaml}),
    new Employee("Bob",23, new DateTime(2023,01,19), new List<Skills>(){Skills.CSharp}),
    new Employee("Dave",55, new DateTime(2003,01,04), new List<Skills>(){Skills.Manager, Skills.Powerpoint, Skills.Azure}),
    new Employee("Josh",57, new DateTime(1998,07,15), new List<Skills>(){Skills.Azure, Skills.Yaml, Skills.Devops, Skills.Powershell}),
    new Employee("Felix",48, new DateTime(2008,06,27), new List<Skills>(){Skills.CSharp, Skills.Azure, Skills.Powershell}),
    new Employee("Bruce",67, new DateTime(1988,09,12), new List<Skills>(){Skills.Manager}),
    new Employee("Carmen",32, new DateTime(2007,03,01), new List<Skills>(){Skills.CSharp, Skills.Cakes}),
    new Employee("Lucy", 40, new DateTime(2014,08,29), new List<Skills>(){Skills.Devops, Skills.Cakes})
};

//Create a new list of employees in alphabetical order by name

List<Employee> listOfEmployeesAlphabeticalOrder = listOfEmployees.OrderBy(employee => employee.Name).ToList();

//Create a new list of employees in reverse alphabetical order by name

List<Employee> listOfEmployeesReverseAlphabetical =
    listOfEmployees.OrderByDescending(employee => employee.Name).ToList();

//New List by start date from longest serving to most recent.

List<Employee> listOfEmployeesInLongestServingOrder = listOfEmployees.OrderBy(employee => employee.StartDate).ToList();

//New List by start date from most recent to longest serving.

List<Employee> listOfEmployeesInShortestServingOrder = listOfEmployees.OrderByDescending(employee => employee.StartDate).ToList();

//Get everyone in the list called Laura

List<Employee> listOfEmployeesCalledLaura = listOfEmployees.Where(employee => employee.Name == "Laura").ToList();

//Get Everyone with the skill of ListOfSkills.Azure

List<Employee> listOfEmployeesWithAzureSkills =
    listOfEmployees.Where(employee => employee.ListOfSkills.Contains(Skills.Azure)).ToList();

//Get Everyone who doesn't have the skill with Azure

List<Employee> listOfEmployeesWithoutAzureSkills =
    listOfEmployees.Where(employee => !employee.ListOfSkills.Contains(Skills.Azure)).ToList();


//Get Everyone with the DevOps skills who is 40 or over

List<Employee> listOfEmployeesOver40WithDevOps = listOfEmployees
    .Where(employee => employee.ListOfSkills.Contains(Skills.Devops) && employee.Age >= 40).ToList();

//Get a list of just Employee Names

List<string> employeeNames = listOfEmployees.Select(employee => employee.Name).ToList();


//Get a list of Employee Names that are not "Bruce"

List<string> employeeNamesNotBruce = listOfEmployees.Select(employee => employee.Name)
    .Where(employeeName => employeeName != "Bruce").ToList();

//Get a list of names of people who are under 45 who can bake cakes but can't use DevOps

List<string> employeesUnder45WhoCanBakeCakesButCantUseDevops = listOfEmployees.Where(employee => employee.Age > 45
    && employee.ListOfSkills.Contains(Skills.Cakes)
    && !employee.ListOfSkills.Contains(Skills.Devops)).Select(employee => employee.Name).ToList();


//Get a list of names of people who only have one skill - skills none counts as a single skill

List<string> employeesWithOnlyOneSkill = listOfEmployees.Where(employee => employee.ListOfSkills.Count == 1)
    .Select(employee => employee.Name).ToList();


//Get a list of names of people who only have one skill - skills none now does not count as a skill

List<string> employeesGenuinelyWithOnlyOneSkill = listOfEmployees
    .Where(employee => employee.ListOfSkills.Count == 1 && !employee.ListOfSkills.Contains(Skills.None))
    .Select(employee => employee.Name).ToList();

//Get the first employee from a list of employees that are in alphabetical order
Employee firstEmployeeInAlphabet = listOfEmployees.OrderBy(employee => employee.Name).First();

//Get third employee from a list of employees in alphabetical order
Employee thirdOne = listOfEmployees.OrderBy(employee => employee.Name).ElementAt(2);

//First person in list who is aged 27

Employee first27YearOld = listOfEmployees.Where(employee => employee.Age == 27).FirstOrDefault();

//get only employee who is 60

Employee onlyEmployeeWhoIs60 = listOfEmployees.Where(employee => employee.Age == 60).SingleOrDefault();


Console.ReadLine();
```
