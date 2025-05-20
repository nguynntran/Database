INSERT INTO Shelter (ShelterID, Name, Address, Phone, Email)
VALUES
(1, 'Happy Paws Shelter', '123 Main St, Anytown', '555-1234', 'info@happypaws.org'),
(2, 'Forever Friends Rescue', '456 Oak Ave, Somewhere', '555-5678', 'contact@foreverfriends.org'),
(3, 'Second Chance Animal Haven', '789 Pine Rd, Nowhere', '555-9012', 'adopt@secondchance.org'),
(4, 'Paws & Love Sanctuary', '321 Elm Blvd, Anywhere', '555-3456', 'help@pawslove.org'),
(5, 'Furry Tails Rescue', '654 Maple Ln, Elsewhere', '555-7890', 'volunteer@furrytails.org');

INSERT INTO Staff (StaffID, FirstName, LastName, Staff_pos, Phone, Email, ShelterID, StartDate, EndDate)
VALUES
(101, 'Sarah', 'Johnson', 'Manager', '555-1111', 'sarah@happypaws.org', 1, '2020-01-15', NULL),
(102, 'Michael', 'Brown', 'Veterinarian', '555-2222', 'michael@happypaws.org', 1, '2021-03-10', NULL),
(103, 'Emily', 'Davis', 'Caretaker', '555-3333', 'emily@happypaws.org', 1, '2022-05-20', NULL),
(104, 'David', 'Wilson', 'Manager', '555-4444', 'david@foreverfriends.org', 2, '2019-11-05', NULL),
(105, 'Jessica', 'Martinez', 'Adoption Counselor', '555-5555', 'jessica@foreverfriends.org', 2, '2020-07-15', NULL),
(106, 'Robert', 'Anderson', 'Veterinarian', '555-6666', 'robert@secondchance.org', 3, '2021-02-28', NULL),
(107, 'Jennifer', 'Taylor', 'Manager', '555-7777', 'jennifer@secondchance.org', 3, '2018-09-12', NULL),
(108, 'Thomas', 'Moore', 'Caretaker', '555-8888', 'thomas@pawslove.org', 4, '2022-01-10', NULL),
(109, 'Lisa', 'Jackson', 'Adoption Counselor', '555-9999', 'lisa@pawslove.org', 4, '2021-06-15', NULL),
(110, 'James', 'White', 'Manager', '555-0000', 'james@furrytails.org', 5, '2020-04-01', NULL);

INSERT INTO Pet (PetID, Name, Species, Breed, Age, Gender, HealthStatus, AdoptionStatus, ShelterID)
VALUES
(1001, 'Buddy', 'Dog', 'Golden Retriever', 3, 'M', 'Healthy', 'Available', 1),
(1002, 'Bella', 'Dog', 'Labrador Mix', 2, 'F', 'Healthy', 'Available', 1),
(1003, 'Max', 'Dog', 'German Shepherd', 5, 'M', 'Needs medication', 'Available', 1),
(1004, 'Luna', 'Cat', 'Domestic Shorthair', 1, 'F', 'Healthy', 'Available', 2),
(1005, 'Charlie', 'Dog', 'Beagle', 4, 'M', 'Healthy', 'Available', 2),
(1006, 'Lucy', 'Cat', 'Siamese Mix', 2, 'F', 'Healthy', 'Available', 2),
(1007, 'Cooper', 'Dog', 'Bulldog', 6, 'M', 'Needs special diet', 'Available', 3),
(1008, 'Daisy', 'Dog', 'Poodle', 3, 'F', 'Healthy', 'Available', 3),
(1009, 'Milo', 'Cat', 'Maine Coon', 2, 'M', 'Healthy', 'Available', 4),
(1010, 'Lola', 'Dog', 'Chihuahua', 1, 'F', 'Healthy', 'Available', 4),
(1011, 'Rocky', 'Dog', 'Boxer', 4, 'M', 'Healthy', 'Available', 5),
(1012, 'Sophie', 'Cat', 'Persian', 5, 'F', 'Needs grooming', 'Available', 5),
(1013, 'Bear', 'Dog', 'Husky', 2, 'M', 'Healthy', 'Available', 1),
(1014, 'Zoe', 'Cat', 'Tabby', 3, 'F', 'Healthy', 'Available', 2),
(1015, 'Tucker', 'Dog', 'Dachshund', 7, 'M', 'Needs joint care', 'Available', 3),
(1016, 'Chloe', 'Cat', 'Ragdoll', 1, 'F', 'Healthy', 'Available', 4),
(1017, 'Duke', 'Dog', 'Great Dane', 2, 'M', 'Healthy', 'Available', 5),
(1018, 'Mia', 'Cat', 'Domestic Longhair', 4, 'F', 'Healthy', 'Available', 1),
(1019, 'Oscar', 'Dog', 'Corgi', 3, 'M', 'Healthy', 'Available', 2),
(1020, 'Lily', 'Cat', 'Scottish Fold', 2, 'F', 'Healthy', 'Available', 3);

INSERT INTO Adopter (AdopterID, FirstName, LastName, Phone, Email)
VALUES
(5001, 'John', 'Smith', '555-0101', 'john.smith@email.com'),
(5002, 'Mary', 'Johnson', '555-0202', 'mary.johnson@email.com'),
(5003, 'William', 'Brown', '555-0303', 'william.brown@email.com'),
(5004, 'Patricia', 'Davis', '555-0404', 'patricia.davis@email.com'),
(5005, 'Richard', 'Miller', '555-0505', 'richard.miller@email.com'),
(5006, 'Jennifer', 'Wilson', '555-0606', 'jennifer.wilson@email.com'),
(5007, 'Charles', 'Moore', '555-0707', 'charles.moore@email.com'),
(5008, 'Linda', 'Taylor', '555-0808', 'linda.taylor@email.com'),
(5009, 'Joseph', 'Anderson', '555-0909', 'joseph.anderson@email.com'),
(5010, 'Elizabeth', 'Thomas', '555-1010', 'elizabeth.thomas@email.com'),
(5011, 'Daniel', 'Jackson', '555-1111', 'daniel.jackson@email.com'),
(5012, 'Barbara', 'White', '555-1212', 'barbara.white@email.com'),
(5013, 'Matthew', 'Harris', '555-1313', 'matthew.harris@email.com'),
(5014, 'Susan', 'Martin', '555-1414', 'susan.martin@email.com'),
(5015, 'Christopher', 'Garcia', '555-1515', 'christopher.garcia@email.com');


INSERT INTO Adoption (AdoptionID, PetID, AdopterID, AdoptionDate, Fee)
VALUES
(9001, 1001, 5001, '2023-01-15', 150.00),
(9002, 1004, 5002, '2023-02-10', 100.00),
(9003, 1007, 5003, '2023-03-05', 200.00),
(9004, 1010, 5004, '2023-04-20', 120.00),
(9005, 1013, 5005, '2023-05-12', 180.00),
(9006, 1016, 5006, '2023-06-08', 90.00),
(9007, 1019, 5007, '2023-07-25', 160.00),
(9008, 1002, 5008, '2023-08-14', 140.00),
(9009, 1005, 5009, '2023-09-03', 170.00),
(9010, 1008, 5010, '2023-10-19', 190.00),
(9011, 1011, 5011, '2023-11-11', 210.00),
(9012, 1014, 5012, '2023-12-05', 110.00),
(9013, 1017, 5013, '2024-01-22', 220.00),
(9014, 1020, 5014, '2024-02-18', 95.00),
(9015, 1003, 5015, '2024-03-10', 130.00);
