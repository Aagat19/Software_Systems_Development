USE XYZ
DELIMITER //

CREATE PROCEDURE AddSubscriberIfNotExists(IN SUB_NAME VARCHAR(100))
BEGIN
DECLARE SUB_COUNT INT DEFAULT 0;
DECLARE NEXTT INT DEFAULT 0;

SELECT COUNT(*) INTO SUB_COUNT
FROM Subscribers
WHERE SubscriberName = SUB_NAME;

    
IF SUB_COUNT = 0 THEN
        
SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO NEXTT FROM Subscribers;

INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
VALUES (NEXTT,SUB_NAME, CURDATE());
END IF;

SELECT * FROM Subscribers WHERE SubscriberName = SUB_NAME;
END //

DELIMITER ;

CALL AddSubscriberIfNotExists('Agat Choubey');
CALL AddSubscriberIfNotExists('Emily Clark');

