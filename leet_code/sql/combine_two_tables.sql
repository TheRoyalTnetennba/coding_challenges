SELECT Person.FirstName, Person.LastName, Address.City, Address.State
FROM Person
JOIN Address on Person.PersonId = Address.PersonId
