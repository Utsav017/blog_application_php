-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2025 at 06:48 AM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Food', 'Delicious and affordable recipes that won&#039;t break the bank, proving that good food doesn&#039;t have to be expensive.'),
(2, 'Music', 'Explore the rich tapestry of music genres, from classic rock to cutting-edge electronic. We delve into their histories, key artists, and defining sounds.'),
(3, 'Art', 'Explore the rich tapestry of art history, from ancient masterpieces to modern movements. Discover the stories and styles that have shaped our visual culture.'),
(4, 'Travel', 'The Travel category is your gateway to exploring new destinations, cultures, and experiences. Whether you&#039;re planning a relaxing beach getaway, an adventurous trek through the mountains, or a cultural deep dive into historic cities, this section offers travel guides, tips, itineraries, and insider recommendations. Discover must-visit landmarks, hidden gems, budget-friendly hacks, and expert advice to make your journeys unforgettable. Let your wanderlust lead the way!'),
(5, 'Science &amp; Technology', 'The Science &amp; Technology category explores the latest innovations, discoveries, and advancements shaping our world. From groundbreaking scientific research to cutting-edge technology trends, this section covers topics like space exploration, artificial intelligence, robotics, cybersecurity, medical breakthroughs, and more. Stay informed about the future of science and tech with insightful articles, expert analysis, and real-world applications that impact our daily lives.'),
(6, 'Wild Life', 'Wildlife refers to all living organisms that thrive in natural environments without human intervention. It encompasses a vast array of species, ranging from majestic land animals like lions and elephants to vibrant marine life such as coral reefs and whales, as well as diverse bird species and insects. Wildlife plays a crucial role in maintaining ecological balance, supporting biodiversity, and enriching our planet&#039;s landscapes. Each species contributes uniquely to its habitat, creating intricate ecosystems that nurture life. Protecting wildlife is essential for ensuring the health of our environment and preserving the beauty of the natural world for generations to come.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'The Ultimate Samosa Recipe: Crispy, Spicy, and Delicious', 'Samosas are the quintessential crispy, spicy snack that never fail to delight. This recipe brings you the perfect combination of flaky pastry and a flavorful filling, making every bite an indulgence.\r\n\r\nTo begin, you&#039;ll need to prepare the dough for the samosa shell. By combining all-purpose flour, a touch of salt, and a generous amount of oil or ghee, you create a crumbly texture that ensures a crisp outer layer. Add water gradually as you knead to form a firm dough, and let it rest to ensure it&#039;s pliable for shaping later.\r\n\r\nNext comes the heart of the samosa&mdash;the filling. A comforting mixture of mashed potatoes and boiled peas forms the base. This is infused with an aromatic blend of spices, including cumin seeds, grated ginger, green chilies, turmeric, and garam masala. The addition of tangy chaat masala elevates the flavor profile, making it irresistible. Lightly saut&eacute; these ingredients in oil to meld the flavors together.\r\n\r\nWith the dough rested and the filling prepared, it&#039;s time to assemble. Roll the dough into thin circles and cut them into halves. Shape each half into a cone, fill it with the spicy potato mixture, and seal it carefully to prevent any leaks while frying.\r\n\r\nThe final step is frying. Deep fry the samosas over medium heat until they turn golden brown, ensuring the crust is perfectly crispy. Serve them hot with tangy tamarind chutney or refreshing mint-coriander chutney for an authentic experience.\r\n\r\nWhether you&#039;re preparing these for a tea-time snack or a festive gathering, this ultimate samosa recipe guarantees a delightful culinary treat that&rsquo;s sure to impress! Let me know if you&#039;d like tips for frying or variations on the filling to mix things up.', '1743449391blog1.jpg', '2025-03-31 19:24:45', 1, 5, 0),
(2, 'The Future of AI: How Artificial Intelligence is Transforming Our World', 'Artificial Intelligence (AI) is no longer a concept of the future&mdash;it is actively transforming our world today. From automating everyday tasks to revolutionizing industries, AI is reshaping how we work, communicate, and solve complex problems. In healthcare, AI-powered diagnostics and robotic surgeries are improving patient outcomes, while in finance, intelligent algorithms analyze vast amounts of data to detect fraud and optimize investments. The rise of machine learning and deep learning has led to self-driving cars, personalized recommendations, and even AI-generated content, making technology more adaptive and intuitive than ever before.  \r\n\r\nBusinesses are leveraging AI to enhance efficiency, from chatbots providing customer support to predictive analytics optimizing supply chains. Meanwhile, in education, AI-driven platforms personalize learning experiences, helping students grasp concepts at their own pace. Despite its immense benefits, AI also raises ethical concerns, including data privacy, job displacement, and algorithmic biases, which require careful regulation and oversight.  \r\n\r\nAs AI continues to evolve, it holds the potential to unlock new frontiers in research, creativity, and innovation. Whether it&rsquo;s improving environmental sustainability, advancing medical research, or revolutionizing entertainment, artificial intelligence is poised to play a pivotal role in shaping the future. Embracing AI responsibly will be key to ensuring that its impact remains beneficial to society, driving progress while addressing its challenges.', '1743512484blog4.jpg', '2025-04-01 13:00:18', 5, 7, 0),
(3, 'A Journey with the Guitar', 'Learning to play the guitar is much more than mastering chords and melodies; it is a deeply transformative journey. Every strum and pluck weaves a story of patience, perseverance, and passion. The guitar becomes more than just an instrument—it turns into a companion, resonating with our emotions and telling tales through its strings.&#13;&#10;The journey begins with tentative fingers fumbling across the fretboard, awkwardly seeking the right notes. Slowly, determination takes over, transforming mistakes into stepping stones. Over time, as the strings respond harmoniously, they become an extension of the soul, mirroring every joy, sorrow, and triumph. Along the way, the journey teaches lessons far beyond music, inspiring creativity, discipline, and the courage to face challenges.&#13;&#10;From playing a simple tune to creating heartfelt music, the guitar not only shapes melodies but also shapes the person holding it. A Journey with the Guitar is one of self-discovery, where every note played builds a connection with art, life, and the boundless power of expression.&#13;&#10;', '1744694063blog7.jpg', '2025-04-15 05:14:23', 1, 6, 0),
(4, 'Exploring the World of Parrots', 'Parrots, with their vibrant plumage and charming personalities, are among the most captivating birds in the world. Found in diverse habitats ranging from tropical rainforests to savannas, these winged wonders showcase remarkable intelligence and social behavior. Known for their ability to mimic sounds and human speech, parrots form unique bonds with their companions, making them beloved members of many households.&#13;&#10;The parrot family is incredibly diverse, encompassing over 390 species, each with its own characteristics and quirks. From the talkative African Grey to the colorful Macaw, these birds are a testament to nature&#39;s creativity. They thrive on interaction, showcasing their playful and curious nature, and often surprising us with their wit.&#13;&#10;Exploring the world of parrots also involves understanding their role in ecosystems. Parrots play a crucial part in seed dispersal, helping maintain forest diversity. Unfortunately, many parrot species face threats from habitat destruction and illegal pet trade, making conservation efforts vital for their survival.&#13;&#10;Diving into the world of parrots is not just a journey of discovery but also one of admiration for the beauty and complexity of the avian world. Whether you&#39;re a parrot enthusiast or a curious observer, these feathered friends never fail to inspire awe and wonder.&#13;&#10;', '1744694508blog6.jpg', '2025-04-15 05:21:48', 6, 9, 0),
(5, 'DNA Decoded: The Key to Life&#39;s Mysteries', 'DNA, or deoxyribonucleic acid, is often described as the blueprint of life. Within its intricate double helix lies the genetic code that defines every living organism on Earth. This microscopic marvel carries the instructions for growth, development, functioning, and reproduction, connecting all life forms through a shared biological language.&#13;&#10;Understanding DNA has revolutionized science and medicine. From revealing ancestry to unlocking cures for genetic disorders, the study of DNA offers insights that were once unimaginable. It has paved the way for breakthroughs like genome editing, personalized medicine, and decoding the secrets of evolution.&#13;&#10;But DNA isn&#39;t just a scientific marvel—it&#39;s a reminder of life&#39;s complexity and unity. Despite its tiny structure, DNA holds immense power, shaping everything from the color of a butterfly&#39;s wings to the brilliance of human creativity.&#13;&#10;As researchers continue to decode the mysteries of DNA, one thing becomes clear: within this molecular masterpiece lies not only the story of life but also the promise of a brighter, healthier future for generations to come.&#13;&#10;', '1744695267blog3.jpg', '2025-04-15 05:34:27', 5, 10, 0),
(6, 'The Magic of Ras Malai', 'Ras Malai, a dessert that defines indulgence, is a symphony of flavors and textures that leaves a lasting impression. Originating from the kitchens of India, this sweet treat is the epitome of elegance, combining the richness of creamy milk with the soft, spongy charm of paneer balls soaked in flavored syrup.&#13;&#10;The magic of Ras Malai lies in its simplicity and the artistry of its preparation. The paneer balls, light and airy, absorb the saffron- and cardamom-infused milk, creating a melt-in-the-mouth sensation. Each bite is a celebration of sweetness, balanced by the fragrant spices and garnished with a sprinkle of crushed pistachios or almonds.&#13;&#10;Often served during special occasions and festive gatherings, Ras Malai is more than just a dessert—it&#39;s a symbol of joy and togetherness. It brings people together with its irresistible taste and reminds us of the vibrant culinary heritage of Indian cuisine.&#13;&#10;Whether it&#39;s your first encounter with Ras Malai or a cherished favorite, this dessert promises to whisk you away to a world of creamy bliss, leaving you craving for more.&#13;&#10;', '1744695661blog2.jpg', '2025-04-15 05:41:01', 1, 11, 0),
(7, 'Beyond the Screen', 'The digital age has entered an exciting new chapter with the advent of the Apple Vision Pro—a device designed to take us far beyond the screen. This groundbreaking innovation combines the power of augmented reality (AR) and virtual reality (VR), introducing users to a realm where digital content seamlessly integrates with their physical surroundings.&#13;&#10;With its cutting-edge visionOS and ultra-high-definition displays, the Vision Pro creates immersive experiences that redefine how we work, play, and connect. Whether it’s expanding your workspace with limitless virtual monitors, watching your favorite movies in a cinematic virtual space, or engaging in interactive 3D gaming, this device transforms the ordinary into the extraordinary.&#13;&#10;The Vision Pro isn’t just a gadget—it’s a paradigm shift. By blending AR and VR, it bridges the gap between our physical and digital worlds, allowing users to explore boundless possibilities. From creative professionals seeking inspiration to tech enthusiasts craving innovation, it opens up an entirely new dimension of interaction and productivity.&#13;&#10;This is more than just the future of technology—it’s a glimpse into the boundless potential of human creativity and innovation. With the Apple Vision Pro, life truly moves beyond the screen.&#13;&#10;', '1744696101blog5.jpg', '2025-04-15 05:48:21', 5, 12, 1),
(8, 'Tiny Artists at Work', 'When children pick up brushes, crayons, and paints, they embark on a journey of unfiltered creativity that transforms the mundane into the magical. These tiny artists, with their boundless imagination and fearless approach to color, remind us of the joy and wonder in creating art for the sheer pleasure of it.&#13;&#10;With hands messy from splashes of vibrant hues, they see the world as their canvas—walls, floors, and even themselves becoming part of their masterpieces. Their strokes may be irregular, and their patterns may defy logic, but each creation carries the essence of their curiosity and happiness. Through art, children express what words cannot, pouring their emotions, stories, and dreams into every colorful swirl.&#13;&#10;The process of playfully working with colors nurtures their growing minds. It develops their motor skills, boosts their confidence, and encourages a sense of discovery. But most importantly, it ignites a lifelong love for creativity—a gift that carries forward into all aspects of their lives.&#13;&#10;In the world of Tiny Artists at Work, every splash of paint, every giggle, and every masterpiece is a celebration of childhood, imagination, and the limitless beauty of the colorful journey they’re on.&#13;&#10;', '1744696708blog8.png', '2025-04-15 05:58:28', 3, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(5, 'Om', 'Prakash', 'Om', 'om@gmail.com', '$2y$10$sd5J7KCeYKTMtue/fzVEbudOOuA5FURawBbk/lC6Sgm4UJvI5Q1Sy', '1743447766avatar4.jpg', 0),
(6, 'Shivansh', 'Gupta', 'Shivansh', 'shivansh@gmail.com', '$2y$10$oWM9BS3H0OxQ6UwLEf1peeCNTXdk7Xx8oJ2Bj/lA4oOcpM.Fi47b2', '1743449698avatar1.jpg', 1),
(7, 'Vinayak', 'Soni', 'Vinayak', 'vinayak@gmail.com', '$2y$10$uMhKx7fuMgf7DGiZY/Hvo.k2hpkh6F9WAercYgGmnDqdO2Y3hrn9y', '1743512192avatar4.jpg', 0),
(9, 'Chitvan ', 'Sharma', 'Chitvan', 'Chitvan@gmail.com', '$2y$10$KXH9tJoRn.t6d.1XzxdLvuswtdX9VExQ64Qz45zLQZoTGqgCvg.vW', '1744694373avatar2.jpg', 1),
(10, 'Saurabh', 'Sahu', 'Saurabh', 'Saurabh@gmail.com', '$2y$10$eQWB4bCbynuEPOkX5jahWupOnG.7TrnfzH2za/oKvunK5/gKwd6dC', '1744694951avatar7.jpg', 0),
(11, 'Meenakshi', 'Sharma', 'Meenakshi', 'Meenakshi@gmail.com', '$2y$10$yCrX5t/45Tnks2PXkLNlOue4s7uYxo2yWrY4srRCNGQxnOeQkJYVm', '1744695473avatar3.jpg', 0),
(12, 'Ritu', 'Saxena', 'Ritu', 'Ritu@gamil.com', '$2y$10$wqVz.0VBH7lP9CUlYm5UluZdU65cuBIyGG56MHRHJhH26NYYtZOR2', '1744695810avatar6.jpg', 0),
(13, 'Smriti', 'Upadhyay', 'Smriti', 'Smriti@gamil.com', '$2y$10$DQTGiCtllS8y4/V5bQa4.uMmIfayr.HYgTR2trjDK7nxksTziG8vG', '1744696521avatar5.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
