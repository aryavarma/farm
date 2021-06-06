-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 01:46 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Vegetables', 'vegetables'),
(2, 'Milk', 'milk'),
(3, 'Fruits', 'Fruits'),
(4, 'Seeds', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(20, 10, 19, 5);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 1, 'Tomato (Solanum lycopersicum)', '<p>Our farm contain best quality of tomao. Edible and nuritious .The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.</p>\r\n\r\n<p><strong>Nutrition Value:&nbsp;</strong></p>\r\n\r\n<p><strong>One cup of chopped or sliced raw&nbsp;<strong>tomatoes</strong>&nbsp;contains:</strong></p>\r\n\r\n<ul>\r\n	<li>32 calories (kcal)</li>\r\n	<li>170.14 g of water.</li>\r\n	<li>1.58 g of protein.</li>\r\n	<li>2.2 g of fiber.</li>\r\n	<li>5.8 g of carbohydrate.</li>\r\n	<li>0 g cholesterol.</li>\r\n</ul>\r\n', 'tomato-solanum-lycopersicum', 80, 'tomato-solanum-lycopersicum.jpg', '2020-03-03', 1),
(31, 1, 'Potato', '<p>Cooked potatoes with skin are a good source of many&nbsp;<strong>vitamins</strong>&nbsp;and minerals, such as potassium and&nbsp;<strong>vitamin C</strong>.The&nbsp;<em>potato</em>&nbsp;is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild&nbsp;<em>potato</em>&nbsp;species can be found throughout the Americas, from the United States to southern Chile.<br />\r\n<br />\r\n<strong><strong>Nutrition</strong>&nbsp;Facts:</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 87.</li>\r\n	<li>Water: 77%</li>\r\n	<li>Protein: 1.9 grams.</li>\r\n	<li>Carbs: 20.1 grams.</li>\r\n	<li>Sugar: 0.9 grams.</li>\r\n	<li>Fiber: 1.8 grams.</li>\r\n	<li>Fat: 0.1 grams.</li>\r\n</ul>\r\n', 'potato', 60, 'potato.jpg', '0000-00-00', 0),
(32, 1, 'Cabbage(Brassica oleracea)', '<p><em>Cabbage</em>&nbsp;(comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild&nbsp;<em>cabbage</em>, B. oleracea var.</p>\r\n\r\n<p><strong>Cabbage Is Packed With Nutrients</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 22.</li>\r\n	<li>Protein: 1 gram.</li>\r\n	<li>Fiber: 2 grams.</li>\r\n	<li>Vitamin K: 85% of the RDI.</li>\r\n	<li><strong>Vitamin C</strong>: 54% of the RDI.</li>\r\n	<li>Folate: 10% of the RDI.</li>\r\n	<li>Manganese: 7% of the RDI.</li>\r\n	<li>Vitamin B6: 6% of the RDI.</li>\r\n</ul>\r\n', 'cabbage-brassica-oleracea', 100, 'cabbage-brassica-oleracea.jpg', '0000-00-00', 0),
(33, 1, 'Capsicum (Solanaceae)', '<p>Capsicum, the pepper, is a genus of flowering plants in the nightshade family Solanaceae. Its species are native to America, where they have been cultivated for thousands of years. Peppers are cultivated worldwide and used in many cuisines.</p>\r\n\r\n<p><strong><strong>Nutrition</strong>&nbsp;facts</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 31.</li>\r\n	<li>Water: 92%</li>\r\n	<li>Protein: 1 gram.</li>\r\n	<li>Carbs: 6 grams.</li>\r\n	<li>Sugar: 4.2 grams.</li>\r\n	<li>Fiber: 2.1 grams.</li>\r\n	<li>Fat: 0.3 grams.</li>\r\n</ul>\r\n', 'capsicum-solanaceae', 58, 'capsicum-solanaceae.jpg', '0000-00-00', 0),
(34, 1, 'Cauliflower(Brassica)', '<p>Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae. It is an annual plant that reproduces by seed. Typically, only the head is eaten &ndash; the edible white flesh sometimes called &quot;curd&quot;.</p>\r\n\r\n<p><strong>Nutrition Fact&nbsp;<strong>cauliflower</strong>&nbsp;has:</strong></p>\r\n\r\n<ul>\r\n	<li>25 calories.</li>\r\n	<li>0 grams of fat.</li>\r\n	<li>5 grams of carbohydrates.</li>\r\n	<li>2 grams of dietary fiber.</li>\r\n	<li>2 grams of sugar.</li>\r\n	<li>2 grams of protein.</li>\r\n	<li>30 milligrams of sodium.</li>\r\n</ul>\r\n', 'cauliflower-brassica', 40, 'cauliflower-brassica.jpg', '0000-00-00', 0),
(35, 1, 'Corn (Â maizeÂ )', '<p>Also known as&nbsp;<em>maize</em>&nbsp;(Zea mays),&nbsp;<em>corn</em>&nbsp;is one of the world&rsquo;s most popular cereal grains.&nbsp;... Whole-grain&nbsp;<em>corn</em>&nbsp;is as healthy as any cereal grain, as it&rsquo;s rich in fiber and many vitamins, minerals, and antioxidants.</p>\r\n\r\n<p><strong>Highly Nutritious</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 177 calories.</li>\r\n	<li>Carbs: 41 grams.</li>\r\n	<li>Protein: 5.4 grams.</li>\r\n	<li>Fat: 2.1 grams.</li>\r\n	<li><strong>Fiber</strong>: 4.6 grams.</li>\r\n	<li>Vitamin C: 17% of the daily value (DV)</li>\r\n	<li>Thiamine (vitamin B1): 24% of the DV.</li>\r\n	<li>Folate (vitamin B9): 19% of the DV.</li>\r\n</ul>\r\n', 'corn-maize', 20, 'corn-maize.jpg', '0000-00-00', 0),
(36, 1, 'Onion ()', '<p>The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. Its close relatives include the garlic, shallot, leek, chive, and Chinese onion</p>\r\n\r\n<p><strong>Nutrition facts</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 40.</li>\r\n	<li>Water: 89%</li>\r\n	<li><strong>Protein</strong>: 1.1 grams.</li>\r\n	<li>Carbs: 9.3 grams.</li>\r\n	<li>Sugar: 4.2 grams.</li>\r\n	<li><strong>Fiber</strong>: 1.7 grams.</li>\r\n	<li>Fat: 0.1 grams.</li>\r\n</ul>\r\n', 'onion', 80, 'onion.jpg', '0000-00-00', 0),
(37, 2, 'Milk (Gir Cow)', '<p>Our Farm contains best quality cows milkwhich contain essential nutrients and protie required for our health.The&nbsp;<strong>nutritional</strong>&nbsp;composition of&nbsp;<strong>milk</strong>&nbsp;is highly complex, and it contains almost every single&nbsp;<strong>nutrient</strong>&nbsp;that your body needs. One cup (240 ml) of whole cow&#39;s&nbsp;<strong>milk</strong>&nbsp;with 3.25% fat provides .</p>\r\n\r\n<p><strong><strong>Nutrition</strong>&nbsp;facts</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 149.</li>\r\n	<li>Water: 88%</li>\r\n	<li>Protein: 7.7 grams.</li>\r\n	<li>Carbs: 11.7 grams.</li>\r\n	<li>Sugar: 12.3 grams.</li>\r\n	<li>Fiber: 0 grams.</li>\r\n	<li>Fat: 8 grams.</li>\r\n</ul>\r\n', 'milk-gir-cow', 70, 'milk-gir-cow.jpg', '0000-00-00', 0),
(38, 2, 'Paneer(Gir cows)', '<p>Paneer is of great value in diet, especially in the Indian vegetarian context, because it contains a fairly high level of fat and proteins as well as some minerals, especially&nbsp;<strong>calcium</strong>&nbsp;and phosphorus. It is also a good source of fat soluble vitamins A and D. So its food and nutritive value is fairly high</p>\r\n\r\n<p><strong>Nutrition Fact:</strong></p>\r\n\r\n<p>Total Carbohydrates:61&nbsp;</p>\r\n\r\n<p>100 grams of&nbsp;<strong>paneer</strong>&nbsp;</p>\r\n\r\n<p>gives you about 23 grams of&nbsp;<strong>protein</strong></p>\r\n', 'paneer-gir-cows', 100, 'paneer-gir-cows.jpg', '2020-03-03', 2),
(39, 2, 'Ghee(Gir cows Milk)', '<p>The same serving of unsalted butter contains 34 calories, 4 fat, 2 grams saturated fat, and 2% the daily recommended amount of vitamin A. The higher concentration of the nutrients in the&nbsp;<strong>ghee</strong>&nbsp;is due to its higher concentration of fat. A 2013 study determined that&nbsp;<strong>ghee</strong>&nbsp;isn&#39;t as&nbsp;<strong>harmful to</strong>&nbsp;heart health as it may appear.</p>\r\n\r\n<p><strong><strong>Ghee Nutrition</strong>&nbsp;Facts</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 130.</li>\r\n	<li>Fat: 15g.</li>\r\n	<li>Sodium: 0mg.</li>\r\n	<li>Carbohydrates: 0g.</li>\r\n	<li>Fiber: 0g.</li>\r\n	<li>Sugars: 0g.</li>\r\n	<li>Protein: 0g.</li>\r\n</ul>\r\n', 'ghee-gir-cows-milk', 120, 'ghee-gir-cows-milk.jpg', '0000-00-00', 0),
(40, 2, 'Butter', '<p>Butter is a dairy product made from the fat and protein components of milk or cream. It is a semi-solid emulsion at room temperature, consisting of approximately 80% butterfat.</p>\r\n\r\n<p><strong><strong>Butter nutrition</strong></strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 102.</li>\r\n	<li>Total fat: 11.5 grams.</li>\r\n	<li>Vitamin A: 11% of the Reference Daily Intake (RDI)</li>\r\n	<li>Vitamin E: 2% of the RDI.</li>\r\n	<li>Vitamin B12: 1% of the RDI.</li>\r\n	<li>Vitamin K: 1% of the RDI.</li>\r\n</ul>\r\n', 'butter', 50, 'butter.jpg', '0000-00-00', 0),
(41, 3, 'Banana ', '<p>A banana is an edible fruit &ndash; botanically a berry &ndash; produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called &quot;plantains&quot;, distinguishing them from dessert bananas.</p>\r\n\r\n<p><strong>Nutrition facts</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 89.</li>\r\n	<li>Water: 75%</li>\r\n	<li>Protein: 1.1 grams.</li>\r\n	<li>Carbs: 22.8 grams.</li>\r\n	<li>Sugar: 12.2 grams.</li>\r\n	<li>Fiber: 2.6 grams.</li>\r\n	<li>Fat: 0.3 grams.</li>\r\n</ul>\r\n', 'banana', 90, 'banana.jpg', '0000-00-00', 0),
(42, 3, 'Mango', '<p>A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.</p>\r\n\r\n<p><strong>Packed With Nutrients</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 99.</li>\r\n	<li>Protein: 1.4 grams.</li>\r\n	<li>Carbs: 24.7 grams.</li>\r\n	<li><strong>Fat</strong>: 0.6 grams.</li>\r\n	<li><strong>Dietary fiber</strong>: 2.6 grams.</li>\r\n	<li>Vitamin C: 67% of the Reference Daily Intake (RDI)</li>\r\n	<li>Copper: 20% of the RDI.</li>\r\n	<li><strong>Folate</strong>: 18% of the RDI.</li>\r\n</ul>\r\n', 'mango', 120, 'mango.jpg', '0000-00-00', 0),
(43, 3, 'Papaya', '<p>For maximum results, people looking to lose weight quickly should consume&nbsp;<strong>papaya</strong>&nbsp;during breakfast and as a snack, between lunch and dinner. For breakfast, pair&nbsp;<strong>papayas</strong>&nbsp;with a source of&nbsp;<strong>good</strong>&nbsp;quality protein and a small amount of healthy fats.&nbsp;<strong>Eating papaya</strong>&nbsp;as a healthy snack after lunch, helps you stay full for longer.</p>\r\n\r\n<p><strong><strong>Nutritional</strong>&nbsp;facts for&nbsp;<strong>papaya</strong>:</strong></p>\r\n\r\n<ul>\r\n	<li>2.7 g dietary fiber, or 10 percent DV.</li>\r\n	<li>31 milligrams (mg) calcium, or 3.1 percent DV.</li>\r\n	<li>33 mg magnesium, 8 percent DV.</li>\r\n	<li>286 mg potassium, 6.08 percent DV.</li>\r\n	<li>0.13 mg zinc, 0.9 percent DV.</li>\r\n	<li>95.6 mg vitamin C, 106.2 percent DV.</li>\r\n	<li>58 micrograms (mcg) folate, 14.5 percent DV.</li>\r\n</ul>\r\n', 'papaya', 80, 'papaya.jpg', '0000-00-00', 0),
(44, 3, 'Strawberry', '<p>The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness</p>\r\n\r\n<p><strong>Nutrients&nbsp; amounts:</strong></p>\r\n\r\n<ul>\r\n	<li>Calories: 53 kcal.</li>\r\n	<li>Protein: 1.11 g.</li>\r\n	<li><strong>Carbohydrates</strong>: 12.75 g.</li>\r\n	<li><strong>Dietary fiber</strong>: 3.30 g.</li>\r\n	<li>Calcium: 27 mg.</li>\r\n	<li>Iron: 0.68 mg.</li>\r\n	<li>Magnesium: 22 mg.</li>\r\n	<li>Phosphorus: 40 mg.</li>\r\n</ul>\r\n', 'strawberry', 85, 'strawberry.jpg', '0000-00-00', 0),
(45, 3, 'Ginger', '<p>Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine. It is a herbaceous perennial which grows annual pseudostems about one meter tall bearing narrow leaf blades</p>\r\n\r\n<p><strong>Vitamins and minerals present in fresh&nbsp;<strong>ginger</strong>&nbsp;in trace amounts:</strong></p>\r\n\r\n<ul>\r\n	<li>Vitamin B3 and B6.</li>\r\n	<li>Iron.</li>\r\n	<li>Potassium.</li>\r\n	<li>Vitamin C.</li>\r\n	<li>Magnesium.</li>\r\n	<li>Phosphorus.</li>\r\n	<li>Zinc.</li>\r\n	<li>Folate.</li>\r\n</ul>\r\n', 'ginger', 25, 'ginger.jpg', '0000-00-00', 0),
(46, 3, 'Lemon', '<p>According to World&#39;s Healthiest Foods, a quarter cup of lemon juice contains 31 percent of the recommended daily intake of&nbsp;<strong>vitamin C</strong>&nbsp;and 3 percent of&nbsp;<strong>folate</strong>&nbsp;and 2 percent of potassium &mdash; all for around 13&nbsp;<strong>calories</strong>. A whole raw lemon contains 139 percent of the recommended daily&nbsp;<strong>vitamin C</strong>&nbsp;intake and has 22&nbsp;<strong>calories.</strong></p>\r\n\r\n<p><strong>Nutritional Facts:</strong></p>\r\n\r\n<p>One whole&nbsp;<strong>lemon</strong>&nbsp;contains 17 calories</p>\r\n\r\n<p>&nbsp;over five grams of carbohydrate.</p>\r\n\r\n<p><strong>carbs</strong>&nbsp;are primarily fiber (1.6 grams)</p>\r\n\r\n<p><strong>sugar</strong>&nbsp;(1.5 grams).</p>\r\n\r\n<p>The glycemic load of a whole&nbsp;<strong>lemon</strong>&nbsp;is estimated to be one, making it a low-glycemic food.</p>\r\n', 'lemon', 15, 'lemon.jpg', '0000-00-00', 0),
(47, 4, 'Blackseeds', '<p>Nigella sativa is an annual flowering plant in the family Ranunculaceae, native to South and West Asia. N. sativa grows to 20&ndash;30 cm tall, with finely divided, linear leaves. The flowers are delicate, and usually colored pale blue and white, with five to ten petals.</p>\r\n\r\n<p><strong>Nutritional</strong>&nbsp;<strong>Value:</strong></p>\r\n\r\n<p>Calcium:1.859 mg/g</p>\r\n\r\n<p>Iron:105 ug/g</p>\r\n\r\n<p>Copper:18 ug/g</p>\r\n\r\n<p>Zinc:60 ug/g</p>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;</p>\r\n</p>\r\n', 'blackseeds', 55, 'blackseeds_1583239078.jpg', '0000-00-00', 0),
(48, 4, 'FennelSeed', '<p>Fennel is a flowering plant species in the carrot family. It is a hardy, perennial herb with yellow flowers and feathery leaves. It is indigenous to the shores of the Mediterranean but has become widely naturalized in many parts of the world, especially on dry soils near the sea-coast and on riverbanks.</p>\r\n\r\n<p><strong>Nutritional Fact:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>&nbsp;</th>\r\n			<th>Fresh&nbsp;<strong>fennel</strong>&nbsp;bulb</th>\r\n			<th>Dried&nbsp;<strong>fennel seeds</strong></th>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Calories</strong></td>\r\n			<td>27</td>\r\n			<td>20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fiber</td>\r\n			<td>3 grams</td>\r\n			<td>2 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>12% of the RDI</td>\r\n			<td>1% of the RDI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Calcium</td>\r\n			<td>3% of the RDI</td>\r\n			<td>5% of the RDI</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'fennelseed', 60, 'fennelseed.jpg', '0000-00-00', 0),
(49, 4, 'Sunflowerseed', '<p>The sunflower seed is the fruit of the sunflower. There are three types of commonly used sunflower seeds: linoleic, high oleic, and sunflower oil seeds. Each variety has its own unique levels of monounsaturated, saturated, and polyunsaturated fats. The information in this article refers mainly to the linoleic variety.</p>\r\n\r\n<p><strong>Nutritional Value:</strong></p>\r\n\r\n<p>&nbsp;\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>&nbsp;</th>\r\n			<th><strong>Sunflower seeds</strong></th>\r\n		</tr>\r\n		<tr>\r\n			<td>&bull; Polyunsaturated fat</td>\r\n			<td>9.2 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&bull; Monounsaturated fat</td>\r\n			<td>2.7 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Protein</td>\r\n			<td>5.5 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Carbs</td>\r\n			<td>6.5 grams</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</p>\r\n', 'sunflowerseed', 70, 'sunflowerseed.jpg', '0000-00-00', 0),
(50, 4, 'Brinjal Seeds', '<p>Eggplants are a&nbsp;<strong>nutrient</strong>-dense food, meaning they contain a good amount of vitamins, minerals and fiber in few&nbsp;<strong>calories</strong>.</p>\r\n\r\n<p><br />\r\n<strong>Nutrtional Facts:</strong></p>\r\n\r\n<p><strong>&nbsp;Rich in Many&nbsp;Nutrients</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Calories</strong>: 20.</li>\r\n	<li>Carbs: 5 grams.</li>\r\n	<li>Fiber: 3 grams.</li>\r\n	<li>Protein: 1 gram.</li>\r\n	<li>Manganese: 10% of the RDI.</li>\r\n	<li>Folate: 5% of the RDI.</li>\r\n	<li>Potassium: 5% of the RDI.</li>\r\n	<li>Vitamin K: 4% of the RDI.</li>\r\n</ul>\r\n', 'brinjal-seeds', 58, 'brinjal-seeds.jpg', '0000-00-00', 0),
(51, 4, 'ChiaSeed', '<p>Chia seeds are the edible seeds of Salvia hispanica, a flowering plant in the mint family native to Central America, or of the related Salvia columbariae of the southwestern United States and Mexico. Chia seeds are oval and gray with black and white spots, having a diameter around 1 millimetre.&nbsp;</p>\r\n\r\n<p><strong>Nutritional Values</strong>:</p>\r\n\r\n<ul>\r\n	<li><strong>Fiber</strong>: 11 grams.</li>\r\n	<li>Protein: 4 grams.</li>\r\n	<li>Fat: 9 grams (5 of which are omega-3s).</li>\r\n	<li>Calcium: 18% of the RDI.</li>\r\n	<li>Manganese: 30% of the RDI.</li>\r\n	<li>Magnesium: 30% of the RDI.</li>\r\n	<li>Phosphorus: 27% of the RDI.</li>\r\n</ul>\r\n', 'chiaseed', 55, 'chiaseed.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Arya', 'Varma', '', '', 'me1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'SkyCity,Room No. 3,Kalyan', '126985347', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2020-02-12'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'Lodha,D wing,Thane', '789456120', 'female3.jpg', 1, '', '', '2020-02-15'),
(13, 'angelina@gmail.com', '$2y$10$dbMD5AZTLcIwFXT9UlZtH.TKkBnTjcemEjQjkZuPWlexJn6sO5sby', 0, 'Angelina', 'Jolie', 'Athena', '039857421', 'me1.jpg', 1, '', '', '2020-03-03');

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
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
