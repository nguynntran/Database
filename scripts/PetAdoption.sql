CREATE TABLE Shelter (
    ShelterID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(50)
    );

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Staff_pos VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(50),
    ShelterID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

CREATE TABLE Pet (
    PetID INT PRIMARY KEY,
    Name VARCHAR(50),
    Species VARCHAR(20),
    Breed VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    HealthStatus VARCHAR(50),
    AdoptionStatus VARCHAR(20) DEFAULT 'Available',
    ShelterID INT,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

CREATE TABLE Adopter (
    AdopterID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);

CREATE TABLE Adoption (
    AdoptionID INT PRIMARY KEY,
    PetID INT,
    AdopterID INT,
    AdoptionDate DATE,
    Fee DECIMAL(10, 2),
    FOREIGN KEY (PetID) REFERENCES Pet(PetID),
    FOREIGN KEY (AdopterID) REFERENCES Adopter(AdopterID)
);