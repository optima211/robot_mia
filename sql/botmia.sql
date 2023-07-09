-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 09 2023 г., 12:09
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `botmia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clicks`
--

CREATE TABLE `clicks` (
  `id` int NOT NULL,
  `server_id` int NOT NULL,
  `path` text,
  `search` text,
  `date_click` datetime DEFAULT NULL,
  `cursor_x` float DEFAULT NULL,
  `cursor_y` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `clicks`
--

INSERT INTO `clicks` (`id`, `server_id`, `path`, `search`, `date_click`, `cursor_x`, `cursor_y`) VALUES
(41, 1, '/miabotclient/index.html', '?_ijt=i9etqra9c29j9sr0ca2pbasr9q', '2023-07-09 14:30:21', 704, 1614),
(42, 1, '/miabotclient/index.html', '?_ijt=i9etqra9c29j9sr0ca2pbasr9q', '2023-07-09 14:34:29', 289, 288),
(43, 1, '/miabotclient/index.html', '?_ijt=i9etqra9c29j9sr0ca2pbasr9q', '2023-07-09 14:34:30', 289, 288),
(44, 1, '/miabotclient/index.html', '?_ijt=i9etqra9c29j9sr0ca2pbasr9q', '2023-07-09 14:34:31', 435, 287);

-- --------------------------------------------------------

--
-- Структура таблицы `servers`
--

CREATE TABLE `servers` (
  `id` int NOT NULL,
  `hostname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_update` datetime NOT NULL,
  `date_add` datetime NOT NULL,
  `delete_flag` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `servers`
--

INSERT INTO `servers` (`id`, `hostname`, `date_update`, `date_add`, `delete_flag`) VALUES
(1, 'localhost', '2023-07-08 00:00:00', '2023-07-08 00:00:00', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
