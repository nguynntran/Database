CREATE INDEX idx_pet_shelter_status ON Pet(ShelterID, AdoptionStatus);
-- Accelerates queries filtering by shelter and adoption status
-- Makes "available pets by shelter" queries much faster
-- Improves reports on shelter capacity and adoption rates 


CREATE INDEX idx_adoption_pet_adopter ON Adoption(PetID, AdopterID);
-- Speeds up queries that join the Adoption table with Pet or Adopter tables
-- Optimizes lookups for specific pet adoption histories
-- Improves performance when checking if a pet has been adopted

--Queries for using Index:

SELECT a.* 
FROM Adoption a
WHERE a.PetID = 1001 AND a.AdopterID = 5001;


SELECT a.* 
FROM Adoption a
WHERE a.PetID = 1001;

SELECT a.*, ad.FirstName, ad.LastName
FROM Adoption AS a
JOIN Adopter AS ad ON a.AdopterID = ad.AdopterID
WHERE a.PetID = 1005;