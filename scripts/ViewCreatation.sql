-- VIEW TABLE FOR DATA OF AVAILABLE PETS --
CREATE VIEW vw_AvailablePets AS
SELECT 
    p.PetID, 
    p.Name AS PetName, 
    p.Species, 
    p.Breed, 
    p.Age, 
    p.Gender,
    s.Name AS ShelterName,
    s.Address AS ShelterLocation
FROM 
    Pet AS p
JOIN 
    Shelter AS s ON p.ShelterID = s.ShelterID
WHERE 
    p.AdoptionStatus = 'Available';

-- VIEW TABLE FOR HISTORY OF ADOPTION --
CREATE VIEW vw_AdoptionHistory AS
SELECT 
    a.AdoptionID,
    p.PetID,
    p.Name AS PetName,
    p.Species,
    p.Breed,
    ad.FirstName || ' ' || ad.LastName AS AdopterName,
    a.AdoptionDate,
    a.Fee,
    s.Name AS ShelterName
FROM 
    Adoption AS a
JOIN 
    Pet AS p ON a.PetID = p.PetID
JOIN 
    Adopter AS ad ON a.AdopterID = ad.AdopterID
JOIN 
    Shelter AS s ON p.ShelterID = s.ShelterID;

-- VIEW TABLE FOR HEALTH STATUS OF PET
CREATE VIEW vw_PetHealthStatus AS
SELECT 
    p.PetID,
    p.Name AS PetName,
    p.Species,
    p.Breed,
    p.HealthStatus,
    CASE 
        WHEN p.AdoptionStatus = 'Available' THEN 'Available'
        ELSE 'Adopted'
    END AS Status,
    s.Name AS ShelterName
FROM 
    Pet AS p
JOIN 
    Shelter AS s ON p.ShelterID = s.ShelterID;