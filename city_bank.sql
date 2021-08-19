

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sanket', 'Ganesh', 2000, '2021-08-04 17:06:56'),
(2, 'Sanket', 'Abhi', 700, '2021-08-06 18:09:45'),
(3, 'Abhi', 'Guru', 900, '2021-08-10 13:35:23'),
(4, 'Sharvi', 'Ganesh', 1500, '2021-08-12 16:48:55'),
(5, 'Abhi', 'Niranjan', 4000, '2021-08-13 22:49:18'),
(6, 'Guru', 'Sanket', 5000, '2021-08-13 21:54:06'),
(7, 'Niranjan', 'Ganesh', 4000, '2021-08-14 12:02:40'),
(8, 'Abhi', 'Sanket', 5000, '2021-08-15 09:12:24');



CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sanket', 'sanketr01@gmail.com', 50000),
(2, 'Ganesh', 'ganesh18@gmail.com', 30000),
(3, 'Abhi', 'abhi24@gmail.com', 49900),
(4, 'Guru', 'Guru49@gmail.com', 35000),
(5, 'Niranjan', 'niranjan00@gmail.com', 40000),
(6, 'Saurav', 'saurav08@gmail.com', 20990),
(7, 'Sakshi', 'sakshi30@gmail.com', 52000),
(8, 'Rohit', 'rohit47@gmail.com', 10100),
(9, 'Vaibhav', 'vaib38@gmail.com', 65000),
(10, 'Nikhil', 'nik21@gmail.com', 30001);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;