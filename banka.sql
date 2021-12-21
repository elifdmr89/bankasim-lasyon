-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Ara 2021, 16:06:10
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `banka`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bakiye`
--

CREATE TABLE `bakiye` (
  `id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `toplam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `bakiye`
--

INSERT INTO `bakiye` (`id`, `k_id`, `toplam`) VALUES
(1, 26, 101644),
(3, 2, 33);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dolar`
--

CREATE TABLE `dolar` (
  `id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `miktar` int(11) NOT NULL,
  `alim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `dolar`
--

INSERT INTO `dolar` (`id`, `k_id`, `b_id`, `miktar`, `alim`) VALUES
(11, 26, 1, 1, 1),
(12, 26, 1, 5, 1),
(13, 26, 1, 4, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelen`
--

CREATE TABLE `gelen` (
  `id` int(11) NOT NULL,
  `bakiye_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `miktar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `gelen`
--

INSERT INTO `gelen` (`id`, `bakiye_id`, `k_id`, `miktar`) VALUES
(1, 1, 26, 1000),
(2, 1, 26, 1000),
(3, 1, 26, 1200),
(4, 1, 26, 1000),
(5, 1, 26, 1000),
(6, 1, 26, 1200),
(7, 1, 26, 2000),
(8, 1, 26, 5000),
(9, 1, 26, 2000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giden`
--

CREATE TABLE `giden` (
  `id` int(11) NOT NULL,
  `bakiye_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `miktar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `giden`
--

INSERT INTO `giden` (`id`, `bakiye_id`, `k_id`, `miktar`) VALUES
(1, 1, 26, 5000),
(2, 1, 26, 5000),
(3, 1, 26, 5000),
(4, 1, 26, 200);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havale`
--

CREATE TABLE `havale` (
  `id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `miktar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `havale`
--

INSERT INTO `havale` (`id`, `k_id`, `g_id`, `miktar`) VALUES
(4, 2, 26, 23),
(5, 26, 2, 12),
(6, 26, 2, 4),
(7, 26, 2, 4),
(8, 26, 2, 3),
(9, 26, 2, 4),
(10, 26, 2, 2),
(11, 26, 2, 3),
(12, 2, 26, 2),
(13, 26, 2, 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `kadi` varchar(200) NOT NULL,
  `eposta` varchar(200) NOT NULL,
  `sifre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `kadi`, `eposta`, `sifre`) VALUES
(2, 'Elif Demir3', 'elif3@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f'),
(26, 'Elif Demir4', 'elif2@gmail.com', '19cb219d622a85a7d626ebf174d2c889525490f7'),
(27, 'admin', 'admin@admin.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bakiye`
--
ALTER TABLE `bakiye`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `dolar`
--
ALTER TABLE `dolar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gelen`
--
ALTER TABLE `gelen`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `giden`
--
ALTER TABLE `giden`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havale`
--
ALTER TABLE `havale`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bakiye`
--
ALTER TABLE `bakiye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `dolar`
--
ALTER TABLE `dolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `gelen`
--
ALTER TABLE `gelen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `giden`
--
ALTER TABLE `giden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `havale`
--
ALTER TABLE `havale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
