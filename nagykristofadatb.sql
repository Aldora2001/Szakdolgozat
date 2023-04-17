-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2019. Már 08. 10:47
-- Kiszolgáló verziója: 10.1.19-MariaDB
-- PHP verzió: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `nagykristofadatb`
--
CREATE DATABASE IF NOT EXISTS `nagykristofadatb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `nagykristofadatb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kedvencek`
--

CREATE TABLE `kedvencek` (
  `kedvencek_id` int(11) NOT NULL,
  `kedvencek_szemely_id` int(11) NOT NULL,
  `kedvencek_tanulnivalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kedvencek`
--

INSERT INTO `kedvencek` (`kedvencek_id`, `kedvencek_szemely_id`, `kedvencek_tanulnivalo_id`) VALUES
(130, 36, 16);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `keresek`
--

CREATE TABLE `keresek` (
  `keresek_id` int(11) NOT NULL,
  `keresek_szoveg` text COLLATE utf8_hungarian_ci NOT NULL,
  `keresek_datum` datetime NOT NULL,
  `keresek_szemely_id` int(11) NOT NULL,
  `keresek_kinek` int(11) NOT NULL,
  `keresek_marlatta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `keresek`
--

INSERT INTO `keresek` (`keresek_id`, `keresek_szoveg`, `keresek_datum`, `keresek_szemely_id`, `keresek_kinek`, `keresek_marlatta`) VALUES
(130, 'Helló felhasználó! ', '2019-02-06 11:15:37', 37, 35, 1),
(131, 'Szia Pista!', '2019-02-06 11:15:54', 37, 36, 1),
(132, 'Hello admin! Felhasznalo vagyok!', '2019-02-06 11:25:50', 35, 37, 1),
(133, 'Hello admin! Pista vagyok!', '2019-02-06 11:26:12', 36, 37, 1),
(135, 'Hello admin!', '2019-02-08 09:59:43', 36, 37, 1),
(136, '0-ás komment!', '2019-02-08 10:22:36', 36, 37, 1),
(137, '1-es komment!', '2019-02-08 10:23:44', 35, 37, 1),
(166, 'dasease', '2019-02-13 11:46:31', 37, 38, 1),
(179, 'dsaesa', '2019-02-15 09:04:19', 37, 38, 0),
(180, 'hello', '2019-02-15 09:18:26', 36, 37, 1),
(181, 'HEy', '2019-02-17 13:39:32', 36, 37, 1),
(183, 'Hello', '2019-03-04 20:56:32', 37, 36, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemely`
--

CREATE TABLE `szemely` (
  `szemely_id` int(11) NOT NULL,
  `szemely_felh` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szemely_jelszo` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szemely_rang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szemely`
--

INSERT INTO `szemely` (`szemely_id`, `szemely_felh`, `szemely_jelszo`, `szemely_rang`) VALUES
(35, 'felhasznalo', 'ae584fad1aaa7e6dd965d2147b7683fc', 0),
(36, 'pista', '47c3da0dc1d88b7721e3905d8a4b5f76', 0),
(37, 'kristof', 'ade757e059739b0418adfb65f985a5d1', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanulnivalo`
--

CREATE TABLE `tanulnivalo` (
  `tanulnivalo_id` int(11) NOT NULL,
  `tanulnivalo_nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tanulnivalo_tartalom` varchar(5000) COLLATE utf8_hungarian_ci NOT NULL,
  `tanulnivalo_kep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tanulnivalo_datum` datetime NOT NULL,
  `tanulnivalo_tipus` varchar(11) COLLATE utf8_hungarian_ci NOT NULL,
  `tanulnivalo_nezettseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanulnivalo`
--

INSERT INTO `tanulnivalo` (`tanulnivalo_id`, `tanulnivalo_nev`, `tanulnivalo_tartalom`, `tanulnivalo_kep`, `tanulnivalo_datum`, `tanulnivalo_tipus`, `tanulnivalo_nezettseg`) VALUES
(1, 'A logaritmus', 'A logaritmus két szám között értelmezett matematikai művelet, amely közeli kapcsolatban van a hatványozással. A pozitív b szám a alapú logaritmusán (ahol a egytől különböző pozitív szám) azt a kitevőt értjük, melyre a-t emelve b-t kapjuk.[1] Például 1000-nek 10-es alapú logaritmusa 3, mert 10 harmadik hatványa 1000. ', 'logaritmus.jpg', '2018-11-24 00:19:12', '1', 41),
(2, 'A derivált', 'A matematikában a derivált (vagy differenciálhányados) a matematikai analízis egyik legalapvetőbb fogalma. A derivált lényegében annak a mértéke, hogy egy egyváltozós valós függvény görbéjéhez rajzolt érintője milyen meredek. Ez a geometriai jellegű fogalom szoros kapcsolatban van a függvény növekedésének elemzésével, a függvényvizsgálattal.', 'derivalt.gif', '2018-11-12 02:30:09', '1', 6),
(3, 'Az integrál', 'Egyszerűen úgy fogalmazható meg, hogy ez a függvény és az x-tengely által az ([a, b] intervallumon) bezárt előjeles terület. ', 'integral.jpg', '2018-11-01 19:44:44', '1', 5),
(13, 'Az Objektumorientált programozás', 'Az objektumorientált vagy objektumelvű programozás (angolul object-oriented programming, röviden OOP) egy programozási paradigma, ami az objektumok fogalmán alapul. Az objektumok egységbe foglalják az adatokat és a hozzájuk tartozó műveleteket. Az adatokat ismerik mezők, attribútumok, tulajdonságok néven, a műveleteket metódusokként szokták emlegetni. Az objektum által tartalmazott adatokon általában az objektum metódusai végeznek műveletet. A program egymással kommunikáló objektumok összességéből áll.[1][2] A legtöbb objektumorientált nyelv osztály alapú, azaz az objektumok osztályok példányai, és típusuk ez az osztály. ', 'objektumorientalt1.jpg', '2018-11-13 12:13:45', '2', 2),
(14, 'Az atomi rétegleválasztás', 'Azért, hogy egy alkatrész felületét megvédjük a különböző behatásoktól valamilyen bevonatra van szükség. Bevonatolás célja: - A bevonatolással elérhető, hogy a felületrozsdásodásnak ellenálljon, növelve ezzel a korrózióvédelmet. - Bevonatolással kismértékben a munkadarab mérete is befolyásolható. - Kopásállóság növelése még nagy hőmérsékleten is. Nagy hőmérsékleten a kopás nagyobb mértékű lehet, de bevonatolással a kopás még nagy hőmérsékleten is a megfelelő szinten tartható. - Repedésállóság növelése. - Kisebb hősokk érzékenység, a munkadarab a hirtelen hőmérséklet változásokra érzéketlenebb. - Nagyobb kémia stabilitás. - Kisebb súrlódási tényező és hővezető-képesség. - Nagyobb forgácsolási sebesség és előtolás. - Hosszabb szerszámélettartam. - Szebb felület kialakítás. A bevonatolást előszeretettel használják az iparban, mivel így a feladatnak jobban megfelelő felület érhető el.', 'reteglevalasztas.jpg', '2018-11-20 11:15:29', '3', 28),
(15, 'Az UML', 'Az UML (Unified Modeling Language) szabványos, általános célú modellező nyelv, üzleti elemzők, rendszertervezők, szoftvermérnökök számára. Grady Booch, Ivar Jacobson és James Rumbaugh egyesített munkájának terméke.[1]Az objektum orientált (OO) modellezés módszerét alkalmazni lehet a való világ bonyolultságának leírására. Az UML egy gyakorlati, objektum orientált modellező megoldás, nagy méretű programrendszerek modelljeinek vizuális dokumentálására alkalmas eszköz. Az UML módszer és leíró nyelv segítségével különböző nézőpontú szöveges és grafikus modellek készíthetőek többek közt:[2]', 'uml1.jpg', '2018-11-23 21:23:22', '2', 13),
(16, 'A szubrutinok', 'A szubrutin', 'szubrutin1.jpg', '2018-11-25 05:10:00', '2', 18),
(17, 'Alaplap', 'A számítógép elektronikus elemei az alaplapra vagy alapkártyára vannak építve. Az alaplap egy többrétegű nyomtatott áramköri lap, amelyen az egyes elemek fogadására több különböző méretű és alakú csatlakozó, illetve néhány előre beépített eszköz helyezkedik el. Ezek az elemek, illetve a kialakított csatlakozók eleve meghatározzák, hogy az alaplap milyen processzort tud fogadni, milyen frekvencián dolgozik, mekkora a RAM memória, hány és milyen fajtájú bővítőkártyahely található rajta, milyen a felhasználható memória típusa és maximális mérete stb.', 'alaplap1.jpg', '2018-11-17 15:16:00', '2', 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kedvencek`
--
ALTER TABLE `kedvencek`
  ADD PRIMARY KEY (`kedvencek_id`),
  ADD KEY `kedvencek_szemely_id` (`kedvencek_szemely_id`),
  ADD KEY `kedvencek_tanulnivalo_id` (`kedvencek_tanulnivalo_id`),
  ADD KEY `kedvencek_tanulnivalo_id_2` (`kedvencek_tanulnivalo_id`);

--
-- A tábla indexei `keresek`
--
ALTER TABLE `keresek`
  ADD PRIMARY KEY (`keresek_id`),
  ADD KEY `keresek_szemely_id` (`keresek_szemely_id`);

--
-- A tábla indexei `szemely`
--
ALTER TABLE `szemely`
  ADD PRIMARY KEY (`szemely_id`);

--
-- A tábla indexei `tanulnivalo`
--
ALTER TABLE `tanulnivalo`
  ADD PRIMARY KEY (`tanulnivalo_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kedvencek`
--
ALTER TABLE `kedvencek`
  MODIFY `kedvencek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT a táblához `keresek`
--
ALTER TABLE `keresek`
  MODIFY `keresek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT a táblához `szemely`
--
ALTER TABLE `szemely`
  MODIFY `szemely_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT a táblához `tanulnivalo`
--
ALTER TABLE `tanulnivalo`
  MODIFY `tanulnivalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kedvencek`
--
ALTER TABLE `kedvencek`
  ADD CONSTRAINT `kedvencek_ibfk_1` FOREIGN KEY (`kedvencek_tanulnivalo_id`) REFERENCES `tanulnivalo` (`tanulnivalo_id`),
  ADD CONSTRAINT `kedvencek_ibfk_2` FOREIGN KEY (`kedvencek_szemely_id`) REFERENCES `szemely` (`szemely_id`);

--
-- Megkötések a táblához `keresek`
--
ALTER TABLE `keresek`
  ADD CONSTRAINT `keresek_ibfk_1` FOREIGN KEY (`keresek_szemely_id`) REFERENCES `szemely` (`szemely_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
