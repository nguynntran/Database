-- Adoption Status Update Trigger --:
CREATE OR REPLACE FUNCTION update_adoption_status()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Pet
    SET AdoptionStatus = 'Adopted'
    WHERE PetID = NEW.PetID;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- TRIGGER FOR ABOVE FUNCTION --
CREATE TRIGGER adoption_status_trigger
AFTER INSERT ON Adoption
FOR EACH ROW
EXECUTE FUNCTION update_adoption_status();

-- TRIGGER FOR PREVENTING ADOPTING UNAVAILABLE EGGS:
CREATE OR REPLACE FUNCTION check_pet_availability()
RETURNS TRIGGER AS $$
DECLARE
    pet_status VARCHAR(20);
BEGIN
    SELECT AdoptionStatus INTO pet_status
    FROM Pet
    WHERE PetID = NEW.PetID;
    
    IF pet_status <> 'Available' THEN
        RAISE EXCEPTION 'Cannot adopt pet with status: %', pet_status;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER pet_availability_trigger
BEFORE INSERT ON Adoption
FOR EACH ROW
EXECUTE FUNCTION check_pet_availability();

