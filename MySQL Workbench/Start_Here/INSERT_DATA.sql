USE LittleLemonDB;

INSERT INTO Customer(CustomerID, FirstName, LastName, PhoneNumber)
VALUES ('1', 'Laney', 'Fadden', '366-055-6861'),
	('2', 'Giacopo', 'Bramich', '761-353-3686'),
	('3', 'Lia', 'Bonar', '351-876-6434'),
	('4', 'Merrill', 'Baudon', '917-873-2834'),
	('5', 'Tasia', 'Fautly', '114-927-9232'),
	('6', 'Angel', 'Veschambre', '709-111-5581'),
	('7', 'Sheilah', 'Maestro', '076-341-4032'),
	('8', 'Audie', 'Willcocks', '271-800-4185'),
	('9', 'Mart', 'Malsher', '052-896-9931'),
	('10', 'Magdalen', 'Lacheze', '663-282-0481'),
	('11', 'Margarita', 'Mancktelow', '582-699-1221'),
	('12', 'Ashil', 'Brogini', '057-013-1975'),
	('13', 'Arthur', 'Mathewson', '599-688-0366'),
	('14', 'Ennis', 'Dungate', '795-390-3011');


INSERT INTO Address(AddressID, CustomerID, Street, City, State, Zip)
VALUES ('1', '1', '1769 IVAR AVE', 'Los Angeles', 'CA', '90028'),
	('2', '1', '260 6TH AVE', 'Los Angeles', 'CA', '90291'),
	('3', '2', '8802 BELFORD AVE', 'Los Angeles', 'CA', '90045'),
	('4', '2', '4610 MAUBERT AVE', 'Los Angeles', 'CA', '90027'),
	('5', '3', '8802 BELFORD AVE', 'Los Angeles', 'CA', '90045'),
	('6', '4', '8320 CHELSEA LANE', 'Los Angeles', 'CA', '91304'),
	('7', '4', '2031 CHEREMOYA AVE', 'Los Angeles', 'CA', '90068'),
	('8', '4', '9039 CRESTA DR', 'Los Angeles', 'CA', '90035'),
	('9', '5', '5500 FORTUNA ST', 'Los Angeles', 'CA', '90011'),
	('10', '6', '5821 YOLANDA AVE', 'Los Angeles', 'CA', '91356'),
	('11', '7', '11103 RENAISSANCE DR', 'Los Angeles', 'CA', '91042'),
	('12', '8', '8484 CRESCENT DR', 'Los Angeles', 'CA', '90046'),
	('13', '9', '7140 RANCHITO AVE', 'Los Angeles', 'CA', '91405'),
	('14', '9', '11079 RENAISSANCE DR', 'Los Angeles', 'CA', '91042'),
	('15', '10', '7050 ASMAN AVE', 'Los Angeles', 'CA', '91307'),
	('16', '11', '7927 ORION AVE', 'Los Angeles', 'CA', '91406'),
	('17', '12', '10911 LINDBROOK DR', 'Los Angeles', 'CA', '90024'),
	('18', '13', '1477 BLUE JAY WAY', 'Los Angeles', 'CA', '90069'),
	('19', '14', '635 ALMA REAL DR', 'Los Angeles', 'CA', '90272'),
	('20', '14', '5390 LINCOLN BLVD', 'Los Angeles', 'CA', '90094');


INSERT INTO Orders(OrderID, CustomerID, OrderDate, TotalItems, TotalCost)
VALUES ('1', '7', '2020-06-15', '9', '140.00'),
	('2', '12', '2020-08-25', '2', '30.00'),
	('3', '4', '2021-08-17', '11', '140.00'),
	('4', '1', '2021-08-14', '1', '5.00'),
	('5', '7', '2020-12-20', '3', '68.00'),
	('6', '1', '2020-03-01', '3', '48.00'),
	('7', '7', '2021-10-04', '3', '48.00'),
	('8', '8', '2021-10-09', '1', '24.00'),
	('9', '12', '2021-12-27', '18', '170.00'),
	('10', '14', '2020-03-05', '2', '38.00'),
	('11', '12', '2019-07-20', '2', '46.00'),
	('12', '3', '2022-06-26', '3', '12.00'),
	('13', '3', '2020-12-03', '3', '36.00'),
	('14', '7', '2022-04-13', '4', '26.00');


INSERT INTO Cuisine(CuisineID, CuisineName)
VALUES ('1', 'Greek'),
	('2', 'Italian'),
	('3', 'Turkish');


INSERT INTO menucategory(CategoryID, CategoryName)
VALUES ('1', 'Drinks'),
	('2', 'Starter'),
	('3', 'Course'),
	('4', 'Side'),
	('5', 'Dessert');


INSERT INTO menu_item(MenuItemID, CuisineID, CategoryID, Name, Price)
VALUES ('1', '1', '1', 'Ankara White Wine', '25.00'),
	('2', '3', '1', 'Athens White wine', '23.00'),
	('3', '1', '1', 'Corfu Red Wine', '14.00'),
	('4', '2', '1', 'Italian Coffee', '12.00'),
	('5', '2', '1', 'Roma Red wine', '12.00'),
	('6', '3', '1', 'Turkish Coffee', '19.00'),
	('7', '1', '2', 'Falafel', '11.00'),
	('8', '3', '2', 'Flatbread', '5.00'),
	('9', '1', '2', 'Hummus', '17.00'),
	('10', '2', '2', 'Minestrone', '5.00'),
	('11', '2', '2', 'Olives', '19.00'),
	('12', '2', '2', 'Tomato bread', '5.00'),
	('13', '3', '3', 'Bean soup', '10.00'),
	('14', '2', '3', 'Carbonara', '16.00'),
	('15', '1', '3', 'Greek salad', '24.00'),
	('16', '3', '3', 'Kabasa', '23.00'),
	('17', '2', '3', 'Pizza', '22.00'),
	('18', '1', '3', 'Shwarma', '13.00'),
	('19', '2', '4', 'Bruschetta', '12.00'),
	('20', '2', '4', 'Focaccia', '7.00'),
	('21', '3', '4', 'Fries', '18.00'),
	('22', '2', '4', 'Meatballs', '15.00'),
	('23', '3', '4', 'Potato salad', '4.00'),
	('24', '1', '4', 'Tapas', '23.00'),
	('25', '1', '5', 'Affogato', '6.00'),
	('26', '3', '5', 'Baklava', '16.00'),
	('27', '2', '5', 'Cheesecake', '24.00'),
	('28', '1', '5', 'Greek yoghurt', '22.00'),
	('29', '2', '5', 'Ice cream', '6.00'),
	('30', '3', '5', 'Turkish yoghurt', '20.00');


INSERT INTO orderitem(OrderID, MenuItemID, Quantity)
VALUES ('1', '12', '3'),
	('1', '21', '1'),
	('1', '1', '3'),
	('1', '14', '2'),
	('2', '22', '2'),
	('5', '2', '2'),
	('5', '28', '1'),
	('6', '26', '3'),
	('7', '14', '2'),
	('7', '26', '1'),
	('8', '15', '1'),
	('10', '6', '2'),
	('11', '16', '2'),
	('12', '23', '3'),
	('13', '4', '3'),
	('14', '10', '1'),
	('14', '20', '3');
    
    
INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID)
VALUES ('1', '2022-10-10', '5', '1'),
	('2', '2022-11-12', '3', '1'),
	('3', '2022-10-11', '2', '2'),
	('4', '2022-10-13', '2', '1');


    

