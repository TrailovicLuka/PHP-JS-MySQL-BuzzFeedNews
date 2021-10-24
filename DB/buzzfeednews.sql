-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 09:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buzzfeednews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$sW.V/pcXNgPLVBDM99vc2ufHpV12MBzDNLs6nJBXO7VJfsyKDtMLy', 'admin@gmail.com', 1, '2021-01-15 18:51:00', '2021-01-17 17:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'FIlm', 'Srpska Scena', '2021-01-15 19:34:00', '2021-01-17 15:32:00', 1),
(3, 'Sport', 'Sport Vesti', '2021-01-15 19:36:00', '2021-01-16 22:34:16', 1),
(5, 'Zabava', 'Zabava', '2021-01-15 20:36:00', '2021-01-15 21:14:16', 1),
(6, 'Politika', 'Politika novosti', '2021-01-15 19:44:00', '0000-00-00 00:00:00', 1),
(7, 'Biznis', 'Biznis', '2021-01-15 22:46:26', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, '7', 'Nemanja', 'blablabla@hotmail.com', 'Test proba', '2021-01-16 18:51:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Buzz Feed News', '<p style=\"margin-bottom: 1em; padding: 0px; font-size: 12.16px; color: rgb(85, 85, 85); font-family: Arial, sans-serif;\">Libero pellentesque per platea parturient risus consequat ornare nullam nostra fames, potenti torquent nisi ornare luctus neque massa maecenas purus. Vivamus fringilla tellus duis sociis in nunc amet hymenaeos sodales vivamus Ultricies sociosqu mauris inceptos hac. Dis consequat nunc ridiculus ridiculus ullamcorper commodo hymenaeos. Inceptos enim taciti praesent amet habitasse. Inceptos ut varius ipsum maecenas tempus leo. Magna pulvinar vitae tempus leo aliquet sed mi curae; imperdiet non consectetuer ultricies ligula amet dictumst sociosqu quisque Sollicitudin habitasse blandit tempus blandit enim, pellentesque sem torquent, sociosqu quam litora feugiat. Accumsan torquent imperdiet condimentum sit etiam integer adipiscing senectus, nec a pede sociis habitant fermentum blandit gravida. Luctus interdum. Ipsum mollis.</p><p style=\"margin-bottom: 1em; padding: 0px; font-size: 12.16px; color: rgb(85, 85, 85); font-family: Arial, sans-serif;\">Porttitor blandit Sociosqu potenti nam orci laoreet purus primis. Molestie fusce suspendisse tempus arcu curae; feugiat tempus at consectetuer lorem. Nec morbi curae;. Ornare semper Praesent donec vitae enim, porta lacus libero lacinia Ipsum. Elementum aenean enim torquent magna fusce platea turpis ornare curae; fermentum rhoncus vitae auctor tincidunt nostra tempor nibh est massa Dui blandit ultricies pellentesque aliquet rhoncus.</p><p style=\"margin-bottom: 1em; padding: 0px; font-size: 12.16px; color: rgb(85, 85, 85); font-family: Arial, sans-serif;\">Gravida ac quis diam maecenas tempus sodales tortor fringilla inceptos magna ad rhoncus natoque luctus magna viverra. Fermentum commodo potenti facilisis, senectus sociis. Pretium mus libero. Sagittis. Ipsum. Class cubilia rhoncus nonummy ultrices tellus Pellentesque habitant sapien dignissim per ipsum ac duis proin orci. Fusce litora, nibh nibh laoreet a litora. Vestibulum. Duis mus torquent eget accumsan conubia cubilia habitasse nam dis Sem adipiscing congue, fringilla erat imperdiet hendrerit sodales dis posuere quam mus dis, dictum felis et non vehicula ullamcorper euismod conubia dui nisl lobortis nibh velit nascetur varius class sit elit est quis odio vitae facilisis, torquent pretium scelerisque elit tristique netus lobortis rhoncus pellentesque pulvinar cursus rhoncus fusce sociis. Cras fusce feugiat turpis euismod morbi inceptos vitae ante. Congue litora suspendisse morbi eget aliquet nonummy venenatis magna fames.</p>', '2021-01-15 15:34:43', '2021-10-24 19:18:26'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Nis,Srbija</p><p><b>Phone Number : </b>+3816300000</p><p><b>Email -id : </b>luka.trailovic@outlook.com</p>', '2021-01-15 21:23:43', '2021-10-24 19:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(10, 'Er Srbija uvela dodatne letove ka Crnoj Gori', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><h3 style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 1.0625rem; line-height: 1.7647; margin-bottom: 26px; padding: 0px; text-rendering: optimizelegibility; color: rgb(5, 19, 30); letter-spacing: normal;\"><h3><font face=\"Arial Black\">Tri dodatna leta uvedena su ka Tivtu, a na tri postojeÄ‡a leta ka Podgorici promenjen je tip aviona.</font></h3><h3><font face=\"Arial Black\">Planirani turbo-elisni avion ATR zamenjen je mlaznim avionom tipa erbas A-319, dok su dva planirana aviona tipa erbas A-319 zamenjeni avionom tipa erbas A-320 sa veÄ‡im brojem sediÅ¡ta.<br></font><font face=\"Arial Black\">Kapaciteti Er Srbija poveÄ‡ani su na letovima ka Podgorici 17, 19. i 24. januara, dok su dodatni letovi ka Tivtu uvedeni 23, 27. i 30. januara.</font></h3></h3></h1>', '2021-01-16 16:21:10', '2021-10-24 19:10:51', 0, 'Er-Srbija-uvela-dodatne-letove-ka-Crnoj-Gori', '37396d1174864187af90fbf371a950f2.jpg'),
(13, 'Zvezdin minimalac za nastavak potere za Partizanom', 3, 5, '<p class=\"text-justify\" style=\"margin-bottom: 1rem; padding: 0px; color: rgb(51, 51, 51); font-family: Open-Sans, sans-serif; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Iako je posle prvog poluvremena izgledalo da bi Nišlije večeras mogle da naprave probleme aktuelnom šampionu, nastavak meča je brzo otklonio takve dileme.</span></p><p class=\"text-justify\" style=\"margin-bottom: 1rem; padding: 0px; color: rgb(51, 51, 51); font-family: Open-Sans, sans-serif; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Crvena zvezda je na svom terenu savladala niški Radnički rezultatom 1:0, a gol odluke postigao je El Fardu Ben u 53. minutu meča, posle lepe akcije Ivanića i Dionija, a Benu je ostalo samo da loptu potpuno neometan sa desetak metara sprovede u mrežu - 1:0.</span></p>', '2021-10-24 19:13:30', NULL, 1, 'Zvezdin-minimalac-za-nastavak-potere-za-Partizanom', 'f2da652df63c64f86c10fb3e91af24ee.jpg'),
(14, 'Zaharova: Dvojica ruskih diplomata proglašenih nepoželjnim napustili Kosovo', 6, 8, '<div class=\"md:w-10/12 w-full\" style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); width: 685.833px; color: rgb(64, 62, 62); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 18px; letter-spacing: -0.5px;\"><div class=\"post-intro-content content font-medium\" style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);\"><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-bottom: 1rem; letter-spacing: -1px; font-family: &quot;Work Sans&quot;, ui-serif, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 1.125rem; line-height: 1.5rem; --tw-text-opacity: 1; color: rgba(64, 62, 62, var(--tw-text-opacity));\">Portparolka ruskog Ministarstva spoljnih poslova Marija Zaharova potvrdila je da su dvojica ruskih diplomata iz ruske Kancelarije za vezu u Prištini, koje su proglašene personama non grata, napustila Kosovo.</p></div><div class=\"code-block code-block-2 code-block-block-2\" style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin: 8px 0px; clear: both;\"><div class=\"danas-dfp \" style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);\"></div></div><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-bottom: 1rem; letter-spacing: -1px; font-family: &quot;Work Sans&quot;, ui-serif, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 1.125rem; line-height: 1.5rem; --tw-text-opacity: 1; color: rgba(64, 62, 62, var(--tw-text-opacity));\">„Samoproklamovane ‘vlasti Kosova’ i sile koje stoje iza njih ne prestaju da sprovode provokativne akcije u odnosu na diplomate iz Srbije. Čim su napustili teritoriju Kosova, odmah je bila organizovana nova provokacija – puštene su dezinformacije čiji je cilj da se privrženost Rusije rezoluciji 1244 Saveta bezbednosti UN stavi pod sumnju“, navela je Zaharova na Telegram kanalu.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229, 231, 235, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur: var(--tw-empty, ); --tw-backdrop-brightness: var(--tw-empty, ); --tw-backdrop-contrast: var(--tw-empty, ); --tw-backdrop-grayscale: var(--tw-empty, ); --tw-backdrop-hue-rotate: var(--tw-empty, ); --tw-backdrop-invert: var(--tw-empty, ); --tw-backdrop-opacity: var(--tw-empty, ); --tw-backdrop-saturate: var(--tw-empty, ); --tw-backdrop-sepia: var(--tw-empty, ); --tw-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-bottom: 1rem; letter-spacing: -1px; font-family: &quot;Work Sans&quot;, ui-serif, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 1.125rem; line-height: 1.5rem; --tw-text-opacity: 1; color: rgba(64, 62, 62, var(--tw-text-opacity));\">Navela je da Moskva odlučno osudjuje „destruktivno ponašanje“ i odbacuje bilo koje insinuacije o navodnoj promeni ruske pozicije koja se tiče nepriznavanja Kosova.</p></div>', '2021-10-24 19:16:03', NULL, 1, 'Zaharova:-Dvojica-ruskih-diplomata-proglašenih-nepoželjnim-napustili-Kosovo', '90815730c952667c8ac8f7f7e08cdcdc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Filmografija', 'Filmografija', '2021-01-16 16:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Kosarka', 'Kosarka', '2021-01-16 10:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Fudbal', 'Fudbal', '2021-01-16 10:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Televizor', 'Televizor', '2021-01-16 19:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'Domace', 'Domace', '2021-01-16 20:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'Planeta', 'Planeta', '2021-01-16 20:15:43', '0000-00-00 00:00:00', 1),
(9, 7, 'Srbija', 'Srbija', '2021-01-16 20:08:42', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(3, 'ana.trailovic', 'blablabla@hotmail.com', 'df5ea29924d39c3be8785734f13169c6'),
(4, 'rista', 'rista@dkas.saa', '1a36591bceec49c832079e270d7e8b73'),
(6, 'Nemanja', 'zzzzz@hotmail.com', '128ecf542a35ac5270a87dc740918404');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
