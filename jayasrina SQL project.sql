create database movie;
use movie;
SELECT * FROM movie.movie_booking1;
SELECT Title, Genre FROM movie.movie_booking1;
SELECT DISTINCT Genre FROM movie.movie_booking1;
SELECT * FROM movie.movie_booking1 WHERE ReleaseDate BETWEEN '2023-01-01' and '2024-01-01';
SELECT * FROM movie.movie_booking1 ORDER BY ReleaseDate ASC;
SELECT * FROM movie.cusbooking4 WHERE City = 'Chennai';
SELECT * FROM movie.cusbooking4 WHERE Name LIKE 'C%';
SELECT * FROM movie.booking5 WHERE SeatsBooked > 3;
SELECT * FROM movie.booking5 ORDER BY BookingDate DESC;
SELECT CustomerID, SUM(SeatsBooked) AS TotalSeats FROM movie.booking5 GROUP BY CustomerID;
SELECT ShowID, COUNT(*) AS BookingCount FROM movie.booking5 GROUP BY ShowID;
SELECT CustomerID, COUNT(*) AS ShowCount FROM movie.booking5 GROUP BY CustomerID HAVING COUNT(*) > 2;
SELECT ShowID, SUM(SeatsBooked) AS TotalSeats FROM movie.booking5 GROUP BY ShowID HAVING SUM(SeatsBooked) > 10;
SELECT * FROM movie.paymentbooking06 where Status = 'Pending';
DELETE FROM movie.paymentbooking06 WHERE Status = 'Pending' AND PaymentDate < STR_TO_DATE('2024-01-01', '%Y-%m-%d');
SELECT * FROM movie.cusbooking4 LIMIT 5;
SELECT * FROM movie.cusbooking4 LIMIT 5 OFFSET 5;
SELECT CustomerID, BookingDate, COUNT(DISTINCT ShowID)  FROM movie.booking5 GROUP BY CustomerID, BookingDate HAVING COUNT(DISTINCT ShowID) > 1;
SELECT DISTINCT CustomerID FROM movie.booking5  WHERE ShowID IN ( SELECT ShowID FROM movie.showbooking3  WHERE TicketPrice > 400 );
SELECT c.Name, b.BookingID, b.SeatsBooked, b.BookingDate FROM movie.cusbooking4 c INNER JOIN movie.booking5 b ON c.CustomerID = b.CustomerID;
SELECT s.ShowID, s.ShowDate, s.TicketPrice, m.Title FROM movie.showsbooking3  s LEFT JOIN movie.movie_booking1 m ON s.MovieID = m.MovieID; 
SELECT b.BookingID, b.CustomerID, p.PaymentID, p.Amount, p.Status FROM movie.booking5 b RIGHT JOIN movie.paymentbooking06 p ON b.BookingID = p.BookingID;
SELECT s.ShowID, m.Title AS MovieTitle, t.Name , s.ShowDate FROM movie.showbooking5 s INNER JOIN movie.movie_booking1 m ON s.MovieID = m.MovieID INNER JOIN movie.threaterbooking2  t ON s.TheatreID = t.TheatreID;


