-- FUNCTION CHECK FOR PET IS ADOPTED OR NOT:

CREATE OR REPLACE FUNCTION is_adopted(pid INT) --pid  is pet_id
RETURNS VARCHAR(3) AS $$
DECLARE 
    adopted BOOLEAN;
BEGIN
    SELECT EXISTS (
        SELECT 1 FROM Adoption 
        WHERE PetID = pid
    ) INTO adopted;
    
    IF adopted THEN
        RETURN 'Yes';
    ELSE
        RETURN 'No';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- FUNCTION FOR AVAILABLE PET FOR EACH SHELTER:

CREATE OR REPLACE FUNCTION available_pets(sid INT) 
RETURNS INT AS $$
DECLARE 
    p_count INT;
BEGIN
    SELECT COUNT(*) INTO p_count
    FROM Pet
    WHERE ShelterID = sid AND AdoptionStatus = 'Available';
    
    RETURN p_count;
END;
$$ LANGUAGE plpgsql;

-- FUNCTION FOR CALCULATING HUMAN AGE OF PET:
CREATE OR REPLACE FUNCTION human_age(pid INT)
RETURNS INT AS $$
DECLARE 
    p_age INT;
    sp VARCHAR(20);
    h_age INT;
BEGIN
    SELECT Age, Species INTO p_age, sp
    FROM Pet
    WHERE PetID = pid;
    
    IF sp = 'Dog' THEN
        h_age := p_age * 7;
    ELSIF sp = 'Cat' THEN
        h_age := p_age * 5;
    ELSE
        h_age := p_age * 4;
    END IF;
    
    RETURN h_age;
END;
$$ LANGUAGE plpgsql;

-- FUNCTION UPDATE INTO ADOPTION TABLE WHEN WE HAVE NEW ADOPTION 
CREATE OR REPLACE FUNCTION update_adoption_status()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Pet
    SET AdoptionStatus = 'Adopted'
    WHERE PetID = NEW.PetID;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;