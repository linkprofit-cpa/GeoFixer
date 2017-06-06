-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 06 2017 г., 11:57
-- Версия сервера: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fias`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fias_address_object`
--

CREATE TABLE `fias_address_object` (
  `id` char(36) NOT NULL COMMENT 'Идентификационный код записи',
  `address_id` char(36) DEFAULT NULL COMMENT 'Идентификационный код адресного объекта',
  `parent_id` char(36) NOT NULL COMMENT 'Идентификационный код родительского адресного объекта',
  `address_level` int(11) DEFAULT NULL COMMENT 'Уровень объекта по ФИАС',
  `title` varchar(255) DEFAULT NULL COMMENT 'Наименование объекта',
  `postal_code` int(11) DEFAULT NULL COMMENT 'Почтовый индекс',
  `region_code` varchar(255) DEFAULT NULL COMMENT 'Регион',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Ул., пр. и так далее',
  `area_code` varchar(255) DEFAULT NULL COMMENT 'Код района',
  `auto_code` varchar(255) DEFAULT NULL COMMENT 'Код автономии',
  `city_code` varchar(255) DEFAULT NULL COMMENT 'Код города',
  `ctar_code` varchar(255) DEFAULT NULL COMMENT 'Код внутригородского района',
  `place_code` varchar(255) DEFAULT NULL COMMENT 'Код населённого пункта',
  `street_code` varchar(255) DEFAULT NULL COMMENT 'Код улицы',
  `extr_code` varchar(255) DEFAULT NULL COMMENT 'Код дополнительного адресообразующего элемента',
  `sext_code` varchar(255) DEFAULT NULL COMMENT 'Код подчиненного дополнительного адресообразующего элемента',
  `plain_code` varchar(255) DEFAULT NULL COMMENT 'Код адресного объекта из КЛАДР 4.0 одной строкой без признака актуальности (последних двух ',
  `code` varchar(255) DEFAULT NULL COMMENT 'Код адресного объекта одной строкой с признаком актуальности из КЛАДР 4.0',
  `okato` varchar(255) DEFAULT NULL COMMENT 'Код по справочнику ОКАТО',
  `oktmo` varchar(255) DEFAULT NULL COMMENT 'Код по справочнику ОКТМО',
  `ifnsul` int(11) DEFAULT NULL COMMENT 'Код ИФНС ЮЛ',
  `ifnsfl` int(11) DEFAULT NULL COMMENT 'Код ИФНС ФЛ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fias_address_object_level`
--

CREATE TABLE `fias_address_object_level` (
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Описание уровня',
  `short_title` varchar(255) DEFAULT NULL COMMENT 'Короткое обозначение',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Код уровня',
  `level` int(11) DEFAULT NULL COMMENT 'Уровень адресного объекта'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fias_address_object_level`
--

INSERT INTO `fias_address_object_level` (`title`, `short_title`, `code`, `level`) VALUES
('', '', '', 0),
('Аал', 'аал', '601', 6),
('Аал', 'аал', '6534', 65),
('Аал', 'аал', '9132', 91),
('Абонентский ящик', 'а/я', '6532', 65),
('Абонентский ящик', 'а/я', '772', 7),
('Абонентский ящик', 'а/я', '9172', 91),
('Автодорога', 'автодорога', '645', 6),
('Автономная область', 'Аобл', '102', 1),
('Автономная область', 'а.обл.', '109', 1),
('Автономный округ', 'АО', '101', 1),
('Автономный округ', 'а.окр.', '110', 1),
('Автономный округ', 'АО', '201', 2),
('Автономный округ', 'АО', '305', 3),
('Аллея', 'ал.', '6535', 65),
('Аллея', 'аллея', '701', 7),
('Аллея', 'ал.', '765', 7),
('Аллея', 'аллея', '9101', 91),
('Арбан', 'арбан', '640', 6),
('Арбан', 'арбан', '6536', 65),
('Арбан', 'арбан', '9160', 91),
('Аул', 'аул', '602', 6),
('Аул', 'аул', '6537', 65),
('Аул', 'аул', '9133', 91),
('Балка', 'балка', '6533', 65),
('Балка', 'балка', '781', 7),
('Берег', 'б-г', '6501', 65),
('Берег', 'берег', '773', 7),
('Берег', 'берег', '9173', 91),
('Бугор', 'бугор', '776', 7),
('Бугор', 'бугор', '9176', 91),
('Бульвар', 'б-р', '6538', 65),
('Бульвар', 'б-р', '702', 7),
('Бульвар', 'б-р', '9102', 91),
('Бухта', 'бухта', '782', 7),
('Вал', 'вал', '6502', 65),
('Вал', 'вал', '768', 7),
('Вал', 'вал', '9168', 91),
('Взвоз', 'взв.', '791', 7),
('Владение', 'влд.', '802', 8),
('Внутригородская территория', 'вн.тер. г.', '307', 3),
('Внутригородской район', 'вн.р-н', '3501', 35),
('Волость', 'волость', '410', 4),
('Волость', 'волость', '603', 6),
('Въезд', 'взд.', '6539', 65),
('Въезд', 'въезд', '703', 7),
('Въезд', 'въезд', '9103', 91),
('Выселки(ок)', 'высел', '604', 6),
('Выселки(ок)', 'высел', '9134', 91),
('Гараж', 'г-ж', '901', 9),
('Гаражно-строит-ный кооператив', 'гск', '763', 7),
('Гаражно-строит-ный кооператив', 'гск', '9163', 91),
('Гаражно-строительный кооп.', 'гск', '6579', 65),
('Гаражно-строительный кооп.', 'гск', '9004', 90),
('Город', 'г', '103', 1),
('Город', 'г.', '111', 1),
('Город', 'г', '401', 4),
('Город', 'г.', '418', 4),
('Город', 'г', '605', 6),
('Город федерального значения', 'г.ф.з.', '112', 1),
('Городок', 'городок', '636', 6),
('Городок', 'г-к', '6540', 65),
('Городок', 'городок', '735', 7),
('Городок', 'городок', '9135', 91),
('Городское поселение', 'г. п.', '3502', 35),
('Городской округ', 'г.о.', '308', 3),
('городской поселок', 'гп', '649', 6),
('Дачное неком-е партнерство', 'днп', '6580', 65),
('Дачное неком-е партнерство', 'днп', '787', 7),
('Дачное неком-е партнерство', 'днп', '9010', 90),
('Дачный поселок', 'дп', '405', 4),
('Дачный поселок', 'дп', '607', 6),
('Деревня', 'д', '606', 6),
('Деревня', 'д.', '6541', 65),
('Деревня', 'д', '736', 7),
('Деревня', 'д', '9136', 91),
('Дом', 'ДОМ', '801', 8),
('Дом', 'д.', '803', 8),
('Домовладение', 'двлд.', '804', 8),
('Дорога', 'дор.', '6542', 65),
('Дорога', 'дор', '704', 7),
('Дорога', 'дор', '9104', 91),
('ж/д останов. (обгонный) пункт', 'ж/д_оп', '610', 6),
('ж/д останов. (обгонный) пункт', 'ж/д_оп', '739', 7),
('ж/д останов. (обгонный) пункт', 'ж/д_оп', '9139', 91),
('Железнодорожная будка', 'ж/д_будка', '608', 6),
('Железнодорожная будка', 'ж/д б-ка', '6543', 65),
('Железнодорожная будка', 'ж/д_будка', '737', 7),
('Железнодорожная будка', 'ж/д_будка', '9137', 91),
('Железнодорожная казарма', 'ж/д_казарм', '609', 6),
('Железнодорожная казарма', 'ж/д к-ма', '6544', 65),
('Железнодорожная казарма', 'ж/д_казарм', '738', 7),
('Железнодорожная казарма', 'ж/д_казарм', '9138', 91),
('Железнодорожная платформа', 'ж/д_платф', '638', 6),
('Железнодорожная платформа', 'ж/д пл-ма', '6545', 65),
('Железнодорожная платформа', 'ж/д_платф', '759', 7),
('Железнодорожная платформа', 'ж/д_платф', '9159', 91),
('Железнодорожная станция', 'ж/д_ст', '613', 6),
('Железнодорожная станция', 'ж/д ст.', '6547', 65),
('Железнодорожная станция', 'ж/д_ст', '742', 7),
('Железнодорожная станция', 'ж/д_ст', '9142', 91),
('Железнодорожный пост', 'ж/д_пост', '611', 6),
('Железнодорожный пост', 'ж/д_пост', '740', 7),
('Железнодорожный пост', 'ж/д_пост', '9140', 91),
('Железнодорожный разъезд', 'ж/д_рзд', '612', 6),
('Железнодорожный разъезд', 'ж/д рзд.', '6546', 65),
('Железнодорожный разъезд', 'ж/д_рзд', '741', 7),
('Железнодорожный разъезд', 'ж/д_рзд', '9141', 91),
('Животноводческая точка', 'жт', '705', 7),
('Животноводческая точка', 'жт', '9105', 91),
('Жилая зона', 'жилзона', '647', 6),
('Жилой район', 'жилрайон', '646', 6),
('Жилой район', 'ж/р', '6503', 65),
('Заезд', 'ззд.', '6548', 65),
('Заезд', 'заезд', '706', 7),
('Заезд', 'ззд.', '794', 7),
('Заезд', 'заезд', '9106', 91),
('Заимка', 'заимка', '614', 6),
('Здание', 'зд.', '805', 8),
('Земельный участок', 'з/у', '7501', 75),
('Зона', 'зона', '777', 7),
('Зона', 'зона', '9177', 91),
('Зона (массив)', 'зона', '6504', 65),
('Казарма', 'казарма', '615', 6),
('Казарма', 'казарма', '743', 7),
('Казарма', 'казарма', '9143', 91),
('Канал', 'канал', '762', 7),
('Канал', 'канал', '9162', 91),
('Квартал', 'кв-л', '639', 6),
('Квартал', 'кв-л', '6505', 65),
('Квартал', 'кв-л', '707', 7),
('Квартал', 'кв-л', '9107', 91),
('Квартира', 'кв.', '902', 9),
('Километр', 'км', '6549', 65),
('Километр', 'км', '708', 7),
('Километр', 'км', '9108', 91),
('Кольцо', 'к-цо', '6551', 65),
('Кольцо', 'кольцо', '709', 7),
('Кольцо', 'к-цо', '795', 7),
('Кольцо', 'кольцо', '9109', 91),
('Комната', 'ком.', '903', 9),
('Кордон', 'кордон', '644', 6),
('Корпус', 'к.', '806', 8),
('Коса', 'коса', '6550', 65),
('Коса', 'коса', '767', 7),
('Коса', 'коса', '9167', 91),
('Котельная', 'кот.', '807', 8),
('Край', 'край', '104', 1),
('Курортный поселок', 'кп', '404', 4),
('Курортный поселок', 'кп', '616', 6),
('Леспромхоз', 'лпх', '642', 6),
('Линия', 'лн.', '6552', 65),
('Линия', 'линия', '710', 7),
('Линия', 'лн.', '796', 7),
('Линия', 'линия', '9110', 91),
('Магистраль', 'мгстр.', '797', 7),
('Массив', 'массив', '416', 4),
('Массив', 'массив', '648', 6),
('Маяк', 'маяк', '785', 7),
('Местечко', 'м', '617', 6),
('Местечко', 'м-ко', '6553', 65),
('Местечко', 'м', '744', 7),
('Местечко', 'м', '9144', 91),
('Местность', 'местность', '6581', 65),
('Местность', 'местность', '780', 7),
('Местность', 'местность', '9011', 90),
('Месторождение', 'месторожд.', '6588', 65),
('Микрорайон', 'мкр', '618', 6),
('Микрорайон', 'мкр.', '6506', 65),
('Микрорайон', 'мкр', '6582', 65),
('Микрорайон', 'мкр', '745', 7),
('Микрорайон', 'мкр', '9006', 90),
('Микрорайон', 'мкр', '9145', 91),
('Мост', 'мост', '770', 7),
('Мост', 'мост', '9170', 91),
('Муниципальный район', 'м.р-н', '309', 3),
('Набережная', 'наб.', '6554', 65),
('Набережная', 'наб', '711', 7),
('Набережная', 'наб.', '798', 7),
('Набережная', 'наб', '9111', 91),
('Населенный пункт', 'нп', '619', 6),
('Населенный пункт', 'нп', '746', 7),
('Населенный пункт', 'нп', '9146', 91),
('Некоммерческое партнерство', 'н/п', '6583', 65),
('Некоммерческое партнерство', 'н/п', '788', 7),
('Некоммерческое партнерство', 'н/п', '9009', 90),
('Область', 'обл', '105', 1),
('Область', 'обл.', '113', 1),
('Объект незав. строительства', 'ОНС', '808', 8),
('Округ', 'округ', '107', 1),
('Остров', 'остров', '620', 6),
('Остров', 'ост-в', '6507', 65),
('Остров', 'остров', '712', 7),
('Остров', 'остров', '9112', 91),
('Офис', 'офис', '904', 9),
('Павильон', 'пав.', '809', 8),
('Парк', 'парк', '6509', 65),
('Парк', 'парк', '713', 7),
('Парк', 'парк', '9113', 91),
('Переезд', 'пер-д', '6557', 65),
('Переезд', 'переезд', '715', 7),
('Переезд', 'пер-д', '783', 7),
('Переезд', 'переезд', '9115', 91),
('Переулок', 'пер.', '6556', 65),
('Переулок', 'пер', '714', 7),
('Переулок', 'пер.', '799', 7),
('Переулок', 'пер', '9114', 91),
('Планировочный район', 'п/р', '622', 6),
('Планировочный район', 'п/р', '750', 7),
('Планировочный район', 'п/р', '9150', 91),
('Платформа', 'платф.', '6510', 65),
('Платформа', 'платф', '747', 7),
('Платформа', 'платф', '9147', 91),
('Площадка', 'пл-ка', '6560', 65),
('Площадка', 'пл-ка', '717', 7),
('Площадка', 'пл-ка', '9117', 91),
('Площадь', 'пл.', '6559', 65),
('Площадь', 'пл', '716', 7),
('Площадь', 'пл', '9116', 91),
('Погост', 'погост', '643', 6),
('Погреб', 'п-б', '905', 9),
('Подвал', 'подв.', '906', 9),
('Полустанок', 'полустанок', '752', 7),
('Полустанок', 'полустанок', '9152', 91),
('Помещение', 'помещ.', '907', 9),
('Порт', 'порт', '6589', 65),
('Поселение', 'п', '306', 3),
('Поселение', 'пос.', '310', 3),
('Поселок', 'п', '417', 4),
('Поселок', 'п', '621', 6),
('Поселок', 'п.', '6555', 65),
('Поселок', 'п', '748', 7),
('Поселок', 'п', '9148', 91),
('Поселок городского типа', 'пгт', '402', 4),
('Поселок городского типа', 'пгт', '624', 6),
('Поселок и(при) станция(и)', 'п/ст', '623', 6),
('Поселок и(при) станция(и)', 'п/ст', '751', 7),
('Поселок и(при) станция(и)', 'п/ст', '9151', 91),
('Починок', 'починок', '625', 6),
('Починок', 'п-к', '6558', 65),
('Починок', 'починок', '9153', 91),
('Почтовое отделение', 'п/о', '411', 4),
('Почтовое отделение', 'п/о', '626', 6),
('Почтовое отделение', 'п/о', '749', 7),
('Почтовое отделение', 'п/о', '9149', 91),
('Проезд', 'пр-д', '6561', 65),
('Проезд', 'проезд', '718', 7),
('Проезд', 'пр-д', '732', 7),
('Проезд', 'проезд', '9118', 91),
('Промзона', 'промзона', '790', 7),
('Промышленная зона', 'промзона', '627', 6),
('Промышленная зона', 'промзона', '6584', 65),
('Промышленная зона', 'промзона', '9003', 90),
('Промышленный район', 'п/р', '6508', 65),
('Просек', 'пр-к', '6562', 65),
('Просек', 'просек', '720', 7),
('Просек', 'пр-к', '733', 7),
('Просек', 'просек', '9120', 91),
('Просека', 'пр-ка', '6563', 65),
('Просека', 'пр-ка', '734', 7),
('Просека', 'просека', '774', 7),
('Просека', 'просека', '9174', 91),
('Проселок', 'пр-лок', '6565', 65),
('Проселок', 'проселок', '721', 7),
('Проселок', 'пр-лок', '753', 7),
('Проселок', 'проселок', '9121', 91),
('Проспект', 'пр-кт', '6564', 65),
('Проспект', 'пр-кт', '719', 7),
('Проспект', 'пр-кт', '9119', 91),
('Проток', 'проток', '766', 7),
('Проток', 'проток', '9166', 91),
('Проулок', 'проул.', '6566', 65),
('Проулок', 'проулок', '722', 7),
('Проулок', 'проул.', '760', 7),
('Проулок', 'проулок', '9122', 91),
('Рабочий поселок', 'рп', '403', 4),
('Рабочий поселок', 'рп', '629', 6),
('Рабочий участок', 'раб.уч.', '908', 9),
('Разъезд', 'рзд', '628', 6),
('Разъезд', 'рзд.', '6567', 65),
('Разъезд', 'рзд', '754', 7),
('Разъезд', 'рзд.', '775', 7),
('Разъезд', 'рзд', '9154', 91),
('Район', 'р-н', '301', 3),
('Район', 'р-н', '503', 5),
('Район', 'р-н', '6511', 65),
('Республика', 'Респ', '106', 1),
('Республика', 'респ.', '114', 1),
('Ряд(ы)', 'ряд', '778', 7),
('Ряды', 'ряды', '771', 7),
('Ряды', 'ряды', '9171', 91),
('Сад', 'сад', '6512', 65),
('Сад', 'сад', '723', 7),
('Сад', 'сад', '9007', 90),
('Сад', 'сад', '9123', 91),
('Садовое неком-е товарищество', 'снт', '641', 6),
('Садовое неком-е товарищество', 'снт', '764', 7),
('Садовое неком-е товарищество', 'снт', '9164', 91),
('Садовое товарищество', 'снт', '6585', 65),
('Садовое товарищество', 'снт', '9002', 90),
('Село', 'с', '630', 6),
('Село', 'с.', '6568', 65),
('Село', 'с', '755', 7),
('Село', 'с', '9155', 91),
('Сельская администрация', 'с/а', '407', 4),
('Сельский округ', 'с/о', '409', 4),
('Сельское муницип.образование', 'с/мо', '415', 4),
('Сельское поселение', 'с.п.', '3503', 35),
('Сельское поселение', 'с/п', '414', 4),
('Сельсовет', 'с/с', '3504', 35),
('Сельсовет', 'с/с', '406', 4),
('Сквер', 'сквер', '6513', 65),
('Сквер', 'с-р', '6571', 65),
('Сквер', 'сквер', '724', 7),
('Сквер', 'с-р', '792', 7),
('Сквер', 'сквер', '9124', 91),
('Склад', 'скл.', '909', 9),
('Слобода', 'сл', '631', 6),
('Слобода', 'сл.', '6570', 65),
('Слобода', 'сл', '756', 7),
('Слобода', 'сл', '9156', 91),
('Сооружение', 'соор.', '810', 8),
('Спуск', 'с-к', '6569', 65),
('Спуск', 'спуск', '761', 7),
('Спуск', 'с-к', '786', 7),
('Спуск', 'спуск', '9161', 91),
('Станица', 'ст-ца', '633', 6),
('Станция', 'ст', '632', 6),
('Станция', 'ст.', '6572', 65),
('Станция', 'ст', '757', 7),
('Станция', 'ст', '9157', 91),
('Строение', 'стр.', '6573', 65),
('Строение', 'стр', '725', 7),
('Строение', 'стр.', '811', 8),
('Строение', 'стр', '9125', 91),
('Съезд', 'сзд.', '784', 7),
('Территория', 'тер', '303', 3),
('Территория', 'тер', '412', 4),
('Территория', 'тер', '502', 5),
('Территория', 'тер', '637', 6),
('Территория', 'тер.', '6514', 65),
('Территория', 'тер', '6586', 65),
('Территория', 'тер', '726', 7),
('Территория', 'тер', '9005', 90),
('Территория', 'тер', '9126', 91),
('Территория ГСК', 'тер. ГСК', '6515', 65),
('Территория ДНО', 'тер. ДНО', '6516', 65),
('Территория ДНП', 'тер. ДНП', '6517', 65),
('Территория ДНТ', 'тер. ДНТ', '6518', 65),
('Территория ДПК', 'тер. ДПК', '6519', 65),
('Территория ОНО', 'тер. ОНО', '6520', 65),
('Территория ОНП', 'тер. ОНП', '6521', 65),
('Территория ОНТ', 'тер. ОНТ', '6522', 65),
('Территория ОПК', 'тер. ОПК', '6523', 65),
('Территория СНО', 'тер. СНО', '6524', 65),
('Территория СНП', 'тер. СНП', '6525', 65),
('Территория СНТ', 'тер. СНТ', '6526', 65),
('Территория СПК', 'тер. СПК', '6527', 65),
('Территория ТСН', 'тер. ТСН', '6528', 65),
('Территория ФХ', 'тер.ф.х.', '6529', 65),
('тоннель', 'тоннель', '779', 7),
('Торговый зал', 'торг. зал', '910', 9),
('Тракт', 'тракт', '6574', 65),
('Тракт', 'тракт', '727', 7),
('Тракт', 'тракт', '9127', 91),
('Тупик', 'туп.', '6575', 65),
('Тупик', 'туп', '728', 7),
('Тупик', 'туп', '9128', 91),
('Улица', 'ул.', '6576', 65),
('Улица', 'ул', '729', 7),
('Улица', 'ул', '9129', 91),
('Улус', 'у', '302', 3),
('Улус', 'у.', '311', 3),
('Улус', 'у', '634', 6),
('Усадьба', 'ус.', '6530', 65),
('Участок', 'уч-к', '730', 7),
('Участок', 'уч-к', '9130', 91),
('Ферма', 'ферма', '769', 7),
('Ферма', 'ферма', '9169', 91),
('Фермерское хозяйство', 'ф/х', '6587', 65),
('Фермерское хозяйство', 'ф/х', '789', 7),
('Фермерское хозяйство', 'ф/х', '9008', 90),
('Хутор', 'х', '635', 6),
('Хутор', 'х.', '6577', 65),
('Хутор', 'х', '758', 7),
('Хутор', 'х', '9158', 91),
('Цех', 'цех', '911', 9),
('Чувашия', 'Чувашия', '108', 1),
('Шоссе', 'ш.', '6578', 65),
('Шоссе', 'ш', '731', 7),
('Шоссе', 'ш.', '793', 7),
('Шоссе', 'ш', '9131', 91),
('Юрты', 'ю.', '6531', 65);

-- --------------------------------------------------------

--
-- Структура таблицы `fias_house`
--

CREATE TABLE `fias_house` (
  `id` char(36) NOT NULL COMMENT 'Идентификационный код записи',
  `house_id` char(36) NOT NULL COMMENT 'Идентификационный код дома',
  `address_id` char(36) DEFAULT NULL COMMENT 'Идентификационный код адресного объекта',
  `number` varchar(255) DEFAULT NULL COMMENT 'Номер дома',
  `building` varchar(255) DEFAULT NULL COMMENT 'Корпус',
  `structure` varchar(255) DEFAULT NULL COMMENT 'Строение',
  `postal_code` varchar(255) DEFAULT NULL COMMENT 'Индекс',
  `oktmo` varchar(255) DEFAULT NULL COMMENT 'Код по справочнику ОКТМО',
  `okato` varchar(255) DEFAULT NULL COMMENT 'Код по справочнику ОКАТО',
  `ifnsul` int(11) DEFAULT NULL COMMENT 'Код ИФНС ЮЛ',
  `ifnsfl` int(11) DEFAULT NULL COMMENT 'Код ИФНС ФЛ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fias_region`
--

CREATE TABLE `fias_region` (
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Номер региона',
  `title` varchar(255) DEFAULT NULL COMMENT 'Название региона'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fias_region`
--

INSERT INTO `fias_region` (`code`, `title`) VALUES
('01', 'Республика Адыгея (Адыгея)'),
('02', 'Республика Башкортостан'),
('03', 'Республика Бурятия'),
('04', 'Республика Алтай'),
('05', 'Республика Дагестан'),
('06', 'Республика Ингушетия'),
('07', 'Кабардино-Балкарская Республика'),
('08', 'Республика Калмыкия'),
('09', 'Карачаево-Черкесская Республика'),
('10', 'Республика Карелия'),
('11', 'Республика Коми'),
('12', 'Республика Марий Эл'),
('13', 'Республика Мордовия'),
('14', 'Республика Саха (Якутия)'),
('15', 'Республика Северная Осетия - Алания'),
('16', 'Республика Татарстан (Татарстан)'),
('17', 'Республика Тыва'),
('18', 'Удмуртская Республика'),
('19', 'Республика Хакасия'),
('20', 'Чеченская Республика'),
('21', 'Чувашская Республика – Чувашия'),
('22', 'Алтайский край'),
('23', 'Краснодарский край'),
('24', 'Красноярский край'),
('25', 'Приморский край'),
('26', 'Ставропольский край'),
('27', 'Хабаровский край'),
('28', 'Амурская область'),
('29', 'Архангельская область'),
('30', 'Астраханская область'),
('31', 'Белгородская область'),
('32', 'Брянская область'),
('33', 'Владимирская область'),
('34', 'Волгоградская область'),
('35', 'Вологодская область'),
('36', 'Воронежская область'),
('37', 'Ивановская область'),
('38', 'Иркутская область'),
('39', 'Калининградская область'),
('40', 'Калужская область'),
('41', 'Камчатская область'),
('42', 'Кемеровская область'),
('43', 'Кировская область'),
('44', 'Костромская область'),
('45', 'Курганская область'),
('46', 'Курская область'),
('47', 'Ленинградская область'),
('48', 'Липецкая область'),
('49', 'Магаданская область'),
('50', 'Московская область'),
('51', 'Мурманская область'),
('52', 'Нижегородская область'),
('53', 'Новгородская область'),
('54', 'Новосибирская область'),
('55', 'Омская область'),
('56', 'Оренбургская область'),
('57', 'Орловская область'),
('58', 'Пензенская область'),
('59', 'Пермская область'),
('60', 'Псковская область'),
('61', 'Ростовская область'),
('62', 'Рязанская область'),
('63', 'Самарская область'),
('64', 'Саратовская область'),
('65', 'Сахалинская область'),
('66', 'Свердловская область'),
('67', 'Смоленская область'),
('68', 'Тамбовская область'),
('69', 'Тверская область'),
('70', 'Томская область'),
('71', 'Тульская область'),
('72', 'Тюменская область'),
('73', 'Ульяновская область'),
('74', 'Челябинская область'),
('75', 'Читинская область'),
('76', 'Ярославская область'),
('77', 'Г. Москва'),
('78', 'Г. Санкт-Петербург'),
('79', 'Еврейская автономная область'),
('80', 'Агинский Бурятский автономный округ'),
('81', 'Коми-Пермяцкий автономный округ'),
('82', 'Корякский автономный округ'),
('83', 'Ненецкий автономный округ'),
('84', 'Таймырский (Долгано-Ненецкий) автономный округ'),
('85', 'Усть-Ордынский Бурятский автономный округ'),
('86', 'Ханты-Мансийский автономный округ - Югра'),
('87', 'Чукотский автономный округ'),
('88', 'Эвенкийский автономный округ'),
('89', 'Ямало-Ненецкий автономный округ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fias_address_object`
--
ALTER TABLE `fias_address_object`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_id` (`address_id`),
  ADD KEY `region_code` (`region_code`),
  ADD KEY `address_object_parent_id_fkey_idx` (`parent_id`),
  ADD KEY `address_object_title_lower_idx` (`title`);

--
-- Индексы таблицы `fias_address_object_level`
--
ALTER TABLE `fias_address_object_level`
  ADD PRIMARY KEY (`title`,`code`);

--
-- Индексы таблицы `fias_house`
--
ALTER TABLE `fias_house`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_address_id_fkey_idx` (`address_id`);

--
-- Индексы таблицы `fias_region`
--
ALTER TABLE `fias_region`
  ADD PRIMARY KEY (`code`);



-- Ограничения внешнего ключа сохраненных таблиц
--
SET FOREIGN_KEY_CHECKS = 0;
--
-- Ограничения внешнего ключа таблицы `fias_address_object`
--
ALTER TABLE `fias_address_object`
  ADD CONSTRAINT `address_object_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `fias_address_object` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_region_code_ref_fias_region` FOREIGN KEY (`region_code`) REFERENCES `fias_region` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `fias_house`
--
ALTER TABLE `fias_house`
  ADD CONSTRAINT `houses_parent_id_fkey` FOREIGN KEY (`address_id`) REFERENCES `fias_address_object` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `fias_address_object` (`id`, `address_id`, `parent_id`, `address_level`, `title`, `postal_code`, `region_code`, `prefix`, `area_code`, `auto_code`, `city_code`, `ctar_code`, `place_code`, `street_code`, `extr_code`, `sext_code`, `plain_code`, `code`, `okato`, `oktmo`, `ifnsul`, `ifnsfl`) VALUES ('132989b8-cfb5-4573-bf19-4b3d9ac121af', '844a80d6-5e31-4017-b422-4d9c01e9942c', '', '1', 'Амурская', '675000', '28', 'обл', '000', '', '000', '000', '000', '0000', '0000', '000', '28000000000', '2800000000000', '10000000000', '', '2800', '2800');

INSERT INTO `fias_address_object` (`id`, `address_id`, `parent_id`, `address_level`, `title`, `postal_code`, `region_code`, `prefix`, `area_code`, `auto_code`, `city_code`, `ctar_code`, `place_code`, `street_code`, `extr_code`, `sext_code`, `plain_code`, `code`, `okato`, `oktmo`, `ifnsul`, `ifnsfl`) VALUES ('8b1fd007-eac4-4fbe-acaa-e11ad54f9a21', '8f41253d-6e3b-48a9-842a-25ba894bd093', '844a80d6-5e31-4017-b422-4d9c01e9942c', '4', 'Благовещенск', '0', '28', 'г', '000', '', '001', '000', '000', '0000', '0000', '000', '28000001000', '2800000100000', '10401000000', '10701000', '2801', '2801');

INSERT INTO `fias_address_object` (`id`, `address_id`, `parent_id`, `address_level`, `title`, `postal_code`, `region_code`, `prefix`, `area_code`, `auto_code`, `city_code`, `ctar_code`, `place_code`, `street_code`, `extr_code`, `sext_code`, `plain_code`, `code`, `okato`, `oktmo`, `ifnsul`, `ifnsfl`) VALUES ('0028d3ce-f157-4a78-9a03-390f5c25a4f6', 'a2072dc5-45be-4db3-ab13-10784ba8b2ae', 'de67dc49-b9ba-48a3-a4cc-c2ebfeca6c5e', '4', 'Грозный', '0', '20', 'г', '000', '', '001', '000', '000', '0000', '0000', '000', '20000001000', '2000000100000', '96401360000', '96701000', '0', '0');

INSERT INTO `fias_address_object` (`id`, `address_id`, `parent_id`, `address_level`, `title`, `postal_code`, `region_code`, `prefix`, `area_code`, `auto_code`, `city_code`, `ctar_code`, `place_code`, `street_code`, `extr_code`, `sext_code`, `plain_code`, `code`, `okato`, `oktmo`, `ifnsul`, `ifnsfl`) VALUES ('0213f2c8-75a5-43e1-b26d-1c472b6e983d', '3e0d1213-1212-4f87-bdd3-5f8ef6f6473e', '8f41253d-6e3b-48a9-842a-25ba894bd093', '7', 'Амурская', '0', '28', 'ул', '000', '', '001', '000', '000', '0002', '0000', '000', '280000010000002', '28000001000000200', '10401000000', '10701000', '2801', '2801');

INSERT INTO `fias_house` (`id`, `house_id`, `address_id`, `number`, `building`, `structure`, `postal_code`, `oktmo`, `okato`, `ifnsul`, `ifnsfl`) VALUES ('0f35c507-cc2c-4898-8447-96d601bbcb12', '2d5410f7-d663-4989-b185-6545a1601297', '17c1f81e-e29a-4708-945b-f0325f97360e', '116', 'Ю', '', '452040', '80612410101', '80212810001', '269', '269');

INSERT INTO `fias_address_object` (`id`, `address_id`, `parent_id`, `address_level`, `title`, `postal_code`, `region_code`, `prefix`, `area_code`, `auto_code`, `city_code`, `ctar_code`, `place_code`, `street_code`, `extr_code`, `sext_code`, `plain_code`, `code`, `okato`, `oktmo`, `ifnsul`, `ifnsfl`) VALUES ('b48037d5-a39b-4d1f-bef3-82b4c8e6948a', '260c545f-883c-440a-852c-c39a65fe4104', '30327ea2-ea94-48bf-b886-56b1c5e0dbdf', '4', 'Сковородино', '0', '28', 'г', '017', '', '001', '000', '000', '0000', '0000', '000', '28017001000', '2801700100000', '10249501000', '10649101', '2808', '2808');

INSERT INTO `fias_house` (`id`, `house_id`, `address_id`, `number`, `building`, `structure`, `postal_code`, `oktmo`, `okato`, `ifnsul`, `ifnsfl`) VALUES ('06ba46da-ca07-498c-8cff-f27749b33fcf', '06ba46da-ca07-498c-8cff-f27749b33fcf', '3e0d1213-1212-4f87-bdd3-5f8ef6f6473e', '230/5', '', '', '675000', '10701000', '10401000000', '2801', '2801');

INSERT INTO `fias_house` (`id`, `house_id`, `address_id`, `number`, `building`, `structure`, `postal_code`, `oktmo`, `okato`, `ifnsul`, `ifnsfl`) VALUES ('05f9a72c-da04-41a1-908c-140e7ed3b29f', '05f9a72c-da04-41a1-908c-140e7ed3b29f', '3e0d1213-1212-4f87-bdd3-5f8ef6f6473e', '261', '', '', '675000', '10701000', '10401000000', '2801', '2801')

SET FOREIGN_KEY_CHECKS = 1;
--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
