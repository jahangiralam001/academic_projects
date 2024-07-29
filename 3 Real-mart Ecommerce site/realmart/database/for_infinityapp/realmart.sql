-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 07:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(31, 37, 2, 1),
(32, 37, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Beverage', 'Beverage'),
(2, 'Fresh Food', 'Fresh Food'),
(3, 'Grocery', 'Grocery'),
(4, 'Bakery & Snacks', 'Bakery'),
(6, 'Cooking Oil & Ghee', 'Cooking Oil'),
(7, 'Beauty & Hygiene', 'Beauty');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `messages` varchar(7553) NOT NULL,
  `response` varchar(7553) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `messages`, `response`) VALUES
(0, 'hi|hello|hey', 'Hello,How can i help you.'),
(1, 'How are you?|how are you|how you doing', 'I am fine thank you'),
(2, 'Services|How can i get services|help|help!', 'Ask me what you want to know'),
(3, 'Payment| Payment Methods| How can I pay| i have payment issue|how can i make payment', 'You can pay using credit-card or Paypal'),
(4, 'Account| How can I create Account', 'You just need a valid mail to create an account'),
(5, 'Signup issue| cannot create account |can not create account', 'If you are unable to register this usually means 1 of  3 things. You don;t have JavaScript enable, you or someone already made an account on this computer previously or you\'re trying create a 2nd account with the same email address. What is exact error?'),
(6, 'Delivery| Delivery Options | How will I get my product', 'You will get your product via courier'),
(7, 'Login| Can not login| Login error| Cannot login', 'It happens! keep in mind your login is a username or email. Please retype and try again or rest for reset password');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 12, 10, 1),
(22, 13, 29, 1),
(23, 13, 10, 4),
(24, 13, 9, 1),
(25, 14, 9, 1),
(26, 15, 5, 1),
(27, 16, 11, 2),
(28, 16, 7, 2),
(29, 17, 28, 4),
(30, 18, 2, 1),
(31, 18, 1, 1),
(32, 19, 1, 1),
(33, 19, 2, 1),
(34, 20, 2, 7),
(35, 20, 3, 1),
(36, 21, 8, 3),
(37, 22, 2, 1),
(38, 22, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `feedback` varchar(256) NOT NULL,
  `suggestion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `feedback`, `suggestion`) VALUES
(2, 'cbvx', 'asiflzwd@gmail.com', 'bcvxb', 'neutral', 'bcvb'),
(3, 'asif', 'asiflzwd@gmail.com', '013', 'neutral', 'gdfsg'),
(4, 'zawad', 'admin@admin.com', '1223', 'good', '123');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `FromUser` int(100) NOT NULL,
  `ToUser` int(100) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `FromUser`, `ToUser`, `Message`) VALUES
(32, 1, 1, 'what?\n'),
(33, 1, 16, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'SUNDROP MANGO FRUIT DRINK 500ML', '<ul>\r\n	<li>Product Type:&nbsp;SUNDROP MANGO FRUIT DRINK -500ML&nbsp;</li>\r\n	<li>Brand :Pran</li>\r\n	<li>Weight:500ml</li>\r\n	<li>Fresh and good quality product</li>\r\n</ul>\r\n', 'sundrop-mango-fruit-drink-500ml', 45, 'sundrop-mango-fruit-drink-500ml_1661805626.jpg', '2022-09-19', 3),
(2, 1, 'Mirinda Orange Pet 1 Ltr', '<p>Mirinda Orange Pet 1 Ltr</p>\r\n', 'mirinda-orange-pet-1-ltr', 60, 'mirinda-orange-pet-1-ltr_1661806151.jpg', '2024-07-29', 3),
(3, 1, 'Pran Low Fat Milk 500ml', '<p>Collected from homestead dairy farmers across Bangladesh every day, the milk is pasteurized to keep it healthy, fresh-tasting and flavorful.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'pran-low-fat-milk-500ml', 75, 'pran-low-fat-milk-500ml_1661805559.png', '2024-07-29', 3),
(4, 1, 'Tang Mango Jar 2.5kg', '<p>This is a&nbsp;<strong>Vegetarian</strong>&nbsp;product.</p>\r\n\r\n<p>Filled With Goodness Of Mango</p>\r\n\r\n<p>Beat This Summer With The Easy To Prepare And Refreshing Taste Of Tang</p>\r\n\r\n<p>This Is A Vegetarian Product.</p>\r\n', 'tang-mango-jar-2-5kg', 1500, 'tang-mango-jar-2-5kg_1661806003.jpg', '2018-05-10', 3),
(5, 3, 'Le Blanc Sunflower Oil 1liter', '<ul>\r\n	<li>It supplies some monounsaturated fat (20 percent) and is low in saturated fat (11 percent), making it an overall&nbsp;heart-healthy option. Sunflower oil is a good all-purpose oil because it can withstand high cooking temperatures.</li>\r\n	<li>Sunflower oil has many health benefits because it is low in&nbsp;<a href=\"https://www.webmd.com/cholesterol-management/qa/what-foods-have-saturated-fats\">saturated fat</a>&nbsp;and high in two types of fatty acids, polyunsaturated fatty acids and monounsaturated fatty acids.</li>\r\n</ul>\r\n', 'le-blanc-sunflower-oil-1liter', 455, 'le-blanc-sunflower-oil-1liter_1661802965.jpg', '2022-09-16', 1),
(6, 1, 'Pepsi', '<p>Pepsi</p>\r\n', 'pepsi', 50, 'pepsi_1661805495.jpg', '2022-09-19', 1),
(7, 3, 'Green Park Mushrooms Whole 425gm', '<p>Mushroom 425gm Green Park</p>\r\n', 'green-park-mushrooms-whole-425gm', 125, 'green-park-mushrooms-whole-425gm_1661802881.jpg', '2022-09-16', 2),
(8, 1, 'coke', '<p>coca cola</p>\r\n', 'coke', 50, 'coke_1661805465.jpg', '2024-07-29', 2),
(9, 2, 'Premium Maryam Dates - 500 Gm', '<ul>\r\n	<li>Premium Maryam Dates - 500 g the fruit of the date palm tree.</li>\r\n	<li>This is 100% organic and chemical free product. It is fully organic, imported from Iran and Saudi Arabia without any quality loss.&nbsp;</li>\r\n	<li>It contains rich vitamins and minerals.</li>\r\n	<li>Taste of Premium Maryam Dates - 500 g feels like enjoying a soft chocolate.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'premium-maryam-dates-500-gm', 510, 'premium-maryam-dates-500-gm_1661806887.jpg', '2022-09-16', 2),
(10, 2, 'Dragon Fruits Local Bulk', '<ul>\r\n	<li>It&#39;s rich in antioxidants like flavonoids, phenolic acid, and betacyanin. ...</li>\r\n	<li>It&#39;s naturally fat-free and high in fiber. ...</li>\r\n	<li>It may help lower your blood sugar. ...</li>\r\n	<li>It contains prebiotics, which are foods that feed the healthy bacteria called probiotics in your gut. ...</li>\r\n	<li>It can strengthen your immune system.</li>\r\n</ul>\r\n', 'dragon-fruits-local-bulk', 440, 'dragon-fruits-local-bulk_1661805751.jpg', '2022-09-16', 3),
(11, 2, 'Banana (Bangla) Ripe Regular Pcs', '<p>Bananas are a&nbsp;healthy source of fiber, potassium, vitamin B6, vitamin C, and various antioxidants and phytonutrients.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'banana-bangla-ripe-regular-pcs', 10, 'banana-bangla-ripe-regular-pcs_1661805875.jpg', '2022-09-16', 1),
(12, 2, 'Meat', '<p>Beef(???? ????) is the flesh of livestock. It is known as red meat, a term used for mammalian meat that contains greater quantities of iron than chicken or fish. Beef(???? ????) is also commonly ground or minced, usually eaten as roasts, ribs, or steaks. In hamburgers, patties of ground beef are also used. Beef items that are processed include corned beef, beef jerky, and sausages.</p>\r\n\r\n<p>Different vitamins and minerals, especially iron and zinc, are rich in fresh, lean beef. Moderate beef(???? ????) intake can, therefore, be recommended as part of a healthy diet.</p>\r\n\r\n<p>Beef(???? ????) can be cooked in many ways. Grilling, Barbecue, Broiling, Griddle, Roasting are most popular way to cook beef.</p>\r\n\r\n<p>Grilling:</p>\r\n\r\n<p>Cook the beef(???? ????), usually in excess of 340 &deg;C (650 &deg;F), over or under a strong radiant heat source. This contributes to the searing of the beef surface, which produces a crust that is flavorsome. Grilling, particularly over charcoal, is often referred to as barbecuing in Australia, New Zealand, the United States, Canada, the United Kingdom, Germany, and the Netherlands, sometimes abbreviated to &#39;BBQ.&#39; This technique may also be called charbroiling when cooked over charcoal.</p>\r\n\r\n<p>Barbecue:</p>\r\n\r\n<p>A cooking method involving cooking meat at low temperatures with smoke from a wood fire for long periods of time.</p>\r\n\r\n<p>Broiling:</p>\r\n\r\n<p>A description used in North America. It is similar to grilling but still above the meat with the heat source. This is considered a style of grilling elsewhere.</p>\r\n\r\n<p>Griddle:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meat can be cooked on a hot metal griddle. In order to inhibit sticking, a little oil or fat can be added; the dividing line when the method becomes shallow frying is not well recognized</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef(???? ????) Provides a Large Source of L-Carnitine</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bones themselves are rich in vitamins and nutrients, including calcium, magnesium, and phosphorus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef (???? ????)Provides the &ldquo;Master Antioxidant&rdquo; Glutathione.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef is High in Protein and Helps Improve Muscle Mass</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef is Extremely Rich in Minerals</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eating Beef Helps Prevent Iron Deficiency Anemia</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beef Contains Carnosine, a Potent Amino Acid.</p>\r\n', 'meat', 749.99, 'meat_1661806089.jpg', '2018-05-12', 3),
(13, 2, 'Pineapple Regular Pcs', '<ul>\r\n	<li>Pineapples are tropical fruits that are rich in vitamins, enzymes, and antioxidants.</li>\r\n	<li>They may help boost the immune system, build strong bones, and aid indigestion. And, despite their sweetness, pineapples are low in calories.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'pineapple-regular-pcs', 60, 'pineapple-regular-pcs_1661805930.jpg', '2018-05-12', 1),
(14, 2, 'Kenu-Orange Australian', '<p>The &#39;Kinnow&#39; is a high yield mandarin hybrid cultivated extensively in the wider Punjab region of India and Pakistan. It is a hybrid of two citrus cultivars &#39;King&#39; (Citrus nobilis) &times; &#39;Willow Leaf&#39; (Citrus &times; deliciosa) first developed by Howard B. Frost, at the University of California Citrus Experiment Station.</p>\r\n', 'kenu-orange-australian', 330, 'kenu-orange-australian_1661806075.jpg', '2018-05-10', 13),
(15, 2, 'Apple Golden S.Africa Bulk', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>High in vitamin C (6mg per 100g)</p>\r\n	</li>\r\n	<li>\r\n	<p>Low in fat and do not contain any cholesterol</p>\r\n	</li>\r\n	<li>\r\n	<p>High in dietary fiber (1.8g per 100g)</p>\r\n	</li>\r\n	<li>\r\n	<p>A good source of potassium (120mg per 100g)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'apple-golden-s-africa-bulk', 375, 'apple-golden-s-africa-bulk_1661806951.jpg', '2018-07-09', 1),
(16, 2, 'PUMPKIN GREEN [SWEET GOURD] PCS', '<ul>\r\n	<li>PUMPKIN GREEN [SWEET GOURD] is rich in vitamins&nbsp;A,&nbsp;C, D, E, K, B1, B2, B3, B6 and minerals such as potassium, calcium, iron, phosphorus, selenium, zinc, magnesium, boron, cobalt.</li>\r\n	<li>It has &nbsp;excellent taste and various way to prepare it.</li>\r\n	<li>It is perfect for human nutrition.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'pumpkin-green-sweet-gourd-pcs', 90, 'pumpkin-green-sweet-gourd-pcs_1661806817.jpg', '2018-05-10', 2),
(17, 3, 'SHUKRAN 100% CHINIGURA RICE 1KG', '<p>A hygenically maintained rice produced and processed by automated machines.</p>\r\n', 'shukran-100-chinigura-rice-1kg', 150, 'shukran-100-chinigura-rice-1kg_1661802479.jpg', '2018-05-12', 1),
(18, 3, 'PRAN FISH MASALA PACK 20GM', '<p>PRAN Fish Masala is an easy mix of spices and herbs to make fish curry. This takes much less time to make and adds much more flavor to the curry.</p>\r\n', 'pran-fish-masala-pack-20gm', 14, 'pran-fish-masala-pack-20gm_1661802570.jpg', '2018-05-12', 2),
(19, 3, 'SUNSHINE MAIDA 2KG', '<p>Eat in your daily breakfast</p>\r\n', 'sunshine-maida-2kg', 99.99, 'sunshine-maida-2kg_1661802687.jpg', '2018-05-10', 1),
(20, 3, 'PRAN HOT TOMATO SAUCE 750GM', '<p>Pran hot Tomato sauce is rich in vitamins. Vitamin A works well not only for the eyes, but also for the skin, bones, and teeth.</p>\r\n', 'pran-hot-tomato-sauce-750gm', 145, 'pran-hot-tomato-sauce-750gm_1661805418.jpg', '2018-05-12', 1),
(27, 1, 'SEYLON FAMILY BLEND TEA POLY 100GM', '<p>Seylon Tea is produced from best tea leaves of the finest tea gardens. Seylon is a refreshing and reviving infusion. Seylon tea with its distinct taste and character has now become every consumer?s favorite tea.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'seylon-family-blend-tea-poly-100gm', 50, 'seylon-family-blend-tea-poly-100gm_1661805800.jpg', '2018-07-09', 9),
(28, 4, 'SWEETS PLAIN CAKE 450GM', '<p>SWEETS PLAIN CAKE 450GM</p>\r\n', 'sweets-plain-cake-450gm', 225, 'sweets-plain-cake-450gm_1661807132.jpg', '2022-09-16', 5),
(29, 4, 'SUNFEAST D FANTASY CHOCO FILLS BIS 300G', '<p>An exquisite combination of luscious chocolate filling enrobed within a perfectly baked rich cookie outer</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; An offer that fully epitomizes the brand promise of pure indulgence</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sunfeast dark fantasy choco fills is the latest and the most premium offering from the portfolio of sunfeast</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sunfeast-d-fantasy-choco-fills-bis-300g', 420, 'sunfeast-d-fantasy-choco-fills-bis-300g_1661807047.jpg', '2022-09-16', 3),
(30, 1, 'Maccoffee 3in1 White Coffee Sachets 15gm', '<ul>\r\n	<li>This is like most classics; part of its appeal comes from its simplicity.</li>\r\n	<li>MacCoffee 3 in 1 Original is simply a blend of premium coffee beans, non-dairy creamer and sugar.</li>\r\n	<li>It offers a unique and distinct flavor that is rich, smooth and deeply aromatic.</li>\r\n</ul>\r\n', 'maccoffee-3in1-white-coffee-sachets-15gm', 15, 'maccoffee-3in1-white-coffee-sachets-15gm.jpg', '0000-00-00', 0),
(31, 1, 'Lovello Stick Premium Crunchy Bar -Mega 71 Ml', '<ul>\r\n	<li>cruncy</li>\r\n	<li>mega size</li>\r\n</ul>\r\n', 'lovello-stick-premium-crunchy-bar-mega-71-ml', 35, 'lovello-stick-premium-crunchy-bar-mega-71-ml.jpg', '0000-00-00', 0),
(32, 6, 'Olitalia Sunflower Oil 5ltr', '<p><strong>&nbsp;This product is not available for coupon</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sunflower oil is obtained by pressing and extraction from the sunflower seeds (Helianthus annus L.) and further refining.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sunflower oil contains phytochemicals such as choline and phenolic acid, which studies have found to be beneficial for the heart.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ideal for the preparation of sauces, side dishes, vegetable preserves, and base for emulsions.</p>\r\n	</li>\r\n</ul>\r\n', 'olitalia-sunflower-oil-5ltr', 120, 'olitalia-sunflower-oil-5ltr.jpg', '0000-00-00', 0),
(33, 6, 'Rupchanda Soyabean Oil Pet 5ltr', '<p>Why Soybean oil?</p>\r\n\r\n<p>Cooking Lovers Know the importance of soybean oil. Most of the people in our country cook their foods with soybean oil. Consumers are becoming accustomed to cooking food in soybean oil day by day due to proper nutrition. Soybean is also one of the best ingredients in vegetable protein. Soybean is now the most widely used edible oil in food and cooking.</p>\r\n\r\n<p>Soybean helps our body reduce harmful cholesterol and contains Vitamin-B complex, an essential element for the human body. It has the best sources of thiamine, niacin, folic acid, and riboflavin. These vitamins are beneficial for those who are suffering from heart and liver problems. Fiber-rich soybean is very effective in keeping the heart and liver active. Like eggs, meat, and dairy products, soybean contains protein equivalent to animal protein. Also, the amount of fat in soybeans is low. Vitamin-E and lecithin in it prevent anti-aging and boost the body&#39;s immune system. Every 100 grams of soybean contains 260 mg of magnesium, 26 mg of calcium, and 604 mg of phosphorus. These vitamins are beneficial for strengthening teeth and bones. The iron in it maintains the health of the blood in the human body.</p>\r\n\r\n<p>Regular soybean consumption reduces the risk of breast cancer in girls. Girls should eat more soybeans during adolescence. The isoflavones present in soybeans prevent the symptoms of menopause, prostate cancer. Soybean oil does not contain any saturated fat.</p>\r\n\r\n<p>Adolescent boys and girls have facial, throat rashes, and blackheads. Freckle falls on the face of many. Soybeans help to eliminate these. Soybean protein keeps the cerebral cortex of the brain fresh. It increases the ability of the brain to work. As a result, fatigue does not come easily. The lecithin in soybeans is a building block of the brain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thus, soybean increases the brain&#39;s efficiency&mdash;nine calories per 100 grams of soybean oil. So feel free to put soybeans on your daily food list. And you can also rely on soybean oil for cooking.</p>\r\n', 'rupchanda-soyabean-oil-pet-5ltr', 150, 'rupchanda-soyabean-oil-pet-5ltr.jpg', '0000-00-00', 0),
(34, 6, 'Aarong Ghee (200g)', '<ul>\r\n	<li>\r\n	<p>Ghee is one of the richest sources of Vitamins and minerals.</p>\r\n	</li>\r\n	<li>\r\n	<p>Aarong ghee made hygienically from fresh cream of pure cow milk.</p>\r\n	</li>\r\n	<li>\r\n	<p>Aarong ghee is best for preparing polao, korma, Biriyani, paratha, etc.</p>\r\n	</li>\r\n</ul>\r\n', 'aarong-ghee-200g', 330, 'aarong-ghee-200g.jpg', '2022-09-18', 1),
(35, 6, 'Span Oliva Extra Virgin Olive Oil 1ltr', '<ul>\r\n	<li>Span Oliva Extra Virgin Olive Oil is imported directly from Spain.</li>\r\n	<li>It contains polyphenols.</li>\r\n	<li>It act as antioxidants, reducing the oxidative stress throughout your body.</li>\r\n</ul>\r\n', 'span-oliva-extra-virgin-olive-oil-1ltr', 990, 'span-oliva-extra-virgin-olive-oil-1ltr.jpg', '0000-00-00', 0),
(36, 6, 'Radhuni Mustard Oil 1ltr', '<p>Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil.Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood</p>\r\n', 'radhuni-mustard-oil-1ltr', 500, 'radhuni-mustard-oil-1ltr.jpg', '0000-00-00', 0),
(37, 6, 'Red Cow Butter Oil 900g', '<ul>\r\n	<li>Red Cow Butter Oil 900g made from pure cow&#39;s milk.</li>\r\n	<li>It contains energy, protein, carbohydrate, and fat.</li>\r\n	<li>Ghee is one in ea of the richest food sources of nutrition Dap sang.</li>\r\n	<li>It is very important for dental and bone health.</li>\r\n	<li>Vitamin K works with vitamin D and calcium for optimal bone health.</li>\r\n</ul>\r\n\r\n<p>:</p>\r\n', 'red-cow-butter-oil-900g', 1170, 'red-cow-butter-oil-900g.jpg', '0000-00-00', 0),
(38, 7, 'Veet Hair Removal Cream Jasmine 100gm', '<ul>\r\n	<li>\r\n	<p>Effective hair removal in just 3-6 minutes</p>\r\n	</li>\r\n	<li>\r\n	<p>Removes short-stubborn hair from legs, arms, underarms and bikini line</p>\r\n	</li>\r\n	<li>\r\n	<p>Clinically proven to leave your skin moisturized for up to 24 hours</p>\r\n	</li>\r\n	<li>\r\n	<p>New fragrance technology is also designed to ensure that there is no lingering malodor</p>\r\n	</li>\r\n	<li>\r\n	<p>Comes with special skincare ingredient: Lotus milk, which is known for its skin softening and calming properties and the pleasant floral fragrance of jasmine</p>\r\n	</li>\r\n</ul>\r\n', 'veet-hair-removal-cream-jasmine-100gm', 300, 'veet-hair-removal-cream-jasmine-100gm.jpg', '0000-00-00', 0),
(39, 7, 'ORGANIKARE WINTER BODY BUTTER 200ML', '<p>Winter body butter is an ultra-rich body cream enriched with high concentration of naturally extracted coconut oil, aloe Vera pulp and Vitamin E oil. It deeply nourishes the skin while providing lasting hydration and is quickly absorbed to leave velvety soft skin. An effective remedy for all seasons.</p>\r\n', 'organikare-winter-body-butter-200ml', 144, 'organikare-winter-body-butter-200ml.jpg', '0000-00-00', 0),
(40, 7, 'HARMONY SOAP 70GM', '<p>This soap is produced 100% from natural ingredients. This is a product of the famous practiced by local girls there to take care of and maintain the health and beauty of their skin.</p>\r\n', 'harmony-soap-70gm', 220, 'harmony-soap-70gm.jpg', '2022-09-18', 1),
(41, 7, 'SAVLON OCEAN BLUE HANDWASH REF 200ML', '<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Brand: Savlon</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fragrance: Ocean Blue</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Size: 200 ml</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Savlon hand wash combines Savlon germ protection with various different aromas to help care for your skin.</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Available in original, soothing herbal, deo active fresh, gentle, and energizing citrus.</p>\r\n', 'savlon-ocean-blue-handwash-ref-200ml', 110, 'savlon-ocean-blue-handwash-ref-200ml.jpg', '0000-00-00', 0),
(42, 7, 'Pantene Prov Adv Hf Sol+ L Black Sha 650ml', '<p>Enjoy the rich lather of the fragrance-free, silicone-free shampoo, with a blend of pro vitamin B5 and antioxidants. The clarifying formula in this shampoo for oily hair&nbsp;removes excess oil and styling buildup, leaving locks clean and ready to condition.</p>\r\n', 'pantene-prov-adv-hf-sol-l-black-sha-650ml', 230, 'pantene-prov-adv-hf-sol-l-black-sha-650ml.jpg', '0000-00-00', 0),
(43, 7, 'Set Wet Studio X Wet L Sty M Hair Gel 100ml', '<p>Get the out-of-shower shiny wet look all day long, with the new improved Studio X-Wet Look. But that&rsquo;s not all. Your new Studio X is 100% alcohol-free and contains added Pro-Vitamin B5 to make your hair stronger.</p>\r\n', 'set-wet-studio-x-wet-l-sty-m-hair-gel-100ml', 140, 'set-wet-studio-x-wet-l-sty-m-hair-gel-100ml.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 33, 'QOwkyYt7caKv', '2022-09-10'),
(10, 33, 'QOwDuYC7kaKv', '2022-09-10'),
(12, 33, 'QOwDyYC7caKv', '2022-09-16'),
(13, 33, 'aVtuv1KNgcYM', '2022-09-16'),
(14, 33, 'jupBvVQ1Odlo', '2022-09-16'),
(15, 33, 'grCcBsnNmG4S', '2022-09-16'),
(16, 34, 'dfEDlJiVYRGv', '2022-09-16'),
(17, 34, 'UbpglMLsKVw5', '2022-09-16'),
(18, 28, 'hSqwIafK37Qo', '2022-09-19'),
(19, 28, '6dzLvRJSGe9w', '2022-09-19'),
(20, 15, 'fDaJXF9yHVuo', '2024-07-29'),
(21, 15, 'bnEoyPKX8hBs', '2024-07-29'),
(22, 15, 'htRZ9sjdDAn6', '2024-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Realmart', '', '', 'profile.jpg', 1, '', '', '2022-08-29'),
(14, 'tanzil@mail.com', '$2y$10$C3K/k9ljpNVGSqehRTKjMOSQN8FbCBElogRyTMSMiYQ6CMFnjYgna', 0, 'bn', 'jkgh', '138/1 Farmgate Dhaka', '01866054737', 'profile.jpg', 1, '', '', '2022-08-29'),
(15, 'LindaD13@protonmail.com', '$2y$10$7p7ZuCtV.yrn3rxlwz.FNOxNleM45IC8IA3AjS71zlVN11w/nHUOa', 0, 'Lind', 'York', '2118  Wayside Lane', '01356544737', '83215971_920756991674021_7062269855013011456_o.jpg', 1, 'qZMWnzR94gNU', 'BKl2duWhgcTCXkO', '2022-09-15'),
(16, 'LindaD113@protonmail.com', '$2y$10$mhUUtyt5UMrXhTGjbF1mUeddY3YfNokihkjF3XUl9bBkjVwKiGIIm', 0, 'werewrtdr1', 'gadgadfgd1', '', '', '', 1, 'POn37gUprZLX', '', '2022-09-15'),
(18, 'tes1@gmail.com', '$2y$10$EfwTQWBW2qCGqN/7mVcIp.ElbjV.F4NV31r4U.tcYDWVnFZnV0Xeu', 0, 'tes', 'tes', '', '', '', 0, 'vWrHhZTELcJ7', '', '2022-09-15'),
(19, 'tes11@gmail.com', '$2y$10$RTyaHlu8hSTDgbl4XWJbyu/QgIjqY.fh5iX6qqVzzXw1oEpKhmdhK', 0, 'tes', 'tes', '', '', '', 0, 'U5pRlVkNDCtd', '', '2022-09-15'),
(20, 'tes111@gmail.com', '$2y$10$Ikf4ECzczaSGQB9ZXyGxDOzbwiyDobuPUjApCwssh7hFDjz4SD37W', 0, 'tessss', 'tesss', '', '', '', 0, 'rmH7w8vOcyKD', '', '2022-09-15'),
(21, 'tess111@gmail.com', '$2y$10$WFz3edaLOWjHlC8sYNKj0eH.PeY22RX7yeGSxlKUieJpnbtcQuWm2', 0, 'tessss', 'tesss', '', '', '', 0, 'v4AmW6VPxBzT', '', '2022-09-15'),
(22, 'LindaD1k13@protonmail.com', '$2y$10$wMkyrbPMvLw9bFTH/3XVn.fiqS2yb71bxiuwEa//4qtMjG/cZ8ztG', 0, 'werewrtdr1', 'gadgadfgd1', '', '', '', 0, 'PabOKvk54fcd', '', '2022-09-15'),
(23, 'LindaD1k13@gmail.com', '$2y$10$Udsl.jvR6Hey3TfGiqilsuwcgk4i1v0jb/IeNJJonACZHBz.kzAZO', 0, 'werewrtdr1', 'gadgadfgd1', '', '', '', 0, 'ocgvJjSNwGOW', '', '2022-09-15'),
(24, 'jahangirzx0@gmail.com', '$2y$10$DLgk/.HTMm/cXN.JOb7skO7sK6WXb5xklkevsdhT05qJdsJWksT2S', 0, 'jahangir', 'alkdjf', '', '', '', 0, 'LWcJOz2kbfRF', '', '2022-09-15'),
(25, 'sfsdfsdfsd35@gmail.com', '$2y$10$/r9KJm62xhRUhT3LsQfQ0OVJTiUNqRWY86Csn7rdXkhP39YgmPNUG', 0, 'gg', 'dfsd', '', '', '', 0, 'blSZfWeXvanc', '', '2022-09-15'),
(26, 'sfsdfsd35@gmail.com', '$2y$10$Dic.tE30lMi9/DR9IxgX/efx.jSGAR47HViDeBrH8GIT2mxDXnEEu', 0, 'gg', 'dfsd', '', '', '', 0, 'PSeaI6ifTrL3', '', '2022-09-15'),
(27, 'testsourcecodester@gmail.com', '$2y$10$5ggFMKN2tz4lcS3Bbt.1JuEyYKgFyD0GUW.byq9eIuc6f3zmewUaq', 0, 'gg', 'dfsd', '', '', '', 0, 'msQdNyjT3GEf', '', '2022-09-15'),
(28, 'malam201304@bscse.uiu.ac.bd', '$2y$10$c.sn.l.OYSTmubWtOxRqTeSlAu6cLWxTzZImoYwb4gVeLzvGOGsSa', 0, 'jahangir', 'alam', 'Uttara,Dhaka-1230', '01834659782', 'male2.png', 1, '3oUFrQZ6pWuJ', 'Qo8S1aqtAHlENhk', '2022-09-15'),
(29, 'frederiksl@ogvoice.com', '$2y$10$/V1Acp/3XLgUALQxlfKmweTy/6JzonnmZX8SETxKoKBQlfcVHCmMq', 0, 'sddf', 'dfdsf', '', '', '', 0, 'YVJZGMoAWc5j', '', '2022-09-15'),
(30, 'frederiksl@dmailx.com', '$2y$10$T4lJUutexw6no/QaCzJ4sOQLK.HStSLfBuMOcvfzgj8AmFJ3YiWji', 0, 'fg', 'fdgdfg', '', '', '', 0, 'uEcJ7H8wzVZL', '', '2022-09-15'),
(31, 'frederiksl@wpdork.com', '$2y$10$KIiPHiOcZ.dhKBjsQQuVauqU3vukNGxihjWqXN/TVNDUoGSGQpIz6', 0, 'fg', 'fdgdfg', '', '', '', 1, '2f1nMOhyIC9S', '', '2022-09-15'),
(33, 'nlsmch@mailpluss.com', '$2y$10$Wh3QGOajt8b7Hxq1Mv/4J.jQGSByV4TIYXNwNLhZ9LW/ufZ9eVfQG', 0, 'Rock', 'Johnson', '720 Fort Washington Ave #APT 3U, New York, NY, 10040', '01834659782', 'Screenshot_1.png', 1, 'kaRnmWVjpIwg', '', '2022-09-16'),
(34, 'nlsmch@longdz.site', '$2y$10$jingiOndY8f/Uc7827WIruhPL5LoQxB/7F4VJ3.5N8roTDWC42llG', 0, 'Philip C', 'York', '2118  Wayside Lane', '01834659782', 'dd.jpg', 1, 'nt84i3OT5NzX', '', '2022-09-16'),
(35, 'yibic11441@pahed.com', '$2y$10$UdT6q8OVbaq28U/cF/sIf.jotxB5eadWZ1GGJCkErsWrqoyA4ZCAW', 0, 'sdf', 'dsf', '', '', '', 1, 'Xn4N82uQKtPC', '', '2022-09-19'),
(36, 'sakokos101@ploneix.com', '$2y$10$OVvUlTa32cVTLUoZRp9mxeV6IA6cVZDUO79QZXJTxjZwoJk9detXW', 0, 'fcxvx', 'vx', '', '', '', 1, 'qWUreL2XJu4K', '', '2022-09-19'),
(37, 'fajac58254@orlydns.com', '$2y$10$pyLYClOWYck.3xQIYkOAbOHEeFOPBgG4wj8cie4ix7nPAWw0Xb/3.', 0, 'ffffffffffffffffffffffffd', 'fdfg', '', '', '', 1, 'u8C9vRb2ighO', '', '2022-09-19'),
(38, 'LindaD116543@protonmail.com', '$2y$10$tOFo3jt0mxcjwFUFKy1QH.2J7zJ3rhulqvAo/si/T80JzTTG6Mz9y', 0, 'Philip C', 'York', '', '', '', 0, '1RbTLzk*YCBM', '', '2024-07-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FromUser` (`FromUser`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
