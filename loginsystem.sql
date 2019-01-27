-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 27 2019 г., 18:07
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loginsystem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_last` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_uid` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pwd` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'Dmitriy', 'Zhukov', 'dmitriyzhukov@mail.ru', 'DZhukov', '$2y$10$G/MDCrzrRRfIGHKciI8LAuLuerWuhvsb8YiGil1yNXl0xYqlnX7fS'),
(2, 'Maria', 'Novikova', 'marianovikova@mail.ru', 'MNovikova', '$2y$10$8OqR5XBYcFsr1/B24dslSuo.FSV6HPSBYjr.Y5NI4puwL9ZNpeMRK'),
(3, 'Lana', 'Mailta', 'lanamailta@mail.ru', 'LMailta', '$2y$10$z/i98o9j9ekpsjX.4.bWIe9WEv/5Kmj86Bo/Fj8khfT/axYxPW4Ty'),
(4, 'Izma', 'Daruya', 'izmadaruya@mail.ru', 'IDaruya', '$2y$10$EYtd9OTuK3tOnHE7xaPQ5eoTMYQNRGYIMeeaSZynhC.bEQeQv1X2G'),
(5, 'Rada', 'Navka', 'radanavka@mail.ru', 'RNavka', '$2y$10$WB48ermS/pW/xLj8IMGvyuhCIfNJMtklIF7GeLbixoD.gO18PEFQ2'),
(6, 'Natalia', 'Kuzminishna', 'kuzminishna@mail.ru', 'Kuzma', '$2y$10$Ay8N4az8j46vXOjVDwxAcOZvmGV5Eo02ZUaO5.N9fa2B42jpBxFY.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
