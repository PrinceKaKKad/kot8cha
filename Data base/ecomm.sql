-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

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
(2, 'For Sale', 'Sale'),
(8, 'For Lease', 'Lease'),
(9, 'Pre-Construction Projects', 'pre-projecct'),
(10, 'Sold', 'sold');

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
(60, 9, 'Alias Condos', '<p>Alias Condos is a new condo development by Madison Group currently in preconstruction at 114 Church Street, Toronto.</p>\r\n\r\n<p>Available units start from the mid $600,000&#39;s. Alias Condos has a total of 546 units. Sizes range from 360 to 1400 square feet.</p>\r\n\r\n<p>Set in a 45-storey tower, each 1-3 bedroom residence is a window to a new point of you. It&rsquo;s all in the details. Interiors custom designed by the discerning eyes at Studio Munge. Over 18,000 square feet of indoor and outdoor luxuries for exploring every side of you. Plus, unmatched indulgences for children and pets that elevate the comfort and connection of the littlest members of your household. Welcome to all the space you need to expand your imagination of home and self.</p>\r\n\r\n<p>Connect with me for details!</p>\r\n', 'alias-condos', 600000, 'alias-condos.jpg', '2022-06-18', 2),
(61, 9, 'STELLA - BRAMPTON', '<h3><strong>SouthSide Community | 225 Malta Avenue, Brampton</strong>, ON By i2 Developments (1) From $458,998 to over $749,998 Condo &amp; Townhouse 290 Units 21 Stories 0 - 3.5 Bedrooms Est. Compl. Fall/Winter 2023 505 - 1051 SqFt $921 per SqFt Stella at SouthSide Condos is a new condo and townhouse development by i2 Developments currently in preconstruction at 225 Malta Avenue, Brampton. The development is scheduled for completion in 2023. Available units range in price from $458,998 to over $749,998. Stella at SouthSide Condos has a total of 290 units. Sizes range from 505 to 1051 square feet. Stella at SouthSide Condos Details Community Name: SouthSide Building Type: Condo and Townhouse Ownership: Condominium Selling Status: Selling Construction Status: Preconstruction Estimated Completion: Fall/Winter 2023 Builder(s): i2 Developments Ceilings: From 8&#39;0&quot; to 9&#39;0</h3>\r\n\r\n<h1><strong>Register Now Expected Completion 2027</strong></h1>\r\n\r\n<p><strong>Call me for more details. 647-297-2929</strong></p>\r\n', 'stella-brampton', 590000, 'stella-brampton.jpg', '2022-04-07', 2),
(62, 9, 'DUO', '<p>Duo Condos 245 Steeles Avenue West, Brampton, ON By National Homes and Brixen Developments Inc. Featured duocondos.ca Register Now Condo 350 Units - Stories Preconstruction Duo Condos is a new condo development by National Homes and Brixen Developments Inc. currently in preconstruction at 245 Steeles Avenue West, Brampton. Duo Condos has a total of 350 units. Duo Condos Details Website: duocondos.ca Building Type: Condo Ownership: Condominium Selling Status: Registration Sales Start: Winter/Spring 2022 Construction Status: Preconstruction Builder(s): National Homes and Brixen Developments Inc. Architect(s): IBI Group Interior Designer(s): EsQape Design Inc. Sales Company: Baker Real Estate Incorporated Duo Condos Summary BETTER TOGETHER. The place where transit and schools are within touching distance. Shopping, parks, trails, and lush golf courses add excitement. Relaxing amenities and livable suites bring joy every day.</p>\r\n\r\n<h1><strong>Coming soon to Brampton.</strong></h1>\r\n', 'duo', 600000, 'duo.jpg', '2022-04-14', 2),
(64, 9, 'M5', '<h3><strong>M5</strong>, the newest phase of M City, embodies the community&rsquo;s ethos of iconic architecture, striking design, and cutting-edge technology. The tower&rsquo;s crisp linear silhouette makes an impressive statement; simple yet elegant geometry of black and white forms that create a grid-like pattern. Like its predecessors, there&rsquo;s more to experience at M5. Wellness-focused amenities paired with calming and stylish interiors and modern suite features and finishes that introduce tranquility to the everyday. M5 will inspire, nurture, and soothe.</h3>\r\n\r\n<p>A vibrant community that blends high design, green spaces and outdoor living for every season, M City has defined the future of downtown living in Mississauga. Located at Burnhamthorpe Rd. West and Confederation Parkway, this mixed-use community brings accessible transit, culture, shopping, friends, and family together into one dazzling new neighbourhood.</p>\r\n\r\n<p>Connect with me for more details on this latest launch!</p>\r\n', 'm5', 0, 'm5.jpg', '0000-00-00', 0),
(65, 2, '1867 Kingston Rd 5', '<p>MLS: E5584865</p>\r\n\r\n<p>VIRTUAL TOUR:&nbsp;<a href=\"https://nam12.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmy.matterport.com%2Fshow%2F%3Fm%3DnzGfSa5mPsD&amp;data=05%7C01%7C%7Cd404200c3c9a47591b9608da231e005c%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637860909029176808%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=UtWyRDk3ood2ydvmZRVcoumVKSuPff8%2Fzdsnfdc8yTI%3D&amp;reserved=0&amp;fbclid=IwAR0nUwhYF1m9RkesEl7bswXOjCfLgkr8dQl5KgQPlIg9zOFKRy-c0N74qKs\" target=\"_blank\">https://my.matterport.com/show/?m=nzGfSa5mPsD</a></p>\r\n\r\n<p>Welcome To This Stunning 3 Bedroom 3 Bathroom Home With Quartz Countertop, State Of The Art Appliances, Under Mounted Sink, Finished Basement With Cold Cellar, Tons Of Storage Space Throughout The Home, Garage With Keyless Entry And Storage Unit, Private Fenced Backyard Perfect For Entertaining. Easy Access To The 401, Go Station, Transit And Shopping. Close Vicinity To Pickering Village, Golf Course And Casino.</p>\r\n', '1867-kingston-rd-5', 749999, '1867-kingston-rd-5.jpg', '2022-07-03', 2),
(66, 2, 'Potl 28 The Cardinal Cdf-2 Elv-A  Whitby ', '<p>MLS: E5582201</p>\r\n\r\n<p>**Assignment Sale** Location. Location. 1862 Square Feet, 3 Bedrooms &amp; 3 Bathrooms Near 401/Brock St. In Whitby. Tentative Occupancy February 2023. Over $25,000 In Upgrades. Engineered Red Oak Flooring On Main Floor, Matching Stained Upgraded Staircase With Metal Rods. Stone Kitchen Countertop, Pantry, Backsplash In Kitchen, Stone Countertop Instead Of Laminate Countertop In Bathrooms, Smooth Ceiling Ground &amp; Main Floor. Additional Electric Ceiling Lights. S/S (Fridge, Stove And Built In Dishwasher), Washer Dryer, Central Air Conditioning. Standing Shower In Master Ensuite &amp; Lots Of Upgrades. Close To Whitby Go Station, Whitby Harbour Lighthouse &amp; Many More To List.</p>\r\n', 'potl-28-cardinal-cdf-2-elv-whitby', 0, 'potl-28-cardinal-cdf-2-elv-whitby.jpg', '2022-06-13', 2),
(67, 2, '83 SUMMERSET Drive Barrie', '<p>MUST SEE.. !!!</p>\r\n\r\n<p>Gorgeous Fully Renovated detached bungalow located in southwest Ardagh Bluffs! 9ft ceilings w/ pot lights throughout, a spacious eat-in kitchen w/ granite countertops, w/o lrg covered deck, high end SS appliances &amp; Much more. SS ROOF (LIFE WAR) &amp; GLASS ENCLOSURE(2018), NEW WINDOWS AND DOORS (2020) CALISHUTTERS, 5 SS APPLIANCES, 7 HIGH PERF CEILING FANS, CUSTOM LIGHTING, POT-LIGHTS, HARDWOOD FLOORING.CUSTOM CLOSETS (BSMT), OWNED HOT WATER TANK &amp; MUCH MORE.</p>\r\n', '83-summerset-drive-barrie', 899900, '83-summerset-drive.jpg', '2022-06-30', 4),
(68, 8, '22 Blue Meadow Crt, Markham', '<p>MLS: N5598398</p>\r\n\r\n<p>Location! Location! Location! Stunning, Bright And Spacious 3Bed, 3Wash Semi-Detached In High Demand Box Grove. Perfect Layout, Freshly Painted , Modern Open Concept Kitchen, 9Ft Ceilings On Main Floor, Fronting On To Green Park, Double Master His And Her Walk-In Closets.$$$ On Upgrades, Pot Lights , Stainless Steel Fridge, Stove, Range Hood (All Upgrades In 2018),Bosch Dishwasher (2021 Upgrades).Front Covered Porch (2020) ,Tankless Water Heater (2020). 1 Yr+ Lease, Tenant Responsible For All Utilities And Tenant Insurance. Include: Elf, Curtains, Fridge, Stove, Dishwasher, Exhaust Fan, Washer And Dryer, Furnace, Cac, 2 Unit Keys.</p>\r\n', '22-blue-meadow-crt-markham', 3300, '22-blue-meadow-crt-markham.mp4', '2022-06-29', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$290I5C35guAGODKesYOrh.oB7ZgrrZZBjka2gGGzVMWy9OI4Pmakm', 1, 'admin', '', '', '', 'branded-ADP_0312 (1).JPG', 1, '', '', '2022-02-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
