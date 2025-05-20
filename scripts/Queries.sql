-- Update Staff table with EndDates for some staff members:
UPDATE Staff SET EndDate = '2023-06-15' WHERE StaffID = 102;
UPDATE Staff SET EndDate = '2022-12-31' WHERE StaffID = 105;
UPDATE Staff SET EndDate = '2023-09-30' WHERE StaffID = 108;
UPDATE Staff SET EndDate = '2023-03-01' WHERE StaffID = 109;

-- Order Staff by staffed:
SELECT * FROM Staff ORDER BY staffid;

-- Update Pet adoption status for adopted pets
UPDATE Pet SET AdoptionStatus = 'Adopted' 
WHERE PetID IN (SELECT PetID FROM Adoption);

-- Query to find current staff (EndDate is NULL)
SELECT StaffID, FirstName, LastName, Staff_pos, ShelterID, StartDate
FROM Staff
WHERE EndDate IS NULL
ORDER BY ShelterID, Staff_pos;

-- Retrieve Pet and ShelterInformation
SELECT p.PetID, p.Name, p.Species, p.Breed, p.Age, p.Gender,
       s.Name AS ShelterName, s.Address AS ShelterLocation
FROM Pet AS p
JOIN Shelter AS s ON p.ShelterID = s.ShelterID
WHERE p.AdoptionStatus = 'Available'
ORDER BY p.Species, p.Age;

-- Get information Pet and Adopter:
SELECT p.PetID, p.Name AS PetName, p.Breed, 
       a.FirstName AS AdopterFirstName, a.LastName AS AdopterLastName,
       ad.AdoptionDate, ad.Fee
FROM Pet AS p
JOIN Adoption AS ad ON p.PetID = ad.PetID
JOIN Adopter a ON ad.AdopterID = a.AdopterID
ORDER BY ad.AdoptionDate DESC;

-- Adoption by month
SELECT EXTRACT(YEAR FROM AdoptionDate) AS Year,
       EXTRACT(MONTH FROM AdoptionDate) AS Month,
       COUNT(*) AS TotalAdoptions,
       SUM(Fee) AS TotalFees
FROM Adoption
GROUP BY Year, Month
ORDER BY Year, Month;

-- Pets per Shelter (Available  and Adopted):
SELECT s.Name AS ShelterName,
       SUM(CASE WHEN p.AdoptionStatus = 'Available' THEN 1 ELSE 0 END) AS AvailablePets,
       SUM(CASE WHEN p.AdoptionStatus = 'Adopted' THEN 1 ELSE 0 END) AS AdoptedPets,
       COUNT(*) AS TotalPets
FROM Shelter s
LEFT JOIN Pet p ON s.ShelterID = p.ShelterID
GROUP BY s.Name
ORDER BY TotalPets DESC;

-- Retrieve Pets is adopted:
SELECT PetID, Name, Species, Breed FROM Pet WHERE AdoptionStatus = 'Adopted';

-- QUERY FOR VIEW TABLE --
SELECT * FROM vw_PetHealthStatus;
SELECT AdoptionID, PetID, PetName, AdoptionDate FROM vw_AdoptionHistory;
