-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 06:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touristattractionsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Attraction', '2022-06-14 06:03:46', '2022-06-14 06:03:46'),
(2, 'Homestay', '2022-06-14 06:04:18', '2022-06-14 06:04:18'),
(3, 'Indoor', '2022-06-14 06:04:30', '2022-06-14 06:04:30'),
(4, 'Outdoor', '2022-06-14 06:04:42', '2022-06-14 06:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_12_131537_create_categories_table', 2),
(6, '2022_06_12_132415_create_places_table', 2),
(7, '2022_06_26_075123_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openHour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingMethod` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `introduction`, `reviews`, `openHour`, `price`, `image1`, `image2`, `image3`, `image4`, `image5`, `CategoryID`, `address`, `bookingMethod`, `contactNumber`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Legoland Theme Park Johor', 'LEGOLAND Malaysia Resort is tailor-made for the local environment. It covers the same area of more than 50 full size football pitches and contains more than 15,000 LEGO models made from over 60 million LEGO bricks.', '6.0', '10.00AM - 6.00PM (Last entry at 5PM)', 'RM189 For Adult, RM149 For Senior/Child', '123.jpg', 'ee.jpg', 'eeee.jpg', 'eeeee.jpg', 'eeeeee.jpg', '4', '7, Persiaran Medini Utara 3, 79100 Nusajaya, Johor', 'https://www.legoland.com.my/tickets-passes/?gclid=Cj0KCQjwhqaVBhCxARIsAHK1tiP-Yttg3QyegFIzFTAAG_lTDBQLUd_kCxGXbD2YbmTQwnkhVVaNzJEaAqWBEALw_wcB', '+607 597 8888', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.581880710414!2d103.62714161467039!3d1.4264571989596764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da0b8c3c76ed33%3A0x815b08d21944354b!2sLEGOLAND%20Malaysia!5e0!3m2!1sen!2smy!4v1655877584838!5m2!1sen!2smy', '2022-06-15 00:24:04', '2022-06-28 01:53:08'),
(2, 'YANGTZE Homestay Johor Bahru', 'The homestay comes with 1 bedroom, 1 bathroom, bed linen, towels, a flat-screen TV, a dining area, a fully equipped kitchen, and a balcony with city views. A garden and a terrace are featured at the homestay.', '6.5', 'Available for booking', 'RM294 for one night(Available for 3 adults)', '1234.jpg', '55.jpg', '555555.jpg', '5555.jpg', '55555.jpg', '2', 'G RESIDENCE,13-09,MENARA B, JLN MUTIARA 7,, 81750 Johor Bahru, Malaysia', 'https://www.booking.com/hotel/my/yangtze-home-stay-chang-jiang-min-su.en-gb.html?aid=1607815&label=johor-FvJCGXlSNSaVaqHYxDblowS417052355034%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-307920597736%3Alp9066259%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YcLgEXIAJSu2cjhbYZMkoJI&sid=f7bc2ff5d5b75fba95f786a61c066fba&all_sr_blocks=729694301_338861216_2_0_0;checkin=2022-07-13;checkout=2022-07-14;dest_id=-2405456;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=729694301_338861216_2_0_0;hpos=1;matching_block_id=729694301_338861216_2_0_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=729694301_338861216_2_0_0__14720;srepoch=1655382550;srpvid=3e5c57ca3bc4009d;type=total;ucfs=1&#hotelTmpl', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.4047503758325!2d103.81541061467037!3d1.5252201988877023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdb5a8af1ac3c1%3A0x72494247e4deab66!2sG%20Residence%20Apartment!5e0!3m2!1sen!2smy!4v1655876845940!5m2!1sen!2smy', '2022-06-16 04:23:42', '2022-06-28 01:47:31'),
(3, 'Angry Birds Activity Park Johor', 'This state-of-the-art play arena sprawls across an area of 26,000 square feet and allows the kids to unleash their imagination. Spend a day of fun and excitement in the world of the wingless Angry Birds and strengthen your kids??? creativity with a host of experiences.', '7.9', '10:00AM - 10:00PM', 'RM60 for single entry, RM128 for family package(4 Persons)', '48.jpg', '33.webp', '333.jpg', '3333.jpg', '33333.jpg', '3', 'KOMTAR, Level 3, 80000 Johor Bahru, Johor', 'https://www.klook.com/en-MY/activity/7813-angry-birds-activity-park-ticket-johor-bahru/', '07-266 9924', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1994.2586471231602!2d103.76193300802859!3d1.463241049733218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12c355cb2223%3A0x4e528549802f1cd3!2sKOMTAR%20JBCC!5e0!3m2!1sen!2smy!4v1655877163894!5m2!1sen!2smy', '2022-06-16 04:40:26', '2022-06-28 01:51:51'),
(4, 'Tropical Village Ayer Hitam Johor', 'Tropical Village Ayer Hitam is a miniature amusement park best to visit with family and kids. Spanning across 32 acres of land, you will find many replicas of buildings such as the Statue of Liberty, the Eiffel Tower and Taj Mahal, just to name a few.', '8.5', '9:00AM ??? 7:00PM', 'RM10 for adult, RM 5 for child(4 to 12 years old)', '2223.jpg', '0.png', '00.jpg', '000.jpg', '0000.jpg', '1', '56,Jalan Felda Ayer Hitam, 86100 Ayer Hitam, Johor', 'https://www.facebook.com/Tropical-Village-%E7%83%AD%E5%B8%A6%E5%B1%B1%E5%BA%84-155085237843622/', '07-758 2170', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.475845596285!2d103.22333441467104!3d1.9634496985685743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d068f9e2031ed5%3A0x6181fe148fcefef2!2s56%2C%20Jalan%20Felda%20Ayer%20Hitam%2C%2086100%20Kluang%2C%20Johor!5e0!3m2!1sen!2smy!4v1655876462531!5m2!1sen!2smy', '2022-06-16 04:54:38', '2022-06-28 01:50:39'),
(5, 'Delight Homestay Johor Bahru', 'Conveniently situated in the Johor Bahru City Center part of Johor Bahru, this property puts you close to attractions and interesting dining options. Don\'t leave before paying a visit to the famous Legoland Malaysia. Rated with 5 stars, this high-quality property provides guests with access to fitness center and indoor pool on-site.', '9.0', 'Available for booking', 'RM339 for one night(Available for 4 persons)', '96d11a8dafc8002563b5d2bc61b9cf50.webp', '7.jpg', '77.jpg', '777.jpg', '7777.jpg', '2', '260, Jalan Dato Sulaiman, Taman Abad, 80250 Johor Bahru, Johor', 'https://www.agoda.com/johor-bahru-city-cozy-4pax-studio-8mins-to-ciq/hotel/johor-bahru-my.html?finalPriceView=1&isShowMobileAppPrice=false&cid=1844104&numberOfBedrooms=&familyMode=false&adults=2&children=0&rooms=1&maxRooms=0&checkIn=2022-06-16&isCalendarCallout=false&childAges=&numberOfGuest=0&missingChildAges=false&travellerType=1&showReviewSubmissionEntry=false&currencyCode=MYR&isFreeOccSearch=false&flexibleDateSearchCriteria=[object%20Object]&isCityHaveAsq=false&los=2&searchrequestid=2dd0d64e-6af1-458c-b056-8a44533f362e', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.474705008686!2d103.75922331467034!3d1.4869991989155569!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da6d3a9b4087e3%3A0x944337065462534e!2sHoliday%20Villa%2C%20260%2C%20Jalan%20Dato%20Sulaiman%2C%20Taman%20Abad%2C%2080250%20Johor%20Bahru%2C%20Johor!5e0!3m2!1sen!2smy!4v1655876962849!5m2!1sen!2smy', '2022-06-16 05:10:42', '2022-06-21 21:49:39'),
(6, 'Grand Palace of Johor (Istana Besar Johor)', 'The Grand Palace\'s most distinctive feature is its Anglo-Malay architecture, characterised by its dome of Malay design contrasted with its blue roof of Anglo influence.', '8.5', '9AM - 5PM, closed on Friday', 'RM 21 for adults, RM 9 for children', 'j1.webp', '9.jpg', '99.jpg', '99999.jpg', '9999.jpg', '1', '107, Jalan Tun Dr Ismail, Taman Istana, 80000 Johor Bahru, Johor', 'https://www.tripadvisor.com.my/Attraction_Review-g298278-d457071-Reviews-Grand_Palace_Park_Istana_Besar-Johor_Bahru_Johor_Bahru_District_Johor.html', '010-960 1817', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5319070876426!2d103.7541753146703!3d1.4549999989388764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12ebbf94a925%3A0x95ab5bd48fc9d30b!2s107%2C%20Jalan%20Tun%20Dr%20Ismail%2C%20Taman%20Istana%2C%2080000%20Johor%20Bahru%2C%20Johor!5e0!3m2!1sen!2smy!4v1655876570942!5m2!1sen!2smy', '2022-06-17 22:10:55', '2022-07-04 06:38:57'),
(7, 'Laser Battle Johor', '\"Laser Battle is Asia\'s most advance Laser Tag centers. We utilizes the latest laser tag equipment from Zone Empire. We\'re the perfect venue for all your events, be it a birthday party or a corporate teambuilding event! Contact us for further details.', '9.0', '12PM - 6PM (Closed on Monday and Tuesday)', 'RM 399 for a group (max 16 persons)', 'qq3.jpg', '44.png', '444.png', '4444.jpg', '44444.jpg', '3', 'Lot MS-11, Johor Bahru City Square, 108, Jalan Wong Ah Fook, Bandar Johor Bahru, 80000 Johor Bahru, Johor', 'https://www.klook.com/en-MY/activity/41405-laser-batte-johor-bahru/?gclid=Cj0KCQjwzLCVBhD3ARIsAPKYTcR5rzQ7L2OVKTSfOgBTSRt8GJF9xshJJRRBAllQLtpA4c1O_9S2UlcaAumyEALw_wcB&gclsrc=aw.ds', '016-868 6279', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1994.2598135771073!2d103.76264965799649!3d1.4619284997334596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12c34c6fb543%3A0x7c0292f570c6c478!2sLaser%20Battle%20Johor!5e0!3m2!1sen!2smy!4v1655877224792!5m2!1sen!2smy', '2022-06-17 23:05:31', '2022-06-21 21:54:04'),
(8, 'Sultan Abu Bakar Mosque Johor Bahru', 'Constructed in the late 18th century by Sultan Abu Bakar - known as the Father of Modern Johor - the Sultan Abu Bakar State Mosque is Malaysia\'s state mosque. The building structure features colonial-style English Victorian design elements as well as traces of Moorish and Malay architecture and its massive halls can accommodate up to 2,000 people during prayer times.', '5.5', '10AM - 6PM (Open daily)', 'FREE', '9d.jpg', '111111.png', '11111.jpg', '1111.png', '111.jpg', '1', 'Jalan Gertak Merah, Masjid Sultan Abu Bakar, 80000 Johor Bahru, Johor', 'https://www.facebook.com/MasjidSultanAbuBakarJB/', '+60-72234935', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.525678081485!2d103.74987101467023!3d1.4585185989363112!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12c1b1c1df01%3A0x3a5cf47def843977!2sJalan%20Gertak%20Merah%2C%20Masjid%20Sultan%20Abu%20Bakar%2C%2080000%20Johor%20Bahru%2C%20Johor!5e0!3m2!1sen!2smy!4v1655876652402!5m2!1sen!2smy', '2022-06-18 21:52:44', '2022-06-28 01:49:59'),
(9, 'Johor Ancient Temple', 'The temple is flanked by modern skyscrapers. This temple is one of the oldest structures in the city and become the symbol of unity among five Chinese ethnic groups of Teochew, Hoklo (Hokkien), Cantonese, Hakka and Hainanese people.', '7.9', '7.30AM - 5.30PM (Open daily)', 'FREE', 'Chinese_Temple-JB-2.jpg', '6.jpg', '66.jpg', '666.jpg', '6666.jpg', '1', 'Lot 653, Jalan Trus, Bandar Johor Bahru, 80000 Johor Bahru, Johor', 'https://www.facebook.com/Johor.Ancient.Temple/', '+60-72777858', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5219296590803!2d103.76089961467036!3d1.460631898934787!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12c2d81d63dd%3A0x5c693750e2dd3b4d!2sJohor%20Ancient%20Temple!5e0!3m2!1sen!2smy!4v1655876748404!5m2!1sen!2smy', '2022-06-18 22:05:47', '2022-06-24 00:32:54'),
(10, 'Camp5 Climbing Gym Paradigm Johor', 'A unique toprope setup on the mezzanine level enables new climbers to gain independence with just a quick 15min orientation. Whilst our popular Basic Wall Course, conducted by international certified instructors, will show you the ropes so you can climb safely on the top rope and lead walls.', '9.0', '12PM - 10PM (For normal day), 10AM - 8PM (For the weekend)', 'RM42 for adult, RM18 for youth, Free for kids under 12', 'wmxecnhg1mejqwqrqdmb.webp', 'aa.jpg', 'aaa.jpg', 'aaaa.jpg', 'aaaaa.webp', '3', '7F-08 Level 7, Skudai Paradigm Mall, Jalan Bertingkat Skudai, 81200 Johor Bahru, Johor', 'https://www.camp5.com/paradigm/', '07-232 7783', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.4220796712907!2d103.68311781467041!3d1.515841798894544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da72ff7f9fff21%3A0xdbb4d6f7c4c5f6f!2sParadigm%20Mall%20Johor%20Bahru!5e0!3m2!1sen!2smy!4v1655877298474!5m2!1sen!2smy', '2022-06-18 22:23:44', '2022-06-28 01:52:38'),
(11, 'RUD GoKart Karting Johor', 'With the mission in spreading the karting spirits to Malaysia, the team decided to build their own go-kart racing track in Johor Bahru. Combining our technological edge with unique business models to create innovative racing experiences, differentiated brands, and vibrant communities.', '8.5', '11AM - 2AM (Open daily)', 'RM55 for 10 mins(Basic Kart), RM75 for 10 mins(Twin Kart)', 'RUD-Karting-in-Johor-Bahru-1.png', 'dd.jpg', 'dddd.jpg', 'ddddd.jpg', 'dddddd.jpg', '4', 'PTD 200284, Persiaran Medini Sentral 6, Bandar Medini Iskandar, 79250 Nusajaya, Johor', 'https://racingunderdog.com/', '011-5880 7719', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6180576304555!2d103.6234521146703!3d1.4054328989749936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da0b5567ccd9e3%3A0x7c43f48ad6e91d71!2s%F0%9F%94%A5Gokart%20Karting%20Malaysia%20Johor%20Bahru%20JB%20-%20RUD%20Karting!5e0!3m2!1sen!2smy!4v1655877426037!5m2!1sen!2smy', '2022-06-18 22:32:48', '2022-06-28 01:54:50'),
(12, 'Lovely Homestay Johor Bahru', 'Wireless internet, Fully equipped kitchen, Large audio system, Big screen TV, Beautiful garden for outdoor parties, Two balconies, Huge backyard', '9.0', 'Available for booking', 'RM1250 per night (Available for 12 persons)', '3813354_v1.webp', '8.jpg', 'f4552937-36a2-4b4a-be7e-df37c04c501b.webp', '88.jpg', '888.jpg', '2', '44, Jalan Bukit Kempas 2, Taman Bukit Kempas, 81200 Johor Bahru, Johor', 'https://www.trivago.com.my/johor-bahru-74831/hotel/lovely-homestay-3813354', '07-333 5334 & 012-643 0503', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.3939854944056!2d103.69331311467047!3d1.5310170988834855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da7246386c1205%3A0x799ed56ef5c207c6!2s44%2C%20Jalan%20Bukit%20Kempas%202%2C%20Taman%20Bukit%20Kempas%2C%2081200%20Johor%20Bahru%2C%20Johor!5e0!3m2!1sen!2smy!4v1655877005334!5m2!1sen!2smy', '2022-06-18 22:39:25', '2022-06-28 01:48:15'),
(13, 'Kesuma Villa Homestay Johor Bahru', 'Free WIFI, Electronic kettle, Free toiletries, Flat-screen TV, Huge backyard, Designated smoking area, Pool table.', '8.9', 'Available for booking', 'RM900 per night (Available for 8 persons)', 'homestay.webp', '8888.webp', '88888.webp', '888888.webp', '8888888.webp', '2', 'Lorong Haji Kaprawi, Jalan Kluang Batu 13 1/2, Parit Raja, Johor, Malaysia, 86400 Parit Raja, Malaysia', 'https://www.trip.com/hotels/parit-raja-hotel-detail-23781111/kesuma-villa-exclusive-stay/', '07-457 0440', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1993.8544904699131!2d103.1043532579966!3d1.8631740996603956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d05c20313c1879%3A0x6524b8dfc668738!2sKesuma%20Villa%20Exclusive%20Stay!5e0!3m2!1sen!2smy!4v1655877079393!5m2!1sen!2smy', '2022-06-18 22:48:39', '2022-06-28 01:48:49'),
(14, 'Desaru Beach Johor Bahru', 'Peaceful, seafront area with a white sand beach known for swimming, sunbathing & sunset views.', '5.0', '7.00AM - 6.00PM', 'FREE', 'b200731001-banner-size.jpg', '22222.jpg', '222.jpg', '22.jpg', 'dwaziekk0upv5spllutz.jpg', '4', 'Lot 1854, Jalan Desaru, Bandar Penawar,. 81930 Kota Tinggi, Johor Darul Ta\'zim, Malaysia.', 'https://www.facebook.com/desarucoastmalaysia/', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.3548562344386!2d104.25542271467056!3d1.5519058988682661!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da4b619484a9c1%3A0x5aaaea29659a267e!2sJalan%20Desaru%2C%2081930%20Bandar%20Penawar%2C%20Johor!5e0!3m2!1sen!2smy!4v1655875457878!5m2!1sen!2smy', '2022-06-27 23:02:04', '2022-06-28 01:55:13'),
(15, 'Cameron Highlands Flora Park', 'A new spot to add to our list of places to visit here as travel restrictions are now eased in our country is Cameron Highlands Flora Park, a dreamy flower garden with plenty of fresh blooms and photo ops.', '9.0', '9.30AM - 7.00PM (Open daily) Last call at 5.30PM', 'RM50 for one person, Free for kid under 12 years old', 'pcc.jpg', 'pc.jpg', 'pc5.jpg', 'pc2.jpg', 'pc4.png', '1', 'lot 191, 39010 Brinchang, Pahang', 'https://www.instagram.com/ch_flora_park/?hl=en', '012-654 3657', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50148.20973513947!2d101.39069411963924!3d4.496281208615077!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31ca59dcf492e19d%3A0x9a95a6174dc3d667!2sCameron%20Highlands%20Flora%20Park!5e0!3m2!1sen!2smy!4v1656060970728!5m2!1sen!2smy', '2022-06-27 23:11:08', '2022-06-27 23:11:08'),
(16, 'Langkawi Island', 'A beautiful archipelago, Langkawi Island is a destination known for its vast expanse of sandy beaches and azure blue water which enthrall the tourists. It is one of the best places to visit in Malaysia with family.', '8.9', '24 hours(Open daily)', 'FREE', '1539707298439-Langkawi-Island-Paradise-1-of-15.jpeg', 'Langkawi-1.jpg', '1559411795_shutterstock_386784019.jpg.webp', 'shutterstock-103735007-kw-150517-Tourist-boats-at-the-Pulau-Dayang-Bunting-or-the-Pregnant-Maiden-Island-in-Langkawi.webp', 'Langkawi-Beaches.jpg', '1', 'Jalan Pantai Cenang 07000 Langkawi, Kedah, Malaysia', 'https://www.facebook.com/AkemiNaiimEnterprise', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253772.7350513081!2d99.63758772986064!3d6.368289571818686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304c790ff3458df3%3A0x2a7fa21075f37111!2sLangkawi%20Island!5e0!3m2!1sen!2smy!4v1656401213121!5m2!1sen!2smy', '2022-06-27 23:38:28', '2022-06-27 23:38:28'),
(17, 'Langkawi Cozy Holiday Homestay', 'The homestay comes with 4 bedrooms, 4 bathrooms, bed linen, towels, a flat-screen TV with satellite channels, a dining area, a fully equipped kitchen, and a patio with mountain views. For added convenience, the property can provide towels and bed linen for an extra charge.', '7.0', 'Available for booking', 'RM530 per night(Available for 14 persons)', '184102401.jpg', '280549651.jpg', '280549579.jpg', '184102399.jpg', '280549431.jpg', '2', 'No.1, Lorong Bukit Indah 1, Taman Indah Fasa 3, 07000 Kuah, Malaysia', 'https://www.booking.com/hotel/my/langkawi-cozy-holiday-home.en-gb.html?aid=1607815&label=langkawi-DL*ko43r5gH3OTK4iSLcbgS417052354950%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atiaud-297601666555%3Akwd-13627557775%3Alp9072951%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YcLgEXIAJSu2cjhbYZMkoJI&sid=0c4cab69840b717ee2305dc16e68e759&dest_id=3288&dest_type=region&dist=0&group_adults=2&group_children=0&hapos=7&hpos=7&no_rooms=1&req_adults=2&req_children=0&room1=A%2CA&sb_price_type=total&sr_order=popularity&srepoch=1656408414&srpvid=1ecb426e425a003c&type=total&ucfs=1&activeTab=main', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.4284683397577!2d99.82105971744383!3d6.338509400000011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304c7f377b654383%3A0xc8a1bf3278db64b0!2sNo%201%2C%201%2C%20Lorong%20Bukit%20Indah%2C%2007000%20Langkawi%2C%20Kedah!5e0!3m2!1sen!2smy!4v1656408923249!5m2!1sen!2smy', '2022-06-28 01:36:33', '2022-06-28 01:38:01'),
(18, 'Fathers Guesthouse Cameron Highlands', 'Fathers Guesthouse in Cameron Highlands provides adults-only accommodation with a shared lounge, a garden and a terrace. The accommodation offers a tour desk and free WiFi.', '8.0', 'Available for booking', 'RM469 per night(Available for 9 persons)', '242678380.jpg', '273335519.jpg', '273723855.jpg', '242671234.jpg', '169705633.jpg', '2', 'Number 4, Jalan Mentigi PO Box 90, Cameron Highlands, 39000 Cameron Highlands, Malaysia', 'https://www.booking.com/hotel/my/fathers-guesthouse-resort.en-gb.html?aid=1607815&label=cameron-highlands-MBdGeY_kGF0bx7JjV6m2mwS540984271815%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atiaud-297601666555%3Akwd-30643322512%3Alp9072951%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YcLgEXIAJSu2cjhbYZMkoJI&sid=0c4cab69840b717ee2305dc16e68e759', '016-566 1111', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3977.6914976528756!2d101.37417451467792!3d4.468323896753073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31ca57891919c43f%3A0xbde57377696a6107!2sFathers&#39;%20Guesthouse!5e0!3m2!1sen!2smy!4v1656409358787!5m2!1sen!2smy', '2022-06-28 01:46:02', '2022-06-28 01:46:02'),
(19, 'Underwater World Langkawi', 'Underwater World Langkawi (UWL) is one of the largest marine and freshwater aquaria in South East Asia. Since the start of its operation on 26 August 1995, it has become one of the must visit tourist destinations in Langkawi and has attracted a large number of foreign as well as local tourists', '9.0', '10.00AM - 6.00PM(Open daily)', 'RM23 for child, RM33 for adult', 'IMG_1313.jpg-1080x720-FIT-3fb9dcba1646718b87c8132aa6c98454.webp', 'bf725939473f344d6639e7bd275637d1.jpg', '28992.webp', 'Underwater-World.jpg', 'bwiuscbakd8fbiuinlne.jpg', '3', 'Jalan Pantai Chenang, 07000 Langkawi, Kedah', 'https://underwaterworldlangkawi.my/shop', '04-955 6100', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.817397238466!2d99.72640241468619!3d6.28771709544918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304b87d97e896ac1%3A0x70988cdc7c820310!2sUnderwater%20World%20Langkawi!5e0!3m2!1sen!2smy!4v1656410294054!5m2!1sen!2smy', '2022-06-28 02:03:17', '2022-06-28 02:03:17'),
(20, '3D Art in Paradise Langkawi', 'Interactive 3D museum featuring many elaborate paintings & murals offering optical illusions.', '8.6', '9AM - 6PM(Open daily)', 'RM30 for adult, RM20 for child', '272A1868-min-scaled.jpg', 'malaysia-langkawi-3d-art-hippo2.jpg', 'langkawi_art_in_paradise_IMG_7327-2.jpg', 'malaysia-langkawi-3d-art-waterfall.jpg', 'langkawi_art_in_paradise_IMG_7405-2.jpg', '3', 'Jalan Telaga Tujuh, 07100 Langkawi, Kedah', 'https://panoramalangkawi.com/3d-art-langkawi/', '013-509 1209', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d454.5097313326227!2d99.67157671019861!3d6.371952492273793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304c76e48d7ce8d1%3A0xdd6a71bad3e6c61c!2s3D%20Art%20in%20Paradise%20Langkawi!5e0!3m2!1sen!2smy!4v1656410779365!5m2!1sen!2smy', '2022-06-28 02:12:12', '2022-06-28 02:12:12'),
(21, 'Berjaya Times Square Theme Park KL', 'Berjaya Times Square Theme Park is an indoor amusement park on the 5th to 8th floors of Berjaya Times Square, Kuala Lumpur, Malaysia. It was conceived as the \"largest indoor, all weather, all ages, entertainment destination in the region\" and is the second largest indoor amusement park in Asia.', '8.5', '12AM - 8PM(Open daily)', 'RM160 for adult, RM140 for child', 'Berjaya_Times_Square_theme_park.jpg', 'experiences-themepark-berjaya-times-square-hotel-800.jpg', 'BTSTP-Shopee-Rides-Visual-01.jpg', 'about-us-1.jpg', 'experiences-themepark-berjaya-times-square-hotel-800.jpg', '3', 'Berjaya Times Square, 5th and 7th Floor, 1, Jalan Imbi, Bukit Bintang, 55100 Kuala Lumpur', 'https://berjayatimessquarethemeparkkl.com', '03-2117 3118', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.8197111306786!2d101.70810141467364!3d3.1422503477119803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc362890539213%3A0x1fd9aab834792386!2sBerjaya%20Times%20Square%20Theme%20Park!5e0!3m2!1sen!2smy!4v1656411505119!5m2!1sen!2smy', '2022-06-28 02:35:22', '2022-06-28 02:35:22'),
(22, 'Langkawi Sky Cab', 'Sweeping views from a cable car up jungle-clad Mt. Machincang, with viewing platforms at its peak.', '7.9', '9:30AM - 6PM(Open daily)', 'RM40 for adult, RM32 for child (Standard gondola)', '272A1107-min-scaled.jpg', 'Skycab Langkawi glass floor gondola.jpg', 'skycab_basic2-min.jpg', 'Langkawi-Cable-Car_13.jpg', 'langkawi cable car_wte.jpg', '4', '07000 Kedah, Langkawi', 'https://www.klook.com/en-MY/activity/23229-cable-car-admission-ticket-langkawi/', '04-959 4225', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1766308618453!2d99.66926931468663!3d6.371183095389752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304c76e4c2219399%3A0x6d4b97cdcb57a9e6!2sSky%20Cab!5e0!3m2!1sen!2smy!4v1656412671746!5m2!1sen!2smy', '2022-06-28 02:45:41', '2022-06-28 02:45:41'),
(23, 'Zoo Negara Malaysia Selangor', 'The National Zoo is a zoo in Malaysia located on 110 acres of land in Ulu Klang, Gombak District, Selangor, Malaysia. It was officially opened on 14 November, 1963 by the country\'s first prime minister, Tunku Abdul Rahman.', '6.9', '9AM - 5PM(Open daily)', 'RM45 for adult, RM18 for child', '2ea718e19e0287d1ba8e07af9aa389b9.jpg', 'zoo_1605601961.jpg', '1106771.jpg', 'zoo-negara-skinny-lion-feature-image.jpg', 'Giant_Panda_Conservation_Centre_in_Zoo_Negara_Malaysia_2021_(6).jpg', '4', 'Jalan Taman Zooview, Taman Zooview, 68000 Ampang, Selangor', 'https://www.zoonegaramalaysia.my/openinghours.html', '03-4108 3422', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.563554965513!2d101.7569466144259!3d3.208657297663811!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc39b60a831fe1%3A0xf2c800c702db7b2f!2sZoo%20Negara%20Malaysia!5e0!3m2!1sen!2smy!4v1656413350236!5m2!1sen!2smy', '2022-06-28 02:53:00', '2022-06-28 02:53:00'),
(24, 'Sunway Lagoon Theme Park', 'The Sunway Lagoon is an amusement park in Bandar Sunway, Subang Jaya, Selangor, Malaysia owned by Sunway Group.', '9.0', '10AM - 6PM(Closed on Tuesday)', 'RM145 for adult, RM120 for child', 'IMG_20180918_120840869_HDR.jpg', '744787.jpg', '1649917984148eC5m.jpg', '16499178524659Xx3.jpg', 'Amusement-Park-0075-1.webp', '4', '3, Jalan PJS 11/11, Bandar Sunway, 47500 Subang Jaya, Selangor', 'https://eticket.sunwaylagoon.com/webstore/shop/viewItems.aspx?cg=ENGSLSB&c=MSIA', '03-5639 0000', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.0952714647697!2d101.60483796467345!3d3.0692108477649565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4c88dded3125%3A0xdb654cc77af0cdbc!2sSunway%20Lagoon!5e0!3m2!1sen!2smy!4v1656413802122!5m2!1sen!2smy', '2022-06-28 03:14:18', '2022-06-28 03:14:18'),
(244, 'Rawa Island Resort', 'Welcome to Rawa Island Resort, an idyllic Malaysia tropical island resort popular with families looking to unwind from the stress and strain of modern life. Feel the grains of white, sun-baked sand between your toes as you stroll along the beach. Take a dip in the warm waters of the South China Sea. Enjoy the green scenery. Snorkel along the natural coral reef just metres from the shore. Or simply relax as you watch the sun disappear lazily over the orange horizon.', '9', 'Available for booking', 'Price range: from 1035 MYR (one night for 3 person)', 'about3.jpg', 'AAC_3219_1.jpg', 'Waterfront Exterior.jpg', 'Waterfront 3 Bedroom (1D).jpg', 'SPA5_0.png', '2', 'Rawa Island Resort Sdn Bhd, Tourist Centre, Jalan Abu Bakar, 86800 Mersing, Johor, Malaysia', 'https://live.ipms247.com/booking/book-rooms-rawaislandresort', '+607 799 1204 / +607 799 1205', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7972.437922958692!2d103.839201!3d2.43392!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf9b1873b07a9827c!2sRawa%20Island%20Resort%2C%20Reservation%20Office!5e0!3m2!1szh-CN!2smy!4v1657442194053!5m2!1szh-CN!2smy', '2022-07-10 00:37:16', '2022-07-10 00:37:16'),
(245, 'ECO HAUS Garden Residential', 'Featuring a terrace, ECO Haus Garden Residential is a holiday home, situated in Johor Bahru. The property boasts views of the garden and is 12 km from Angry Birds Activity Park. Free WiFi is offered . The kitchen is fitted with a dishwasher. A flat-screen TV with satellite channels is featured. Free private parking is available at the holiday home. TGV Bukit Indah is 800 metres from ECO Haus Garden Residential, while AEON Bukit Indah is 800 metres from the property. Senai International Airport is 18 km away.', '8.1', 'Available for booking', 'Price range: from 975 MYR (one night)', '0c1485c5-5a2f-4503-b8cc-ac6bd67a0285.jpg', '164264474.jpg', '52c59534-0da4-4882-b48c-4000afb3852f.jpg', '8daf3162-d990-4d33-92c8-ef1ab795c91f.jpg', '7900ac7e-ef22-4362-82f4-8b5fb965513d.jpg', '2', '61, Jalan Indah 12/8, Taman Bukit Indah, 81200 Johor Bahru, Johor', 'https://sg.trip.com/hotels/johor-bahru-hotel-detail-9644272/eco-haus-garden-residential-johor-bahru/?allianceid=30074&sid=7050327&ppcid=ckid-_adid-_akid-_adgid-_cid-14157325919&utm_source=google&utm_medium=cpc&utm_campaign=GG_SE_SG_en_Hotel_NA_NA_PMAX&gclid=Cj0KCQjwzqSWBhDPARIsAK38LY86dwKh-UZQOFE5q-GzDt_IC7gYFveYYeqGhrgg5nGIeizKRyT7tpIaAsN_EALw_wcB', '016-694 8325', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.4954078800633!2d103.6518213147542!3d1.475497998923939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da0cb47dfb039b%3A0xd24f2cc61ee700dc!2sECO%20HAUS%20Garden%20Residential!5e0!3m2!1sen!2smy!4v1657442930198!5m2!1sen!2smy', '2022-07-10 00:49:23', '2022-07-10 00:49:23'),
(246, 'Grand Medini Suites by Greatday', 'Located in Nusajaya, Grand Medini Apartment offers a hot tub and sauna. The apartment has a kitchen, a separate communal open plan with balcony and private bathroom.  The apartment is a 20-minute drive from Nanyang Technological University and a 30-minute drive from Sultan Ismail Intl Airport. Puerto Princesa is just 2.2 km away. Legoland Malaysia is within a few minutes\' walk away.  All rooms have pool view.', '8.0', 'Available for booking', 'RM198 for one night(Available for 2 adults)', 'Grand Medini Suites by Greatday.jpg', 'Grand Medini Suites by Greatday (3).jpg', 'Grand Medini Suites by Greatday (4).jpg', 'Grand Medini Suites by Greatday (5).jpg', 'Grand Medini Suites by Greatday (6).jpg', '2', 'Jalan Medini Utara 8 Grand Medini, Nusajaya', 'https://www.booking.com/hotel/my/grand-medini-nusajaya1.html?aid=1258472&checkin=2022-07-13&checkout=2022-07-14&dest_id=900051684&dest_type=city&group_adults=2&group_children=0&label=Share-Jf6uHc%401657469941&no_rooms=1&req_adults=2&req_children=0&room1=A%2CA', '07-5096161', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5831652406227!2d103.6373226147541!3d1.4257159989602208!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da0c75d449790f%3A0xc01796f21286a460!2sGrand%20Medini%20Residence!5e0!3m2!1sen!2smy!4v1657514708116!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2022-07-10 20:50:46', '2022-07-10 20:50:46'),
(247, 'Laman Mahkota Istana Bukit Serene', 'Istana Bukit Serene is the royal palace and official residence of the Sultan of Johor. Istana Bukit Serene was a gift from the Johor government to the late Sultan Ibrahim Sultan Abu Bakar in conjunction with the ruler???s 40th anniversary as the sultan of Johor.  Johor Military Force guards the palace and acts as a protective layer to the Sultan of Johor. This palace which acts as the residence of the Sultan has been the place of interest for tourists all around the world. They love taking great pictures of this historic building. However, the palace is not open to public.', '4.5', '24 hours(Open daily)', 'FREE', 'Istana Bukit Serene.jpg', 'Istana Bukit Serene (2).jpg', 'Istana Bukit Serene (3).jpg', 'Istana Bukit Serene (4).jpg', 'Istana Bukit Serene (5).jpg', '1', 'Jalan Kolam Air, Bukit Serene, 80200 Johor Bahru, Johor', 'https://www.tripadvisor.com.my/Attraction_Review-g298278-d13155632-Reviews-Istana_Bukit_Serene-Johor_Bahru_Johor_Bahru_District_Johor.html', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.4831803946936!2d103.72033831427554!3d1.4823015989189807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da72aea85a292b%3A0xdf322737ba55c58c!2sLaman%20Mahkota%20Istana%20Bukit%20Serene!5e0!3m2!1sen!2smy!4v1657522570399!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2022-07-10 23:00:25', '2022-07-10 23:00:25'),
(248, 'Arulmigu Sri Rajakaliamman Glass Temple', 'The temple, one of Johor Bahru???s oldest Hindu temples, is situated next to the railway tracks between Jalan Tun Abdul Razak and Jalan Mohd Taib (or close to the Tebrau Highway). It started in 1922 as a simple shelter on land presented by the Sultan of Johor. Between 2008 and 2009, the temple was fitted with glass surfaces and ornaments. Some 90 percent of the temple\'s surfaces are covered in clear and colored glass.', '4.3', '1PM-5PM', 'FREE', 'Arulmigu Sri Rajakaliamman Glass Temple.jpg', 'Arulmigu Sri Rajakaliamman Glass Temple (2).jpg', 'Arulmigu Sri Rajakaliamman Glass Temple (3).jpg', 'Arulmigu Sri Rajakaliamman Glass Temple (4).jpg', 'Arulmigu Sri Rajakaliamman Glass Temple (5).jpg', '1', 'Jalan Tun Abdul Razak 1/1, Wadi Hana, 80300 Johor Bahru, Johor', 'https://www.tripadvisor.com.my/Attraction_Review-g298278-d2337575-Reviews-Arulmigu_Sri_Rajakaliamman_Glass_Temple-Johor_Bahru_Johor_Bahru_District_Johor.html', '07-2245152', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5078959103894!2d103.75756571475415!3d1.4685168989290303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12cf69335e0f%3A0xbfde6877a54a647b!2sArulmigu%20Sri%20Rajakaliamman%20Glass%20Temple!5e0!3m2!1sen!2smy!4v1657524436787!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2022-07-10 23:36:03', '2022-07-10 23:54:19'),
(249, 'Chinese Heritage Museum', 'The Chinese Heritage Museum tells the history of the Chinese community in Johor Bahru (formerly known as Tanjung Puteri). When the Chinese settled in Johor Bahru, they brought along their cultural practices. The Chinese Heritage Museum is thus dedicated to preserving the cultural heritage of the Johor Bahru Chinese so as not to be lost or forgotten in the name of modernity.', '4.3', '9AM - 5PM, closed on Monday', 'RM 5 for adults, RM 2 for children/seniors', 'Chinese-Heritage-Museum.jpg', 'chinese-heritage-museum (1).jpg', 'chinese-heritage-museum (2).jpg', 'chinese-heritage-museum (3).jpg', 'chinese-heritage-museum (4).jpg', '1', '42, Jalan Ibrahim, Bandar Johor Bahru, 80000 Johor Bahru, Johor', 'https://www.tripadvisor.com/Attraction_Review-g298278-d3822701-Reviews-Chinese_Heritage_Museum-Johor_Bahru_Johor_Bahru_District_Johor.html', '07-2249633', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63816.479741370684!2d103.69314175820311!3d1.456087300000028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da12e8871ecdc1%3A0x33e8e965175ed357!2sJohor%20Bahru%20Chinese%20Heritage%20Museum!5e0!3m2!1sen!2smy!4v1657525417353!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2022-07-10 23:49:24', '2022-07-10 23:49:24'),
(250, 'Blue Ice Skating Rink Paradigm Johor', 'Experience ice skating at the first and largest ice rink in Johor. Visitors can roam and show off their ice skating skills on 20,000 square feet of real ice, and they also offer coaching for Figure Skating, Ice Hockey and Speed Skating.', '4.4', '10AM-10PM', '(RM30 Monday-Thursaday),  (RM 35 Friday-Sunday, Public Holiday)', 'Blue Ice Skating Rink  Paradigm.jpg', 'Blue Ice Skating Rink  Paradigm (2).jpg', 'Blue Ice Skating Rink  Paradigm (3).jpg', 'Blue Ice Skating Rink  Paradigm (4).jpg', 'Blue Ice Skating Rink  Paradigm(5).jpeg', '3', '3F-30 Paradigm Mall Johor, Skudai Lbh, 81200, Johor', 'https://www.tripadvisor.com.my/Attraction_Review-g298278-d13614755-Reviews-Blue_Ice_Skating_Rink-Johor_Bahru_Johor_Bahru_District_Johor.html', '011-62300366', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.420244899074!2d103.68313631475421!3d1.5168374988938225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da72ff7dc1b2b5%3A0xde78ec01e1d2da26!2sBlue%20Ice%20Skating%20Rink%20%40%20Paradigm%20Mall%20Johor%20Bahru!5e0!3m2!1sen!2smy!4v1657526812872!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2022-07-11 00:48:13', '2022-07-11 00:48:13'),
(252, 'Jump Street JB Austin Heights', 'Custom-built to maximize the varieties of attraction and catering for individuals with different levels of fitness, the indoor trampoline centre consists of Main Courts, Dodge Ball Court, SlamDunk, High-Performance Area, Foam Pit, and Air Bag. Jump Street indoor trampoline centre also offers healthy snack bars and is available for events, and fitness and fun classes.', '3.7', '9AM - 6PM, closed on Wednesday', 'RM 25', 'Jump Street JB Austin Heights.jpg', 'Jump Street JB Austin Heights (2).jpg', 'Jump Street JB Austin Heights (3).jpg', 'Jump Street JB Austin Heights (4).jpg', 'Jump Street JB Austin Heights (5).jpg', '3', '81100 Johor Bahru, Johor', 'https://ticket.funtime.my/OnlineTicketing/Selection2.aspx', '03-79691051', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.337653477495!2d103.77318591475434!3d1.5610009988616516!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da6e87f674070f%3A0x6c971f6006046d03!2sJump%20Street%20JB%20Austin%20Heights!5e0!3m2!1sen!2smy!4v1657532450937!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', '2022-07-11 04:38:26', '2022-07-11 04:38:26'),
(253, 'Stars Archery Paradigm Johor', 'The largest indoor archery range operator in Malaysia at Paradigm Mall, Johor Bahru Skudai Shoot an arrow under the surveillance of qualified and experienced archery instructors. Indulge in a gratified archery experience, perfect for beginners. Have fun in a safe and conducive environment for indoor archery.', '4.7', '10AM-8PM', 'RM 14 One Person', 'Stars Archery Paradigm Johor.jpg', 'Stars Archery Paradigm Johor (2).jpg', 'Stars Archery Paradigm Johor (3).jpg', 'Stars Archery Paradigm Johor (4).webp', 'Stars Archery Paradigm Johor (5).webp', '3', 'Jalan Bertingkat Skudai, Taman Bukit Mewah, 81200 Johor Bahru, Johor, Malaysia.', 'https://www.traveloka.com/en-my/activities/malaysia/product/stars-archery-at-paradigm-mall-johor-bahru-skudai-2000465308695', '07-2306688', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.4790492510347!2d103.71555101475417!3d1.484593198917313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da739c4b45daa9%3A0xc6d3e77408a42ae1!2sStars%20Archery%20Sdn%20Bhd!5e0!3m2!1sen!2smy!4v1657545965776!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', '2022-07-11 05:32:35', '2022-07-11 05:34:16'),
(254, 'Nadi Equestrian Center & Rider???s Resort', 'Horse Riding experience the leisure of a groom led horse or pony ride along a smooth tropical palm plantation trail or within our riding ring. Let the momentum of riding a horse at walk calm your senses in this excellent introduction to horse riding or as a calming or therapeutic activity.', '4.2', 'Tue - Thu & Sun 8AM - 5PM ,Sat 8AM -12PM cosed on Mon - Fir', 'RM 120', 'Nadi Equestrian Center & Rider???s Resort.jpg', 'Nadi Equestrian Center & Rider???s Resort (1).png', 'Nadi Equestrian Center & Rider???s Resort (2).jpg', 'Nadi Equestrian Center & Rider???s Resort (3).jpg', 'Nadi Equestrian Center & Rider???s Resort (4).jpg', '4', 'Jalan Ladang, 81310 Skudai, Pejabat Pos Universiti Teknologi Malaysia, Johor, Malaysia', 'https://www.ridersresort.com.my/horses/', '017-3392434', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2041220.9566179991!2d101.60694682875642!3d2.243638901209067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d081bde43bd445%3A0xca69be5d2d0d3c00!2sRiders%20Resort!5e0!3m2!1sen!2smy!4v1657551236420!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', '2022-07-11 07:27:12', '2022-07-11 08:26:15'),
(255, 'Atv Park Johor', 'ATV Park Johor Bahru offers one of the largest ATV trails in JB, with experienced guides that???ll teach you the fundamentals of navigating your way on an ATV.Before you mount the monstrous vehicle, you???ll first don on a hairnet and safety helmet. PCK-style boots are available, but not compulsory ??? we???d recommend wearing them still as you???ll be going through some muddy terrain. Also, it???s extra protection from the scorching sun. You???ll begin your journey with 1-2 test runs around the starting point, just so you get the hang of controlling the ATV. After which, you???ll be in for the real deal ??? mud-caked roads, uphill paths and knee-high wade pools to zoom through.', '4.9', '9 AM - 10 PM', 'RM 150', 'ATV Park Johor Bahru.jpg', 'ATV Park Johor Bahru (2).jpg', 'ATV Park Johor Bahru (3).jpg', 'ATV Park Johor Bahru (4).jpg', 'ATV Park Johor Bahru (5).jpg', '4', 'Lorong Ciku, Kampong Baru Sri Aman, 81300 Johor Bahru, Johor, Malaysia', 'https://www.facebook.com/atvparkjohor/', '012-7231250', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d255265.0613144012!2d103.48777383443337!3d1.4636409588182997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da71232009b6e3%3A0x99d12aeeb138d1c1!2sAtv%20Park%20Johor%20(Seelong%20Trail)!5e0!3m2!1sen!2smy!4v1657554772631!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', '2022-07-11 07:54:10', '2022-07-11 07:54:10'),
(256, 'Tristan Park', 'Tristan Park Dirt Bike Clinic is a fun, one-day, hands-on clinic for anyone who???s 8 years old and above. It is the perfect trial session. Learn basic riding skills on a dirt bike or pit bike in a safe and controlled environment with our instructors who will instruct and guide you every step of the way.', '4.2', '9AM - 12:30PM , or 1PM - 4PM', 'RM 50', 'Tristan Park.png', 'Tristan Park (2).png', 'Tristan Park (3).jpg', 'Tristan Park (4).jpg', 'Tristan Park (5).png', '4', '21 Jalan Kekabu 11, Taman Desa Cemerlang, 81800 Ulu Tiram, Johor, Malaysia', 'https://www.tripadvisor.com/Attraction_Review-g298278-d8600325-Reviews-Tristan_Park-Johor_Bahru_Johor_Bahru_District_Johor.html', 'Not Provided', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.3306855579362!2d103.81581201475423!3d1.5646698988589705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da6eb3a6707d5b%3A0x426e3cc553e9b8a1!2sTristan%20Park%20-%20Center!5e0!3m2!1sen!2smy!4v1657556105224!5m2!1sen!2smy\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2022-07-11 08:23:27', '2022-07-11 08:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(7, 'post', 'Post', 'The above example creates three equal-width columns on small, medium, large, and extra large devices using our predefined grid classes. Those columns are centered in the page with the parent .container.', '62c9a699a01b2-Post.jpg', '2022-07-09 08:02:33', '2022-07-09 08:02:33', 9),
(8, 'new-post', 'New Post', 'Containers provide a means to center and horizontally pad your site???s contents. Use .container for a responsive pixel width or .container-fluid for width: 100% across all viewport and device sizes.', '62c9a6c4dabcd-New Post.jpg', '2022-07-09 08:03:16', '2022-07-09 08:03:16', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'johndoe@hotmail.com', NULL, '$2y$10$KZXSwQbGSfR5Mt2orgPXMewsL9LNfomAfzRR4LvyTnqsbSdpQr9Ci', NULL, '2022-06-23 03:21:53', '2022-06-23 03:21:53'),
(2, 'den', 'den4300@gmail.com', NULL, '$2y$10$ro.kmi8bNiezTjgRbeXav.Zn20OJK5L2ZRWoXHx8klfBakI9Isja.', NULL, '2022-06-23 23:25:32', '2022-06-23 23:25:32'),
(3, 'Eugene', 'eugenefong2002@gmail.com', NULL, '$2y$10$rl3xb1l8iwjQl8SWoc4hHufmNdho5Cf/7PGZVx6DDK6B5/CGLLC8y', 'ba3tkUlRm5Tr9isSMU5MzMmsTVsqKO5qSzrSyByqqx9rrynMdxKQs0V1luFD', '2022-06-24 05:04:55', '2022-06-24 05:04:55'),
(9, 'cheng', 'cheng123@gmail.com', NULL, '$2y$10$.z7X4Dn7AdmIJFEPsoGLru/gFyuMndqw4wZY3JpBKdHja3DhUmAUa', NULL, '2022-07-05 00:16:54', '2022-07-05 00:16:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
