-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 10:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

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
(2, 'For Sale', 'sale'),
(8, 'For Lease', 'lease'),
(9, 'Pre-Construction Projects', 'pre-projecct');

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
(49, 2, 'Post on 11/03/2022 LISTED: 845 DESERT MOUNTAIN CT Reunion, Florida, USA FOR SALE: $985,000', '<p>LISTED: 845 DESERT MOUNTAIN CT</p>\r\n\r\n<p>Reunion, Florida, USA</p>\r\n\r\n<p>FOR SALE: $985,000</p>\r\n\r\n<p>MLS: S5063745</p>\r\n\r\n<p>* REUNION MEMBERSHIP AVAILABLE WITH THIS AMAZING 5 BED PROPERTY * The membership provides access to three championship golf courses, fantastic water park, &amp; many more desirable amenities. This property has wonderful golf views from the pool deck &amp; master suite balcony. Enjoy outdoor living with the summer kitchen &amp; dining area under the lanai next to the pool and hot tub. Upgraded floor tile throughout the first floor The open plan kitchen has granite counter tops with stainless steal appliances, &amp; wood cabinetry with tile splash back. The living/dining area has fantastic views over the pool area and the golf course beyond.The large Master suite on the first floor has a private bathroom. The staircase and upstairs loft space has wood flooring throughout &amp; provides another comfortable sitting area with a large TV. The second floor master is exceptionally spacious with a large bathroom which also has a corner tub &amp; granite double vanity. This master has a good sized balcony with far reaching golf views. All the bedrooms are tastefully decorated and the property has amazing rentals in place which can convey to the new owner. Reunion is located just 7 miles from Disney so this property is the perfect vacation rental home or permanent residence.</p>\r\n', 'post-11-03-2022-listed-845-desert-mountain-ct-reunion-florida-usa-sale-985-000', 985000, '11-03-2022.jpg', '2022-04-05', 4),
(51, 8, 'Post on 10/03/2022 LISTED: 7400 Markham Rd #214 Markham FOR LEASE: $2,500', '<p>LISTED: 7400 Markham Rd #214</p>\r\n\r\n<p>Markham [Middlefield]</p>\r\n\r\n<p>FOR LEASE: $2,500</p>\r\n\r\n<p>MLS: N5527935</p>\r\n\r\n<p>Bright And Sunny Green Life Condo In Prime Location, 2 Bed Plus Den With 2 Full Washrooms, Available From April 1, 2022. Park School, Library, Public Transit At Door Step, Costco, Canadian Tire, No Frills, Restaurants, Shopping And Many More Facilities Within Walk-In Distance. 1 Underground Parking Included. Den Is Appropriate In Size To Use As 3rd Bedroom. Stainless Steel Appliances (Fridge, Stove, Stove-Hood, Microwave, Dishwasher), Washer And Dryer, All Window Coverings, All Electronic Light Fixtures.</p>\r\n', 'post-10-03-2022-listed-7400-markham-rd-214-markham-lease-2-500', 2500, 'post-10-03-2022-listed-7400-markham-rd-214-markham-lease-2-500_1647020402.png', '2022-03-21', 2),
(53, 2, 'Post on 8/03/2022 LISTED: 39 Oakwood Ave Waterloo [Kitchener] FOR SALE: $899,900', '<p>LISTED: 39 Oakwood Ave</p>\r\n\r\n<p>Waterloo [Kitchener]</p>\r\n\r\n<p>FOR SALE: $899,900</p>\r\n\r\n<p>MLS: X5522873</p>\r\n\r\n<p>Gorgeous All Brick Open Concept Bungalow On A Corner Lot In Fairfield Neighbourhood.Steps Away From Schools, Parks, Trails. Recent Upgrades Throughout, Starting With Renovated Kitchen With Large Center Island With Modish Concrete Counters, Wall Pantry, Crown Mouldings, Led Spotlights, High-End Laminate Flooring Throughout The Main Floor. Main Floor Electric Fireplace, 4Pc Bathroom With Corner Air Jet Tub &amp; Rain Shower. Finished Basement With Separate Entrance Main Fl Washer &amp; Dryer S/S Fridge, S/S Gas Range, S/S Dishwasher S/S Microwave All (2021)Osmosis Water Filtratoin. New Fridge In Bsmt, Dishwasher, W/D.,Tankless Water Heater Owned (2021) Shingles (2015) Plumbing (2020), Heated Garage W/ Opi</p>\r\n', 'post-8-03-2022-listed-39-oakwood-ave-waterloo-kitchener-sale-899-900', 899900, 'post-8-03-2022-listed-39-oakwood-ave-waterloo-kitchener-sale-899-900.png', '2022-03-21', 6),
(54, 2, 'Post on 06/2022 LISTED 36\' DETACHED HOUSE IN CAMBRIDGE FOR SALE: $1,450,000', '<p>36&#39; DETACHED HOUSE IN CAMBRIDGE<br />\r\nPREMIUM LOT, DOUBLE CAR GARAGE<br />\r\nMAIN INTERSECTION: HWY 401 &amp; KING ST.EAST<br />\r\nPOSSESSION IN SEPTEMBER, 2022<br />\r\n2,204 SQ.FT. TOTAL FLOOR AREA, ELEVATION B<br />\r\n9-FOOT HIGH CEILINGS ON MAIN FLOOR AND 8-FOOT HIGH CEILINGS ON UPPER LEVEL<br />\r\nLARGE SIZE (26&#39;6&quot;*13&#39;6&quot;) LIVING ROOM WITH OPT. WAFFLE CEILING AND OPT. GAS FIREPLACE<br />\r\nGOOD-SIZE MUD ROOM, WALK-IN CLOSET, LARGE PANTRY ON MAIN FLOOR<br />\r\nMODERN DESIGN OPEN CONCEPT KITCHEN WITH GRANITE COUNTERTOP<br />\r\nEXTENDED BREAKFAST BAR, OPTIONAL SINK<br />\r\nPATIO DOOR WITH WALK-OUT DECK<br />\r\n4 SPACIOUS SUNLIT LARGE SIZE BEDROOMS WITH MASTER ENSUITE<br />\r\nMASTER BEDROOM HAS 2 CLOSETS WITH A LARGE WALK-IN CLOSET<br />\r\n3 WASHROOMS WITH LAUNDRY ON SECOND FLOOR<br />\r\nROUGH IN WASHROOM IN BASEMENT<br />\r\nLOOK-OUT BIG SIZE BASEMENT WITH GOOD POTENTIAL TO BUILD LEGAL SECOND FAMILY UNIT<br />\r\nOPTION TO SELECT INTERIOR FINISHES AND UPGRADES- $7,500 IN D&Eacute;COR DOLLARS<br />\r\nINCLUDES COMFORT PACKAGE (VIDEO DOORBELL, GARAGE DOOR OPENER, SMART THERMOSTAT, HUMIDIFIER)<br />\r\nASKING PRICE- 1,450,000<br />\r\nDEPOSIT TO BE PAID WITH OFFER- 75000<br />\r\nDEPOSIT TO BE PAID AFTER BUILDER CONSENT- 56,500</p>\r\n', 'post-06-2022-listed-36-detached-house-cambridge-sale-1-450-000', 1450000, 'post-06-2022-listed-36-detached-house-cambridge-sale-1-450-000.jpg', '2022-03-18', 4),
(55, 2, 'Post on 7/03/2022 LISTED: 41 Madelaine Dr #2 Barrie [Painswick South] FOR SALE: $779,900', '<p>LISTED: 41 Madelaine Dr #2</p>\r\n\r\n<p>Barrie [Painswick South]</p>\r\n\r\n<p>FOR SALE: $779,900</p>\r\n\r\n<p>MLS: S5517895</p>\r\n\r\n<p>Welcome To This Much Desirable &amp; Unique &quot;Yonge Station&quot; Condo Townhouse Complex With 3Bed/3.5 Bath, Basement Finished. The Upstairs Offers Spacious Bedrooms And Bathrooms, A Lrg En-Suite Bathroom. The Finished Basement Offers Plenty Of Storage Space &amp; Perfect Setup For Home Office And An Extra Bedroom Space &amp; Lrg Standup Tiled Shower. Fridge, Stove, Dishwasher, Washer And Dryer. All Electronic Light Fixtures, All Window Coverings.</p>\r\n', 'post-7-03-2022-listed-41-madelaine-dr-2-barrie-painswick-south-sale-779-900', 779900, 'post-7-03-2022-listed-41-madelaine-dr-2-barrie-painswick-south-sale-779-900.png', '0000-00-00', 0),
(56, 2, 'Post on 6/03/2022 LISTED: 207 Galloway Rd #1102 Toronto [West Hill] FOR SALE: $329,900', '<p>LISTED: 207 Galloway Rd #1102</p>\r\n\r\n<p>Toronto [West Hill]</p>\r\n\r\n<p>FOR SALE: $329,900</p>\r\n\r\n<p>MLS: E5518812</p>\r\n\r\n<p>Located In The Prime Area Of Scarborough With Literally Everything Being A Walk Away. Featuring This Bright Spacious Refreshed Two Bedroom One Bathroom Condo With Unobstructed Views Of Lake Ontario! Freshly Painted Throughout &amp; Hardwood Floors. Building Has Gone Through An Extensive Amount Of Renovations Within The Last Few Years (New Elevators, New Parking Lot, New Balconies, Hallways Painted, New Carpets &amp; The List Goes On! Existing Appliances: Fridge, Stove, Dishwasher, Microwave, All Electronic Light Fixtures, Bathroom Vanities &amp; Mirrors</p>\r\n', 'post-6-03-2022-listed-207-galloway-rd-1102-toronto-west-hill-sale-329-900', 329900, 'post-6-03-2022-listed-207-galloway-rd-1102-toronto-west-hill-sale-329-900.png', '0000-00-00', 0),
(57, 8, 'Post on 4/03/2022 LISTED: 29 Sutcliffe Dr Whitby [Rolling Acres] FOR LEASE: $2,950', '<p>LISTED: 29 Sutcliffe Dr</p>\r\n\r\n<p>Whitby [Rolling Acres]</p>\r\n\r\n<p>FOR LEASE: $2,950</p>\r\n\r\n<p>MLS: E5521999</p>\r\n\r\n<p>Great Location! Minutes To Highway 401 And 412, 407 And Go Station Whitby Shopping Mall, Community Centre, Schools And Parks. School Bus Stop At The Door Step. 2 Year Old End Unit Townhouse, Feels Like A Semi! With Tons Of Natural Daylight. 3 Parking Spots. Professionally Finished Basement By The Builder, Can Be Used As Another Bedroom, Office Or Recreation Room, Basement Includes A 4Pc Bathroom. Quartz Countertop With Undermount Sink &amp; Moen Faucet. Stainless Steel Appliances. Utilities Paid By Tenant. No Pets. No Smoking.</p>\r\n', 'post-4-03-2022-listed-29-sutcliffe-dr-whitby-rolling-acres-lease-2-950', 2950, 'post-4-03-2022-listed-29-sutcliffe-dr-whitby-rolling-acres-lease-2-950.png', '2022-03-21', 2),
(58, 2, 'Post on 14/03/2022 demo', '<p>This demmo</p>\r\n', 'post-14-03-2022-demo', 1000000, 'post-14-03-2022-demo.png', '0000-00-00', 0),
(60, 9, 'Alias Condos', '<p>Alias Condos is a new condo development by Madison Group currently in preconstruction at 114 Church Street, Toronto.</p>\r\n\r\n<p>Available units start from the mid $600,000&#39;s. Alias Condos has a total of 546 units. Sizes range from 360 to 1400 square feet.</p>\r\n\r\n<p>Set in a 45-storey tower, each 1-3 bedroom residence is a window to a new point of you. It&rsquo;s all in the details. Interiors custom designed by the discerning eyes at Studio Munge. Over 18,000 square feet of indoor and outdoor luxuries for exploring every side of you. Plus, unmatched indulgences for children and pets that elevate the comfort and connection of the littlest members of your household. Welcome to all the space you need to expand your imagination of home and self.</p>\r\n\r\n<p>Connect with me for details!</p>\r\n', 'alias-condos', 600000, 'alias-condos.jpg', '2022-03-21', 4),
(61, 9, 'STELLA - BRAMPTON', '<h3><strong>SouthSide Community | 225 Malta Avenue, Brampton</strong>, ON By i2 Developments (1) From $458,998 to over $749,998 Condo &amp; Townhouse 290 Units 21 Stories 0 - 3.5 Bedrooms Est. Compl. Fall/Winter 2023 505 - 1051 SqFt $921 per SqFt Stella at SouthSide Condos is a new condo and townhouse development by i2 Developments currently in preconstruction at 225 Malta Avenue, Brampton. The development is scheduled for completion in 2023. Available units range in price from $458,998 to over $749,998. Stella at SouthSide Condos has a total of 290 units. Sizes range from 505 to 1051 square feet. Stella at SouthSide Condos Details Community Name: SouthSide Building Type: Condo and Townhouse Ownership: Condominium Selling Status: Selling Construction Status: Preconstruction Estimated Completion: Fall/Winter 2023 Builder(s): i2 Developments Ceilings: From 8&#39;0&quot; to 9&#39;0</h3>\r\n\r\n<h1><strong>Register Now Expected Completion 2027</strong></h1>\r\n\r\n<p><strong>Call me for more details. 647-297-2929</strong></p>\r\n', 'stella-brampton', 590000, 'stella-brampton.jpg', '0000-00-00', 0),
(62, 9, 'DUO', '<p>Duo Condos 245 Steeles Avenue West, Brampton, ON By National Homes and Brixen Developments Inc. Featured duocondos.ca Register Now Condo 350 Units - Stories Preconstruction Duo Condos is a new condo development by National Homes and Brixen Developments Inc. currently in preconstruction at 245 Steeles Avenue West, Brampton. Duo Condos has a total of 350 units. Duo Condos Details Website: duocondos.ca Building Type: Condo Ownership: Condominium Selling Status: Registration Sales Start: Winter/Spring 2022 Construction Status: Preconstruction Builder(s): National Homes and Brixen Developments Inc. Architect(s): IBI Group Interior Designer(s): EsQape Design Inc. Sales Company: Baker Real Estate Incorporated Duo Condos Summary BETTER TOGETHER. The place where transit and schools are within touching distance. Shopping, parks, trails, and lush golf courses add excitement. Relaxing amenities and livable suites bring joy every day.</p>\r\n\r\n<h1><strong>Coming soon to Brampton.</strong></h1>\r\n', 'duo', 600000, 'duo.jpg', '2022-03-21', 4);

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
(1, 'admin@kot8cha.com', '$2y$10$uJHCkbcU/4IKZoJ4NssR7eW9hQ0jFR6IaDCsMUfaOcjX2jmDZSxKi', 1, 'Nirav', 'Kotecha', '', '', 'branded-ADP_0312 (1).JPG', 1, '', '', '2022-02-01'),
(13, 'princekakkad10@gmail.com', '$2y$10$R3M4CugfiBzds7FfpNG2sOqJHx40MoA2IqPIycESz2JA7AEA.b/Ua', 1, 'Prince', 'Kakkad', '', '8420491007', '', 1, '', '', '2022-02-25');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
