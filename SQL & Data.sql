DROP DATABASE IF EXISTS supermarket;
CREATE DATABASE supermarket;
USE supermarket;


CREATE TABLE Customer(
	CustID VARCHAR(6) NOT NULL,
	CustTitle VARCHAR(5),
	CustName VARCHAR(30) NOT NULL,
    NIC VARCHAR(12) UNIQUE NOT NULL,
	DOB DATE,
	MobileNumber VARCHAR(12),
	CustAddress VARCHAR(30),
	City VARCHAR(20),
	Province VARCHAR(20),
	PostalCode INT(9),
	CONSTRAINT PRIMARY KEY (CustID)
);

CREATE TABLE Orders (
    OrderID VARCHAR(6) NOT NULL,
    OrderDate DATETIME NOT NULL,
    CustID VARCHAR(6) NOT NULL,
    CONSTRAINT PRIMARY KEY (OrderID),
    CONSTRAINT FOREIGN KEY (CustID) REFERENCES Customer (CustID)
    ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Item_Category (
    CategoryID VARCHAR(6) NOT NULL,
    CategoryName VARCHAR(50) NOT NULL,
    Description VARCHAR(250) NOT NULL,
    CONSTRAINT PRIMARY KEY (CategoryID)
);

CREATE TABLE Item (
    ItemID VARCHAR(6) NOT NULL,
    ItemName VARCHAR(50) NOT NULL,
    Quantity DOUBLE NOT NULL,
    Price DOUBLE NOT NULL,
    CategoryID VARCHAR(6) NOT NULL,
    CONSTRAINT PRIMARY KEY (ItemID),
    CONSTRAINT FOREIGN KEY (CategoryID) REFERENCES Item_Category(CategoryID)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Order_Detail(
	OrderID VARCHAR(6) NOT NULL,
    ItemID VARCHAR(6) NOT NULL,
	OrderQty DOUBLE NOT NULL,
	Discount DOUBLE,
    TotalPrice DOUBLE,
	CONSTRAINT PRIMARY KEY (OrderID,ItemID),
	CONSTRAINT FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
	ON UPDATE CASCADE ON DELETE CASCADE
);




INSERT INTO Customer VALUES('C001','Mr','Danapala','96742826V','1981-02-06','076-3424457','No.20 Walana','Panadura','Western',12500);
INSERT INTO Customer VALUES('C002','Ms','Samanthi','98765432V','1985-05-12','071-1234567','No.45 Main Street','Colombo','Western',13500);
INSERT INTO Customer VALUES('C003','Mr','Perera','95123456V','1990-08-22','077-6543210','No.100 Temple Road','Kandy','Central',14500);
INSERT INTO Customer VALUES('C004','Mrs','Fernando','91234567V','1978-11-05','078-1234567','No.10 Lake View','Galle','Southern',15500);
INSERT INTO Customer VALUES('C005','Mr','Wijesinghe','92123456V','1982-03-16','070-9876543','No.30 Green Avenue','Kurunegala','North Western',16500);
INSERT INTO Customer VALUES('C006','Ms','Kumari','96543210V','1995-07-30','076-5432109','No.75 Market Road','Matara','Southern',17500);
INSERT INTO Customer VALUES('C007','Mrs','Jayasinghe','98765431V','1975-02-20','075-4321098','No.20 Flower Street','Anuradhapura','North Central',18500);
INSERT INTO Customer VALUES('C008','Mr','Silva','95123459V','1980-12-12','071-9876543','No.55 Hill Top','Ratnapura','Sabaragamuwa',19500);
INSERT INTO Customer VALUES('C009','Ms','Herath','91123458V','1988-06-25','072-8765432','No.40 Sea View','Jaffna','Northern',20500);
INSERT INTO Customer VALUES('C010','Mrs','Gunasekara','94123457V','1979-01-18','077-7654321','No.12 Park Lane','Badulla','Uva',21500);
INSERT INTO Customer VALUES('C011','Mr','Rathnayake','98123456V','1987-10-22','071-3456789','No.34 Sunset Blvd','Kalutara','Western',22500);
INSERT INTO Customer VALUES('C012','Ms','Ekanayake','96123455V','1992-09-14','076-9876543','No.65 River Road','Negombo','Western',23500);
INSERT INTO Customer VALUES('C013','Mrs','De Silva','93123454V','1974-11-02','075-8765432','No.23 Palm Grove','Gampaha','Western',24500);
INSERT INTO Customer VALUES('C014','Mr','Bandara','92123453V','1986-07-20','070-8765431','No.89 Lotus Street','Kegalle','Sabaragamuwa',25500);
INSERT INTO Customer VALUES('C015','Ms','Wickramasinghe','94123452V','1983-04-05','077-6543212','No.10 Mountain Road','Hatton','Central',26500);
INSERT INTO Customer VALUES('C016','Mrs','Senanayake','97123451V','1977-03-08','076-5432108','No.35 Maple Avenue','Trincomalee','Eastern',27500);
INSERT INTO Customer VALUES('C017','Mr','Dias','95123450V','1991-08-16','075-4321097','No.50 King Street','Nuwara Eliya','Central',28500);
INSERT INTO Customer VALUES('C018','Ms','Navaratne','98123449V','1984-05-23','071-3456798','No.75 Beach Road','Hambantota','Southern',29500);
INSERT INTO Customer VALUES('C019','Mrs','Abeysekara','96123448V','1976-09-12','076-8765432','No.60 Field Road','Batticaloa','Eastern',30500);
INSERT INTO Customer VALUES('C020','Mr','Rodrigo','93123447V','1993-12-29','075-7654321','No.25 Pine Street','Puttalam','North Western',31500);
INSERT INTO Customer VALUES('C021','Ms','Weerasinghe','94123446V','1989-06-19','077-6543213','No.85 Hill Street','Vavuniya','Northern',32500);
INSERT INTO Customer VALUES('C022','Mrs','Karunaratne','97123445V','1978-02-27','076-5432107','No.40 Sunset Drive','Kilinochchi','Northern',33500);
INSERT INTO Customer VALUES('C023','Mr','Amarasinghe','95123444V','1985-11-15','075-4321096','No.70 Green Street','Polonnaruwa','North Central',34500);
INSERT INTO Customer VALUES('C024','Ms','Mendis','98123443V','1990-07-21','071-3456797','No.33 High Road','Monaragala','Uva',35500);
INSERT INTO Customer VALUES('C025','Mrs','Jayawardena','96123442V','1983-04-17','076-8765431','No.58 Park Avenue','Mannar','Northern',36500);
INSERT INTO Customer VALUES('C026','Mr','Rupasinghe','93123441V','1977-09-03','075-7654320','No.17 King Road','Gampola','Central',37500);
INSERT INTO Customer VALUES('C027','Ms','De Alwis','94123440V','1992-12-01','077-6543214','No.84 Lake View','Matale','Central',38500);
INSERT INTO Customer VALUES('C028','Mrs','Fonseka','97123439V','1980-08-19','076-5432106','No.42 Temple Road','Kuliyapitiya','North Western',39500);
INSERT INTO Customer VALUES('C029','Mr','Rajapakse','95123438V','1986-03-29','075-4321095','No.56 Hill View','Wattala','Western',40500);
INSERT INTO Customer VALUES('C030','Ms','Peiris','98123437V','1979-11-10','071-3456796','No.39 Sea View','Kelaniya','Western',41500);
INSERT INTO Customer VALUES('C031','Mrs','Liyanage','96123436V','1981-05-30','076-8765430','No.18 Market Street','Mawanella','Sabaragamuwa',42500);
INSERT INTO Customer VALUES('C032','Mr','Pathirana','93123435V','1995-07-14','075-7654319','No.25 Main Road','Badulla','Uva',43500);
INSERT INTO Customer VALUES('C033','Ms','Gunawardena','94123434V','1976-02-08','077-6543215','No.65 Green Park','Ratnapura','Sabaragamuwa',44500);
INSERT INTO Customer VALUES('C034','Mrs','Wijewardena','97123433V','1984-10-25','076-5432105','No.75 Flower Road','Negombo','Western',45500);
INSERT INTO Customer VALUES('C035','Mr','Hettiarachchi','95123432V','1990-06-13','075-4321094','No.50 Sunset Boulevard','Kalutara','Western',46500);
INSERT INTO Customer VALUES('C036','Ms','Dissanayake','98123431V','1978-09-06','071-3456795','No.20 King Street','Colombo','Western',47500);
INSERT INTO Customer VALUES('C037','Mrs','Senarath','96123430V','1986-04-21','076-8765429','No.35 Sea View','Kandy','Central',48500);
INSERT INTO Customer VALUES('C038','Mr','De Silva','93123429V','1983-03-17','075-7654318','No.10 Green Avenue','Kurunegala','North Western',49500);
INSERT INTO Customer VALUES('C039','Ms','Fernando','94123428OV','1992-11-23','077-6543216','No.42 Market Road','Matara','Southern',50500);
INSERT INTO Customer VALUES('C040','Mrs','Herath','97123427V','1975-08-12','076-5432104','No.30 Hill View','Galle','Southern',51500);
INSERT INTO Customer VALUES('C041','Mr','Wijesinghe','95123426V','1988-02-26','075-4321093','No.55 Lake View','Anuradhapura','North Central',52500);
INSERT INTO Customer VALUES('C042','Ms','Abeywickrama','98123425V','1979-07-15','071-3456794','No.20 Temple Road','Jaffna','Northern',53500);
INSERT INTO Customer VALUES('C043','Mrs','Perera','96123424V','1985-01-28','076-8765428','No.60 Hill Top','Ratnapura','Sabaragamuwa',54500);
INSERT INTO Customer VALUES('C044','Mr','Rathnayake','93123423V','1984-09-04','075-7654317','No.10 Beach Road','Colombo','Western',55500);
INSERT INTO Customer VALUES('C045','Ms','Samanthi','94123422V','1991-05-13','077-6543217','No.50 Temple Road','Kandy','Central',56500);
INSERT INTO Customer VALUES('C046','Mrs','Silva','97123421V','1978-12-22','076-5432103','No.30 Lake Road','Galle','Southern',57500);
INSERT INTO Customer VALUES('C047','Mr','Wijesinghe','95123420V','1982-06-14','075-4321092','No.75 Hill Street','Matara','Southern',58500);
INSERT INTO Customer VALUES('C048','Ms','Perera','98123419V','1990-08-24','071-3456793','No.45 Market Lane','Kurunegala','North Western',59500);
INSERT INTO Customer VALUES('C049','Mrs','Fernando','96123418V','1985-03-29','076-8765427','No.100 Green Avenue','Anuradhapura','North Central',60500);
INSERT INTO Customer VALUES('C050','Mr','Jayasinghe','93123417V','1977-11-05','075-7654316','No.12 Hill Top','Gampaha','Western',61500);
INSERT INTO Customer VALUES('C051','Ms','Kumari','94123416V','1983-07-18','077-6543218','No.20 Flower Road','Ratnapura','Sabaragamuwa',62500);
INSERT INTO Customer VALUES('C052','Mrs','Abeyratne','97123415V','1976-02-22','076-5432102','No.34 King Road','Jaffna','Northern',63500);
INSERT INTO Customer VALUES('C053','Mr','Mendis','95123414V','1992-09-17','075-4321091','No.60 Sea View','Badulla','Uva',64500);
INSERT INTO Customer VALUES('C054','Ms','Dissanayake','98123413V','1988-01-08','071-3456792','No.75 Market Street','Colombo','Western',65500);
INSERT INTO Customer VALUES('C055','Mrs','Navaratne','96123412V','1979-06-15','0768765426','No.50 Park Road','Kandy','Central',66500);
INSERT INTO Customer VALUES('C056','Mr','Senarath','93123411V','1986-11-20','075-7654315','No.10 Temple Avenue','Galle','Southern',67500);
INSERT INTO Customer VALUES('C057','Ms','Karunaratne','94123410V','1982-05-23','077-6543219','No.20 Hill Road','Kurunegala','North Western',68500);
INSERT INTO Customer VALUES('C058','Mrs','Wijewardena','97123409V','1975-09-28','076-5432101','No.40 Sunset Road','Matara','Southern',69500);
INSERT INTO Customer VALUES('C059','Mr','Herath','95123408V','1989-12-02','075-4321090','No.30 Green Lane','Anuradhapura','North Central',70500);
INSERT INTO Customer VALUES('C060','Ms','Rodrigo','98123407V','1978-03-31','071-3456791','No.45 Beach Avenue','Gampaha','Western',71500);
INSERT INTO Customer VALUES('C061','Mrs','Gunasekara','96123406V','1987-07-11','076-8765425','No.34 Market Road','Jaffna','Northern',72500);
INSERT INTO Customer VALUES('C062','Mr','Fonseka','93123405V','1984-10-22','075-7654314','No.10 Park Lane','Badulla','Uva',73500);
INSERT INTO Customer VALUES('C063','Ms','Senanayake','94123404V','1993-01-29','077-6543220','No.55 Temple Street','Colombo','Western',74500);
INSERT INTO Customer VALUES('C064','Mrs','Rupasinghe','97123403V','1977-06-07','076-5432100','No.60 King Avenue','Kandy','Central',75500);
INSERT INTO Customer VALUES('C065','Mr','Ekanayake','95123402OV','1985-02-26','075-4321089','No.20 Flower Street','Galle','Southern',76500);
INSERT INTO Customer VALUES('C066','Ms','De Alwis','98123401V','1991-08-18','071-3456790','No.42 Hill Avenue','Kurunegala','North Western',77500);
INSERT INTO Customer VALUES('C067','Mrs','Bandara','96123400V','1979-11-16','076-8765424','No.30 Sea Road','Matara','Southern',78500);
INSERT INTO Customer VALUES('C068','Mr','Pathirana','93123399V','1983-03-04','075-7654313','No.75 Market Avenue','Anuradhapura','North Central',79500);
INSERT INTO Customer VALUES('C069','Ms','De Silva','94123398V','1988-09-29','077-6543221','No.50 Park Avenue','Gampaha','Western',80500);
INSERT INTO Customer VALUES('C070','Mrs','Gunawardena','97123397V','1975-07-03','076-5432099','No.10 Temple Road','Jaffna','Northern',81500);
INSERT INTO Customer VALUES('C071','Mr','Wijesekara','95123396V','1987-12-08','075-4321088','No.20 Hill Avenue','Badulla','Uva',82500);
INSERT INTO Customer VALUES('C072','Ms','Jayawardena','98123395V','1979-06-13','071-3456789','No.34 King Street','Colombo','Western',83500);
INSERT INTO Customer VALUES('C073','Mrs','Rathnayake','96123394V','1984-11-30','076-8765423','No.75 Flower Avenue','Kandy','Central',84500);
INSERT INTO Customer VALUES('C074','Mr','Herath','93123393V','1982-05-02','075-7654312','No.45 Park Lane','Galle','Southern',85500);
INSERT INTO Customer VALUES('C075','Ms','Samanthi','94123392V','1992-10-25','077-6543222','No.60 Market Avenue','Kurunegala','North Western',86500);
INSERT INTO Customer VALUES('C076','Mrs','Perera','97123391V','1978-03-21','076-5432098','No.10 Hill Lane','Matara','Southern',87500);
INSERT INTO Customer VALUES('C077','Mr','Wijesinghe','95123390V','1989-07-27','075-4321087','No.30 Temple Road','Anuradhapura','North Central',88500);
INSERT INTO Customer VALUES('C078','Ms','Fernando','98123389V','1985-09-11','071-3456788','No.50 Sea Road','Gampaha','Western',89500);
INSERT INTO Customer VALUES('C079','Mrs','Jayasinghe','96123388V','1990-01-14','076-8765422','No.75 Market Road','Jaffna','Northern',90500);
INSERT INTO Customer VALUES('C080','Mr','Kumari','93123387V','1983-11-23','075-7654311','No.34 Park Avenue','Badulla','Uva',91500);
INSERT INTO Customer VALUES('C081','Ms','Abeyratne','94123386V','1977-04-10','077-6543223','No.10 King Lane','Colombo','Western',92500);
INSERT INTO Customer VALUES('C082','Mrs','Mendis','97123385V','1984-08-16','076-5432097','No.20 Flower Avenue','Kandy','Central',93500);
INSERT INTO Customer VALUES('C083','Mr','Dissanayake','95123384V','1992-06-05','075-4321086','No.30 Sea Street','Galle','Southern',94500);
INSERT INTO Customer VALUES('C084','Ms','Navaratne','98123383V','1979-02-27','071-3456787','No.50 Temple Avenue','Kurunegala','North Western',95500);
INSERT INTO Customer VALUES('C085','Mrs','Senarath','96123382V','1987-09-18','076-8765421','No.75 Hill Avenue','Matara','Southern',96500);
INSERT INTO Customer VALUES('C086','Mr','Karunaratne','93123381V','1983-01-07','075-7654310','No.34 Market Lane','Anuradhapura','North Central',97500);
INSERT INTO Customer VALUES('C087','Ms','Pathirana','94123380V','1989-11-30','077-6543224','No.60 Hill Road','Gampaha','Western',98500);
INSERT INTO Customer VALUES('C088','Mrs','De Alwis','97123379V','1978-06-14','076-5432096','No.20 Flower Road','Jaffna','Northern',99500);
INSERT INTO Customer VALUES('C089','Mr','Bandara','95123378V','1985-10-12','075-4321085','No.75 King Street','Badulla','Uva',100500);
INSERT INTO Customer VALUES('C090','Ms','Perera','98123377V','1990-07-09','071-3456786','No.30 Market Street','Colombo','Western',101500);
INSERT INTO Customer VALUES('C091','Mrs','Wijewardena','96123376OV','1982-04-19','076-8765420','No.50 Park Avenue','Kandy','Central',102500);
INSERT INTO Customer VALUES('C092','Mr','Fonseka','93123375V','1979-09-24','075-7654309','No.10 Hill Avenue','Galle','Southern',103500);
INSERT INTO Customer VALUES('C093','Ms','Senanayake','94123374V','1987-02-22','077-6543225','No.34 Market Road','Kurunegala','North Western',104500);
INSERT INTO Customer VALUES('C094','Mrs','Rathnayake','97123373V','1983-05-16','076-5432095','No.60 Temple Road','Matara','Southern',105500);
INSERT INTO Customer VALUES('C095','Mr','Herath','95123372V','1992-12-08','075-4321084','No.20 Hill Avenue','Anuradhapura','North Central',106500);
INSERT INTO Customer VALUES('C096','Ms','Gunasekara','98123371V','1986-01-25','071-3456785','No.45 Flower Road','Gampaha','Western',107500);
INSERT INTO Customer VALUES('C097','Mrs','Jayawardena','96123370V','1975-06-13','076-8765419','No.75 Temple Street','Jaffna','Northern',108500);
INSERT INTO Customer VALUES('C098','Mr','Kumari','93123369V','1984-08-26','075-7654308','No.10 Park Avenue','Badulla','Uva',109500);
INSERT INTO Customer VALUES('C099','Ms','Abeyratne','94123368V','1991-03-15','077-6543226','No.34 Sea Road','Colombo','Western',110500);
INSERT INTO Customer VALUES('C100','Mrs','Mendis','97123367V','1978-11-10','076-5432094','No.20 Hill Road','Kandy','Central',111500);

#*********************************************************************************************************************************************************************

INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR001',"2024-03-14", 'C001');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR002',"2024-03-44", 'C001');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR003',"2024-03-04", 'C001');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR004',"2024-03-04", 'C004');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR005',"2024-04-12", 'C005');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR006',"2024-04-11", 'C006');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR007',"2024-04-08", 'C007');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR008',"2024-05-16", 'C007');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR009',"2024-05-11", 'C009');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR010',"2024-05-01", 'C010');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR011',"2024-05-04", 'C011');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR012',"2024-05-04", 'C011');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR013',"2024-05-17", 'C013');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR014',"2024-05-13", 'C013');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR015',"2024-05-30", 'C013');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR016',"2024-05-02", 'C016');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR017',"2024-05-08", 'C017');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR018',"2024-06-14", 'C018');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR019',"2024-06-14", 'C019');
INSERT INTO Orders (OrderID, OrderDate, CustID) VALUES ('OR020',"2024-06-14", 'C020');

#*********************************************************************************************************************************************************************

INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC001', 'Beverages', 'Various types of drinks including soft drinks, juices, and teas.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC002', 'Dairy Products', 'Milk, cheese, yogurt, and other dairy-based products.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC003', 'Bakery Goods', 'Bread, cakes, pastries, and other baked goods.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC004', 'Snacks', 'Chips, nuts, popcorn, and other snack items.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC005', 'Frozen Foods', 'Frozen meals, vegetables, fruits, and desserts.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC006', 'Canned Goods', 'Canned soups, vegetables, fruits, and other preserved foods.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC007', 'Condiments', 'Sauces, dressings, spices, and other flavor enhancers.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC008', 'Pasta & Rice', 'Various types of pasta, rice, and grains.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC009', 'Breakfast Foods', 'Cereals, oatmeal, pancake mix, and other breakfast items.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC010', 'Meat & Poultry', 'Beef, chicken, pork, and other meat products.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC011', 'Seafood', 'Fish, shrimp, crab, and other seafood options.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC012', 'Produce', 'Fresh fruits and vegetables.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC013', 'Health & Beauty', 'Personal care products such as shampoo, soap, and skincare items.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC014', 'Cleaning Supplies', 'Cleaning agents, detergents, and household cleaning products.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC015', 'Pet Supplies', 'Pet food, toys, and accessories for pets.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC016', 'Baby Products', 'Diapers, baby food, and other items for infants and toddlers.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC017', 'Household Items', 'Miscellaneous household items such as batteries, light bulbs, and tools.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC018', 'Baking Supplies', 'Flour, sugar, baking powder, and other baking essentials.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC019', 'Spices & Herbs', 'A variety of spices and herbs for cooking and seasoning.');
INSERT INTO Item_Category (CategoryID, CategoryName, Description) VALUES ('IC020', 'Organic Foods', 'Organic fruits, vegetables, and other food items produced without synthetic pesticides or fertilizers.');



#*********************************************************************************************************************************************************************

INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I001', 'Organic Apples', 50, 2085.46, 'IC020');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I002', 'Whole Milk', 100, 488.25, 'IC002');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I003', 'Wheat Bread', 200, 189.03, 'IC003');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I004', 'Orange Juice', 150, 429.62, 'IC001');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I005', 'Cheddar Cheese', 75, 3530.90, 'IC002');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I006', 'Potato Chips', 300, 150.00, 'IC004');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I007', 'Frozen Pizza', 120, 1200.00, 'IC005');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I008', 'Canned Tuna', 180, 300.00, 'IC006'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I009', 'Ketchup', 210, 300.00, 'IC007'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I010', 'Spaghetti', 160, 400.00, 'IC008'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I011', 'Corn Flakes', 130, 600.00, 'IC009'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I012', 'Chicken Breasts', 110, 1500.00, 'IC010'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I013', 'Salmon Fillets', 90, 4000.00, 'IC011'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I014', 'Bananas', 250, 75.73, 'IC012');
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I015', 'Shampoo', 140, 700.00, 'IC013'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I016', 'Dish Soap', 220, 150.00, 'IC014'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I017', 'Cat Food', 170, 500.00, 'IC015'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I018', 'Diapers', 60, 1500.00, 'IC016'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I019', 'Paper Towels', 130, 200.00, 'IC017'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I020', 'Flour', 190, 100.00, 'IC018'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I021', 'Black Pepper', 200, 150.00, 'IC019'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I022', 'Mineral Water', 300, 50.00, 'IC001'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I023', 'Butter', 100, 500.00, 'IC002'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I024', 'Bagels', 150, 300.00, 'IC003'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I025', 'Chocolate Bars', 250, 100.00, 'IC004'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I026', 'Ice Cream', 180, 200.00, 'IC005'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I027', 'Canned Beans', 160, 80.00, 'IC006'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I028', 'Mayonnaise', 140, 120.00, 'IC007'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I029', 'Brown Rice', 130, 150.00, 'IC008'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I030', 'Oatmeal', 120, 200.00, 'IC009'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I031', 'Ground Beef', 100, 1200.00, 'IC010'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I032', 'Shrimp', 90, 2000.00, 'IC011'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I033', 'Carrots', 200, 150.00, 'IC012'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I034', 'Body Wash', 150, 400.00, 'IC013'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I035', 'Laundry Detergent', 180, 500.00, 'IC014'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I036', 'Dog Food', 170, 400.00, 'IC015'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I037', 'Baby Wipes', 60, 600.00, 'IC016'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I038', 'Trash Bags', 130, 150.00, 'IC017'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I039', 'Sugar', 190, 150.00, 'IC018'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I040', 'Salt', 200, 50.00, 'IC019'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I041', 'Almond Milk', 100, 700.00, 'IC001'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I042', 'Yogurt', 100, 300.00, 'IC002'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I043', 'Croissants', 150, 300.00, 'IC003'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I044', 'Pretzels', 250, 150.00, 'IC004'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I045', 'Frozen Vegetables', 180, 100.00, 'IC005'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I046', 'Canned Corn', 160, 150.00, 'IC006'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I047', 'Mustard', 140, 120.00, 'IC007'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I048', 'Quinoa', 130, 300.00, 'IC008'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I049', 'Granola', 120, 400.00, 'IC009'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I050', 'Pork Chops', 100, 1200.00, 'IC010'); 
INSERT INTO Item (ItemID, ItemName, Quantity, Price, CategoryID) VALUES ('I051', 'Lemonade', 200, 200.00, 'IC011'); 





#*********************************************************************************************************************************************************************
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR001', 'I001', 1, 0 ,3500);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR001', 'I002', 2, 0, 4250);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR001', 'I003', 3, 0, 5632);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR004', 'I004', 4, 0, 1240);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR005', 'I005', 5, 0, 2560);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR006', 'I006', 6, 0, 7896);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR006', 'I007', 7, 0, 2563);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR008', 'I008', 8, 0, 8960);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR009', 'I009', 9, 0, 7800);
INSERT INTO Order_Detail (OrderID, ItemID, OrderQty, Discount,TotalPrice) VALUES ('OR010', 'I010', 10, 0, 7800);

#*********************************************************************************************************************************************************************

SELECT * FROM customer;
SELECT * FROM Orders;
SELECT * FROM Item_Category;
SELECT * FROM Item;
SELECT * FROM Order_Detail;

desc customer;
desc Orders;
desc Item_Category;
desc Item;
desc Order_Detail;

#*********************************************************************************************************************************************************************
#*********************************************************************************************************************************************************************

CREATE TABLE login_data(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(30),
    Password VARCHAR(10)
);

INSERT INTO login_data (Email, Password) VALUES ('sanjaya@123.gmail.com', '1234abc');
INSERT INTO login_data (Email, Password) VALUES ('prasad@12.gmail.com', '12abcd');
INSERT INTO login_data (Email, Password) VALUES ('rajapaksha@1.gmail.com', '123456');

SELECT * FROM login_data;
desc login_data;