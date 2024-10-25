-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 09:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seekmyanswer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2,
  `organisation_id` int(11) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `name`, `email`, `password`, `type`, `organisation_id`, `profile_image`, `last_logged_in`, `created_at`) VALUES
(1, 'Shivam', 's@mobavenue.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, 'https://ik.imagekit.io/gku4adhog/thevadapav/Users/mandar.png?updatedAt=1701333601657', NULL, '2023-11-23 18:30:13'),
(2, 'Vatsal', 'vatsal.shah@mobavenue.com', '08a8b71d3762df7ff3eb422bbcf623f5', 2, 1, 'https://ik.imagekit.io/gku4adhog/thevadapav/Users/vatsal.jpg?updatedAt=1701333601653', NULL, '2023-11-29 18:49:16'),
(4, 'Rhea', 'rhea.crasto@mobavenue.com', '08a8b71d3762df7ff3eb422bbcf623f5', 2, 1, 'https://ik.imagekit.io/gku4adhog/thevadapav/Users/user.png?updatedAt=1701333712775', NULL, '2023-11-30 14:06:12'),
(5, 'Tanisha', 't@mobavenue.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, 'https://ik.imagekit.io/w8iaqu9bf/cat/glasses.gif?updatedAt=1707841337830', NULL, '2024-02-14 18:47:57'),
(6, 'Manika', 'manika@mobavenue.com', '08a8b71d3762df7ff3eb422bbcf623f5', 2, 1, NULL, NULL, '2024-02-14 18:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `ads_block`
--

CREATE TABLE `ads_block` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ads_block`
--

INSERT INTO `ads_block` (`id`, `article_id`, `title`, `created_at`) VALUES
(1, 64, 'Adhd Diagnosis', '2024-05-27 07:13:24'),
(2, 64, 'Adhd Assessment', '2024-05-27 07:13:47'),
(3, 64, 'Adhd Diagnosis Tool', '2024-05-27 07:14:09'),
(4, 64, 'Adhd in Adults', '2024-05-27 07:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `ads_data`
--

CREATE TABLE `ads_data` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `click_id` varchar(255) NOT NULL,
  `full_url` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_postback_data`
--

CREATE TABLE `ads_postback_data` (
  `id` int(11) NOT NULL,
  `click_id` varchar(255) NOT NULL,
  `full_url` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `read_time` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `article_date` date DEFAULT NULL,
  `system_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `url`, `description1`, `description2`, `image`, `read_time`, `meta_title`, `meta_description`, `meta_keywords`, `author_id`, `article_date`, `system_url`, `created_at`) VALUES
(1, 1, 'Relevance of AI in Marketing and Sales Automation Systems', 'role-of-ai-in-marketing-and-sales-automation-systems', 'The competitive nature of modern businesses isn’t just about evolving—it\'s about evolving smartly. Artificial intelligence (AI) is reshaping sales and marketing approaches by helping companies connect with their audiences more effectively, handle leads more precisely, and forecast growth more accurately. Today, AI works seamlessly with numerous sales and marketing automation tools to enhance productivity and customer interaction.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/Relevance_of_AI_in_Marketing_and_Sales_Automation_Systems.jpg?updatedAt=1725963421009', 2, 'The Importance of AI in Marketing & Sales Automation Systems', 'Discover how AI transforms sales and marketing automation by optimizing marketing strategies, chatbots, personalization, predictive analysis & handling leads.', NULL, 2, '2024-08-01', NULL, '2024-09-06 09:52:46'),
(2, 1, '7 Types of Cybersecurity to Protect Against Threats ', 'types-of-cyber-security ', 'Cybersecurity is becoming increasingly crucial in safeguarding valuable and sensitive data and preserving the integrity of digital systems and networks. The rapid growth of cyber threats necessitates a deep understanding and implementation of cybersecurity measures to protect data. Discover the 7 diverse forms of cybersecurity and learn why they are important in the context of safety.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/7_Types_of_Cybersecurity_to_Protect_Against_Threats.jpg?updatedAt=1725963420920', 3, '7 Types Of Cybersecurity To Protect Against Threats ', 'Discover the types of cybersecurity and learn how these defense layers safeguard against cyber threats.', NULL, 1, '2024-08-02', NULL, '2024-09-06 10:03:46'),
(3, 1, 'How Software is Shaping Industry Growth?', 'role-of-software-in-every-industry', 'In an era where technology ranks first among all developments, software is a significant force behind industry growth. It has reshaped sectors from manufacturing to healthcare by making processes more efficient and changing how businesses operate. Know how software has transformed various industries by opening up new possibilities and preparing them for the future.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/How_Software_is_Shaping_Industry_Growth.jpg?updatedAt=1725963420855', 2, 'How Software Drives Industry Evolution?', 'Find out how software shapes different industries, particularly in innovation, efficiency, and upcoming business technology trends.', NULL, 3, '2024-08-03', NULL, '2024-09-06 10:04:08'),
(4, 1, 'How Do Cloud Storage Services Help Your Business?', 'benefits-of-cloud-storage-for-business ', 'Switching to cloud storage is a significant turning point for businesses wanting to thrive in today’s competitive market. Since data is the key to decision-making and running operations smoothly, using cloud technology for business purposes has become more important than ever. Here, we explain how cloud storage services help businesses streamline their operations and bring innovation and growth within your organization.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/How_Do_Cloud_Storage_Services_Help_Your_Business.jpg?updatedAt=1725963420509', 3, 'Benefits of Cloud Storage for Businesses', 'Learn how cloud storage can tackle your company\'s data and collaboration challenges, paving the way for long-term success. ', NULL, 4, '2024-08-04', NULL, '2024-09-06 10:06:03'),
(5, 1, 'Understanding the Essentials of Home Security Cameras', 'home-security-camera', 'The protection of your home and loved ones has never been more vital. Technological progress has made compact security cameras a practical solution for modern homes. However, several factors must be considered before buying. In this blog, we have highlighted some crucial aspects to consider when choosing a home security camera, as many choices are available in the marketplace.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/Understanding_the_Essentials_of_Home_Security_Cameras.jpg?updatedAt=1725963420915', 4, 'Essential Tips For Choosing Home Security Camera', 'Learn how to select the perfect security camera for your home, including key specifications, setup guidelines, and durability.', NULL, 5, '2024-08-05', NULL, '2024-09-06 10:07:56'),
(6, 1, 'Embracing Solar Energy: A Bright Future for Homeowners', 'benefits-of-installing-solar-panels', 'In today\'s world, where living sustainably is more important than ever, putting solar panels on your roof is a smart choice for anyone looking to lessen their environmental footprint and reduce energy bills. When you tap into the sun\'s power, you do your part for a healthier planet and reap many benefits. Curious about what makes them so great? Here are four solid reasons that show why they\'re worth it.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Technology/Embracing_Solar_Energy_A_Bright_Future_for_Homeowners.jpg?updatedAt=1725963420747', 3, 'Benefits of Installing Solar Panels at Home ', 'Curious about the benefits of going solar? Discover how switching to solar power can bring numerous advantages to your life and the planet.', NULL, 8, '2024-08-06', NULL, '2024-09-06 10:10:30'),
(7, 2, 'Explore 7 Benefits of an Online MBA', 'online-mba-benefits', 'An online Master of Business Administration (MBA) could be the missing puzzle that moves your career forward, opening a pathway to numerous opportunities. It can help in the all-round self-improvement of a student irrespective of their location. In this blog, we will highlight 7 benefits of an online MBA to scale your career to the next level.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/Explore_7_Benefits_of_an_Online_MBA.jpg?updatedAt=1725963441736', 3, '7 Benefits Of Choosing An Online MBA', 'An online MBA offers many benefits, such as career advancement, time efficiency, expense savings, and exposure to industry professionals.', NULL, 6, '2024-08-07', NULL, '2024-09-06 10:12:44'),
(8, 2, 'How do Scholarships Support Diversity and Inclusion?', 'role-of-scholarships-in-diversity-and-inclusion', 'Education should be equally fair and necessary for everyone, regardless of their social background. However, financial challenges often create serious obstacles, making it hard for many to pursue higher education. As a result, they might end up stuck in low-paying jobs or face limited opportunities.', 'Scholarships address these financial barriers and allow underprivileged students to excel academically and in their career paths. By giving such students a chance to flourish, educational institutions can promote a more diverse and inclusive workforce.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/How_do_Scholarships_Support_Diversity_and_Inclusion.jpg?updatedAt=1725963441585', 3, 'How Scholarships Contribute to Diversity and Inclusion?', 'Understand the impact of scholarships in driving diversity and inclusion by supporting underprivileged students in reaching their academic and career ambitions.', NULL, 7, '2024-08-08', NULL, '2024-09-06 10:14:51'),
(9, 2, '7 Essential Steps for a Rewarding Nursing Career', 'path-to-nursing-career', 'Like all professional pursuits, the path to a nursing degree is marked by gaining extensive knowledge, meeting challenges head-on, and shouldering responsibilities to gain rewarding experience. While obtaining a nursing degree with distinction requires considerable effort and unwavering determination, it follows a systematic blueprint that aids in comprehending the core aspects and honing study methodologies. ', 'Whether you\'re commencing a nursing education or making a career shift into this sector, the degree calls for practical clinical expertise, theoretical understanding, and real-world instances to prepare for industry demands. This article delves into the prime focus areas for a successful nursing career.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/7_Essential_Steps_or_a_Rewarding_Nursing_Career.jpg?updatedAt=1725963441732', 2, '7 Essential Steps For A Rewarding Nursing Career', 'Progress from classroom learning to clinical practice in nursing with strategies such as honing study skills, developing clinical expertise, and building professional networks.', NULL, 2, '2024-08-09', NULL, '2024-09-06 10:17:15'),
(10, 2, 'How to Become Successful in Hospitality Management? ', 'career-in-hospitality-management', 'As the hospitality industry keeps growing and transforming, now is the perfect time to jump into this exciting field. Whether you\'re just starting or looking to climb the ladder, this guide offers beneficial advice and insights to help you excel in the competitive world of hospitality management. So, begin your journey to a successful and rewarding career with the help of the following insights.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/How_to_Become_Successful_in_Hospitality_Management.jpg?updatedAt=1725963442097', 2, 'How to Build a Successful Career in Hospitality Management?', 'Learn how to build a thriving career in hospitality management. Discover crucial skills, educational requirements, and industry trends for success.', NULL, 1, '2024-08-10', NULL, '2024-09-06 10:19:46'),
(11, 2, 'Exploring the Growing Landscape of Project Management Careers', 'the-growing-landscape-of-project-management-careers', 'As organizations emphasize efficiency and innovation, project managers are emerging as essential contributors to business success. The increasing demand for these experts signifies a deeper transformation across various industries. This blog highlights the expanding opportunities in project management careers, the vital skills aspiring project managers should cultivate, and the potential for career progression within this dynamic field.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/Exploring_the_Growing_Landscape_of_Project_Management_Careers.jpg?updatedAt=1725963441742', 3, 'The Growing Landscape of Project Management Careers', 'Now is the right time to opt for a career in project management.  Find out which skills you must learn and what opportunities are awaiting you.', NULL, 3, '2024-08-11', NULL, '2024-09-06 10:22:32'),
(12, 2, 'The Power of Fleet Management in the Logistics Industry ', 'impact-of-fleet-management-on-logistics', 'In business, maximizing resource utilization for cost reduction is always a priority. The heart of any enterprise is its transportation and logistics. Fleet management offers a groundbreaking approach to handling logistics in this modern era. This blog explores how fleet management enhances operations, cuts expenses, and boosts efficiency.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/The_Power_of_Fleet_Management_in_the_Logistics_Industry.jpg?updatedAt=1725963441733', 3, '5 Powerful Impacts of Fleet Management on Logistics', ' Learn how fleet management can redefine logistics operations with technology that predicts future trends and detects potential issues.', NULL, 4, '2024-08-12', NULL, '2024-09-06 10:24:48'),
(13, 2, '5 Factors to Check Before You Hit \"Apply\" for an Online Job', 'factors-to-consider-before-applying-for-an-online-job', 'Nowadays, the internet has opened countless doors for job seekers. If you are ready to step away from the standard  9 to 5 lifestyle or want to earn extra income, landing the right online job can bring the right transformation in your life. However, before you hit that “apply” button, you must consider the following essential factors to ensure the job is legitimate and suitable.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Career/5_Factors_to_Check_Before_You_Hit_Apply_for_an_Online_Job.jpg?updatedAt=1725963441939', 2, '5 Key Factors to Check Before You Apply for an Online Job', 'Are you searching for an online job? Discover how to identify your strengths, explore job options, prepare for virtual interviews, and more.', NULL, 5, '2024-08-13', NULL, '2024-09-06 10:26:49'),
(14, 3, 'Top 10 Benefits of Real Estate Investment', 'benefits-of-real-estate-investment', 'With the unpredictable economy, most investors look for safe investments that promise returns. A popular investment that has stood the test of time is real estate investment. Real estate has a strong record of providing steady returns and is expected to appreciate over time. Both new and experienced investors often invest their money in this market. This blog will discuss why investing in real estate can be a smart move for achieving long-term wealth and financial security. ', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Business/Top_10_Benefits_of_Real_Estate_Investment.jpg?updatedAt=1725963471644', 3, '10 Powerful Benefits of Real Estate Investment', 'These 10 benefits of investing in real estate will help you lay a strong foundation for wealth. Keep reading to learn more! ', NULL, 8, '2024-08-14', NULL, '2024-09-06 10:30:54'),
(15, 3, 'How Industrial Machines Are Transforming Various Sectors', 'modern-machinery-changing-industries', 'In the last few decades, industrial machinery has changed dramatically thanks to advancements in digital technology. These machines have redefined industries\' growth from simple mechanical devices to high-tech automated systems. Let\'s look at how these modern machines boost efficiency and productivity across various sectors.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Business/How_Industrial_Machines_Are_Transforming_Various_Sectors.jpg?updatedAt=1725963471521', 2, 'How Industrial Machinery is Transforming Industries', 'Learn how advancements in automation, AI, and IoT are revolutionizing industrial machinery and paving the way for a new era of efficiency.', NULL, 6, '2024-08-15', NULL, '2024-09-06 10:35:33'),
(16, 3, '5 Key Benefits of A Co-working Space ', 'benefits-of-coworking-spaces', 'Unlike traditional office setups, co-working spaces redefine the working style. They are home to freelancers, startups, remote workers, and small businesses. A coworking business model promotes collaboration and innovation, bringing a unique approach to work style compared to the age-old method. Some prominent benefits of coworking spaces enable the best in individuals and businesses. ', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Business/5_Key_Benefits_of_A_Co_working_Space.jpg?updatedAt=1725963471353', 3, '5 Key Benefits Of A Co-working Space ', 'Discover how coworking spaces reshape the modern workplace and encourage collaboration among professionals from various backgrounds.', NULL, 7, '2024-08-16', NULL, '2024-09-06 10:38:15'),
(17, 4, 'Debunking the Myths of Dental Implants', 'debunking-myths-on-dental-implants', 'There’s a lot of confusion and false information about dental implants. People hear about how well they work, how comfortable they are, and whether they are worth it. If you are thinking about getting dental implants but have questions about their benefits, you have come to the right place. Here, we will clear up the most common myths about dental implants so you can make informed decisions.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/Debunking_the_Myths_of_Dental_Implants.jpg?updatedAt=1725963491628', 3, 'Breaking Down the Myths of Dental Implants', 'Find out how dental implants provide a durable tooth replacement option that guarantees a pain-free smile every day.', NULL, 2, '2024-08-17', NULL, '2024-09-06 10:40:36'),
(18, 4, 'Your Guide to ADHD and Its Treatment Options', 'understanding-adhd-and-its-treatments', 'Millions of individuals worldwide are affected by ADHD - Attention Deficit Hyperactivity Disorder. Still, due to its complex nature, many are frequently unsure of the best course of action. ADHD can be tackled in a variety of ways, ranging from individualized drug plans to well-balanced lifestyle changes. \n', 'Here, we provide information about several treatment options, such as behavioral therapies, support networks, and lifestyle changes required to enjoy a more satisfying life despite ADHD\'s difficulties.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/Your_Guide_to_ADHD_and_Its_Treatment_Options.jpg?updatedAt=1725963491872', 3, 'A Guide to ADHD and its Treatment Options', 'Learn about the various ADHD treatments. From behavioral therapy to lifestyle modifications, discover how to support individuals with ADHD effectively.\n', NULL, 1, '2024-08-18', NULL, '2024-09-06 10:42:45'),
(19, 4, 'Breast Cancer: Understanding Symptoms and Treatment Options', 'breast-cancer-symptoms-and-treatments', 'Breast cancer tops the list of some of the most prevalent types of cancer, with over 2 million new diagnoses globally each year. Given its widespread occurrence and the complexities involved, patients and their families need to familiarize themselves with the symptoms and treatment choices available.', 'In this blog, we highlight the key warning signs of breast cancer and outline potential treatment paths. This information aims to empower individuals to comprehend their diagnosis better and make the right decisions regarding their care.\n', 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/Breast_Cancer_Understanding_Symptoms_and_Treatment_Options.jpg?updatedAt=1725963491428', 2, 'Breast Cancer Symptoms and Treatment Options ', 'Find the essential symptoms of breast cancer that shouldn\'t be overlooked, along with effective treatment methods, including surgery, chemotherapy, and more. \n', NULL, 3, '2024-08-19', NULL, '2024-09-06 10:44:54'),
(20, 4, '7 Psoriasis Triggers You Might Not Be Aware Of', 'triggers-of-psoriasis', 'Psoriasis impacts millions globally, leading to red, scaly patches on the skin. While stress and cold weather are well-known triggers, other, less obvious factors can worsen this ongoing skin condition. By understanding these 7 lesser-known triggers, you can better manage your psoriasis and prevent flare-ups more effectively.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/7_Triggers_of_Psoriasis_You_Might_Not_Know_About.jpg?updatedAt=1725963491274', 2, '7 Common Psoriasis Triggers That Are Easy to Miss', 'Many people experience psoriasis but often overlook its hidden triggers. Discover the 7 unexpected factors that can affect your skin.', NULL, 4, '2024-08-20', NULL, '2024-09-06 10:51:07'),
(21, 4, 'Transform Your Hair: Benefits & Types of Hair Transplants', 'benefits-and-types-of-hair-transplants', 'Unexpected hair loss can wipe away joy and replace it with worries. However, clinically proven solutions such as hair transplants are available to help. This transformative method guarantees thicker, younger-looking hair. In this blog, we delve into hair transplants, which help regain lost smiles and self-assurance.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/Transform_Your_Hair_Benefits_&_Types_of_Hair_Transplants.jpg?updatedAt=1725963491632', 3, 'Transform Your Hair: Benefits & Types of Hair Transplants', 'Discover how hair transplants work, their long-lasting benefits, and what to expect during the process to boost your confidence and restore your hair.', NULL, 5, '2024-08-21', NULL, '2024-09-06 10:55:33'),
(22, 4, 'Hearing Aids Explained: Uses, Beneficiaries and Care Tips', 'hearing-aids', 'Hearing loss can make the world feel silent and isolating, but hearing aids can help people reconnect with sounds. These devices amplify sounds and help users engage with their surroundings. In this blog, we’ll explore how hearing aids benefit people and share simple tips for keeping them in good working order.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Health/Hearing_Aids_Uses_Beneficiaries_and_Care_Tips.jpg?updatedAt=1725963491281', 3, 'A Guide to Hearing Aids: Uses, Beneficiaries, and Care Tips', 'This blog explains how hearing aids work and who can use them. It also includes maintenance tips to keep hearing aids in great shape.', NULL, 8, '2024-08-22', NULL, '2024-09-06 10:57:59'),
(23, 5, 'Guide to the Hidden Synergy of Beauty and Well-being', 'synergy-between-beauty-and-well-being', 'Often, beauty is measured and perceived based on how one looks and appears, but little consideration is given to a person\'s wellness and health. However, true beauty transcends the superficial skin layer and goes beyond one\'s mental and physical well-being. Whether you\'re passionate about beauty or ready to supercharge your health, this blog offers insights and effective tips to unlock a radiant glow from within.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Lifestyle/Beauty&WellnessLifestyle(GuidetotheHiddenSynergyofBeautyandWell-being).jpg?updatedAt=1725963514513', 2, 'Unlock The Hidden Synergy Of Beauty And Well-being', 'Learn about the vital connection between beauty and wellness with effective strategies that enable a natural glow from within. \r\n', NULL, 6, '2024-08-23', NULL, '2024-09-06 10:59:43'),
(24, 5, 'Key Tips for Reaching Your Weight Loss Goals', 'tips-for-weight-loss', 'In today\'s fast-paced world, achieving your fitness goals can be daunting. While morning runs, swimming, or cycling are helpful, they aren\'t the only solutions for effective weight loss.', 'To successfully reach your weight loss goals, you need a balanced approach that includes a healthy diet, consistent exercise, a positive mindset, and the tools to set realistic targets. Here are some strategies you can start implementing today.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Lifestyle/WeightLossLifestyle(KeyTipsforReachingYourWeightLossGoals).jpg?updatedAt=1725963514750', 2, 'Reach Your Weight Loss Goals with Effective Strategies', 'Ready to lose weight? Discover actionable strategies to incorporate into your daily routine and start your path to a healthier lifestyle!', NULL, 7, '2024-08-24', NULL, '2024-09-06 11:02:25'),
(25, 5, 'The Ultimate Guide to Keto Diet: High-Fat & Low-Carb Living', 'beginner-guide-to-the-keto-guide', 'Among several diet plans offering unique advantages, the keto diet has gained significant attention. It is known for delivering incredible health benefits like weight loss and improved cognitive function while controlling specific health issues. In this blog, we walk you through the keto diet basics and give insights on what food types play what part.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Lifestyle/KetoDietLifestyle(TheUltimateGuidetoKetoDietHigh-Fat&LowCarbLiving).jpg?updatedAt=1725963514547', 3, 'Ultimate Guide To Keto Diet: High-Fat & Low-Carb Living', 'Discover how to navigate the keto diet effectively with resources that include meal planning tips and nutritional insights for a healthier lifestyle.', NULL, 2, '2024-08-25', NULL, '2024-09-06 11:04:57'),
(26, 5, 'The Role of Nutra in Achieving a Healthier Lifestyle', 'the-power-of-nutra-for-a-healthy-lifestyle', 'Are you tired of the same old health advice? While eating vegetables, getting enough sleep, and exercising are all important, there is a new concept in health and wellness you might want to check out—Nutra. Short for nutraceuticals, Nutra refers to products made from food that provide additional health benefits beyond essential nutrition.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Lifestyle/NutraLifestyle(TheRoleofNutrainAchievingaHealthierLifestyle).jpg?updatedAt=1725963514799', 2, 'The Impact of Nutra on Living a Healthier Life', 'Learn about Nutra and how to add it to your diet to enhance well-being and longevity.', NULL, 1, '2024-08-26', NULL, '2024-09-06 11:07:02'),
(27, 5, 'Attain Wellness with the Power of Body Massage Therapy', 'wellness-through-body-massage', 'Today, the world embraces self-care more than a realm of luxury. Often seen as a guilty pleasure amidst hectic schedules, today, people pause to unwind and indulge in life\'s simple pleasures, such as self-care. Body massage is a popular form of self-care that profoundly impacts one’s life. In this blog, we have shed light on how one can attain maximum benefits from the power of body massage therapy.  ', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Lifestyle/MassageLifestyle(AttainWellnesswiththePowerofBodyMassageTherapy).jpg?updatedAt=1725963514808', 2, 'Unlock Wellness with the Power of Body Massage Therapy', 'Uncover the healing power of massage. Learn how regular sessions can alleviate pain, boost immunity, and improve overall well-being.', NULL, 3, '2024-08-27', NULL, '2024-09-06 11:09:09'),
(28, 6, 'Insurance: A Comprehensive Overview', 'everything-you-need-to-know-about-insurance', 'In today’s unpredictable world, having insurance is crucial. Whether for your home, car, or health, insurance acts as a protective shield, helping you bounce back from unexpected events. However, understanding insurance can be a never-ending task among many available options. This blog simplifies the basics and makes insurance easier to understand so you can make the right decisions for you and your family.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/InsuranceFinance(InsuranceAComprehensiveOverview).jpg?updatedAt=1725963537682', 3, 'Insurance Essentials: What You Need to Know', 'Learn the basics of insurance and protect what matters most. This guide makes understanding insurance easy, so you\'re prepared for any uncertain event.', NULL, 4, '2024-08-28', NULL, '2024-09-06 11:11:34'),
(29, 6, 'Know the Importance of Having a Bank Account', 'benefits-of-a-bank-account', 'Today, managing your finances has become more crucial than ever. With cash becoming less common and digital transactions rising, a bank account is no longer just a convenience; it is a necessity. For instance, receiving a paycheck, paying bills or loans, and even making online purchases require a bank account. In this blog, we will discuss the importance of having a bank account and how it can significantly benefit you.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/BankAccountsFinance(KnowtheImportance%20ofHavingaBankAccount).jpg?updatedAt=1725963538033', 2, 'Know the Benefits of Having a Bank Account', 'Put your money to work! Open a bank account for easy deposits and withdrawals while growing your financial health.', NULL, 5, '2024-08-29', NULL, '2024-09-06 11:15:47'),
(30, 6, '7 Advantages of Opting for an Education Loan', 'benefits-of-education-loan', 'Education is undeniably a powerful tool for changing life. However, soaring education expenses often leave us contemplating less-than-ideal options. In these times, rather than stopping yourself from following your dreams, an educational loan can be a financial lifesaver, allowing you to chase your dreams to secure a promising future.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/LoansFinance(7AdvantagesofOptingforanEducationLoan).jpg?updatedAt=1725963537538', 2, '7 Benefits Of Opting For An Education Loan', 'Learn how an education loan can provide financial support for your studies, ease the burden of tuition fees, and help you achieve your academic goals.', NULL, 8, '2024-08-30', NULL, '2024-09-06 11:14:19'),
(31, 6, 'Advantages of Refinancing Your Home Loan Mortgage', 'advantages-of-mortgage-refinancing', 'Are you feeling financially constrained by your mortgage? You\'re not alone. Monthly payments can become overwhelming, especially if interest rates have climbed since you initially secured your loan. Fortunately, there\'s a potential remedy—mortgage refinancing.', 'Refinancing involves securing a new loan to replace your existing mortgage. Though it might seem complex, this strategy can lead to substantial savings, lower monthly payments, or even provide extra cash for other financial ambitions.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/MortgageFinance(AdvantagesofRefinancingYourHomeLoanMortgage).jpg?updatedAt=1725963538030', 2, 'The Advantages of Mortgage Refinancing', 'Discover how mortgage refinancing can support your financial objectives. Explore strategies from cost savings to debt management suitable for your needs.', NULL, 6, '2024-08-31', NULL, '2024-09-06 11:19:31'),
(32, 6, 'Role of Tax Consultants in Today\'s Financial Landscape', 'role-of-a-tax-consultant', 'Does the term \"tax\" make you break into a cold sweat? Well, tax computations and compliance can be daunting for individuals and businesses. Tax consultants are trained professionals who help navigate complex tax areas smoothly. In this blog, we present an in-depth understanding of tax consultants\' crucial roles in managing and formulating financial strategies.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/TaxConsultingFinance(RoleofTaxConsultantsinToday\'sFinancialLandscape).jpg?updatedAt=1725963538041', 3, '5 Key Role of Tax Consultants in Today\'s Financial Landscape', 'Learn about the vital role of tax consultants and how their expertise can aid in planning, compliance, and savings for individuals and businesses alike.\n', NULL, 7, '2024-09-01', NULL, '2024-09-06 11:23:23'),
(33, 6, 'Top 5 Benefits of Debt Consolidation You Should Consider', 'debt-consolidation-benefits', 'Are you feeling swamped managing multiple debts and finding it challenging to keep track of each due date? Many people face similar challenges. Luckily, there\'s a way to streamline your finances and take charge of your expenses—debt consolidation.', 'Debt consolidation can simplify payments, lower interest rates, and even boost your credit score. Let\'s explore how debt consolidation can be beneficial for you.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/DebtConsolidationLoansFinance(Top5Benefits%20ofDebtConsolidationYouShouldConside).jpg?updatedAt=1725963537938', 2, 'Top 5 Benefits of Debt Consolidation Loans You Should Consider', ' Discover how debt consolidation can reduce financial stress and improve your credit score with these 5 compelling reasons. Explore your options today!\n', NULL, 2, '2024-09-02', NULL, '2024-09-09 04:14:26'),
(34, 6, 'Introduction to Forex Trading for New Traders', 'forex-trading-guide', 'Forex trading allows you to participate in the worldwide economy without leaving your house. If you’re new to it, there’s no need to worry—simply start with the basics, and you’ll be on your way to earning. This blog will cover the essential concepts to give you a strong start in this dynamic market.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/ForexFinance(IntroductiontoForexTradingforNewTraders.jpg?updatedAt=1725963538095', 3, 'A Beginner\'s Guide to Forex Trading', 'This beginner\'s guide covers the fundamentals of forex trading, explores various trading methods, and clarifies essential terminologies every trader must know.', NULL, 1, '2024-09-03', NULL, '2024-09-09 04:21:04'),
(35, 6, 'Gold IRA: A Strategic Investment Approach', 'gold-ira-investment', 'No one wants a retirement that is not secured and financially stable. Given the volatility in the economy, relying solely on traditional investments might fall short. Here is when a Gold IRA (Individual Retirement Account) becomes beneficial. A gold IRA kit is a valuable guide for investing in gold. This blog will explore what a gold IRA kit is and why opening one is a wise decision.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/GoldFinance(GoldIRAaStrategicInvestmentApproach).jpg?updatedAt=1725963538261', 3, 'Gold IRA: A Strategic Investment Plan', 'Explore why including a gold IRA might be essential for your retirement strategy. Gain insights on setting up a gold IRA and its benefits.', NULL, 3, '2024-09-04', NULL, '2024-09-09 04:23:47'),
(36, 6, 'How Smart Retirement Planning Secures Your Future?', 'importance-of-retirement-planning', 'Today, you might aim for early retirement, hoping to enjoy your later years. But without sufficient savings, you may have to rely on social security or work longer than preferred. Therefore, starting your retirement planning early in life becomes prudent to give your savings more time to grow. This blog will explore the importance of retirement planning and offer valuable tips to help ensure your future is comfortable, worry-free, and financially secure.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Finance/RetirementSchemesFinance(HowSmartRetirementPlanningSecuresYourFuture).jpg?updatedAt=1725963537779', 2, 'How Smart Retirement Planning Ensures a Better Future?', 'Don’t leave your retirement to fate! Learn how smart retirement planning strategies can secure your future and bring peace of mind.', NULL, 4, '2024-09-05', NULL, '2024-09-02 04:26:13'),
(37, 7, '5 Reasons Your Next Car Should Be Electric', 'benefits-of-electric-cars', 'Is it time to consider an electric car for your next ride? Yes, technological advancements are disrupting the way we think about driving. An electric vehicle with its sophisticated technology brings efficiency and convenience. All in all, an EV benefits you and our planet equally. In this blog, we highlight why an electric car might just be your next best move.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Automobile/ElectricCarsAutomobile(5ReasonsYourNextCarShouldBeElectric).jpg?updatedAt=1725963568761', 3, 'Top 5 Reasons Your Next Car Should Be Electric', 'These 5 reasons indicate that electric cars lead the charge toward a sustainable future. Learn how EVs can benefit you and the planet.', NULL, 5, '2024-09-06', NULL, '2024-09-09 04:29:17'),
(38, 7, '5 Reasons Two-Wheelers Are the Go-To Choice for Commuters', 'rise-in-two-wheeler-adoption', 'There is a growing shift in commuter preference worldwide towards two-wheelers. This surging trend is not limited to the geographical boundaries of developing and developed countries; it is significantly taking place due to the changing transportation models. In this blog, we delve into the reasons for the growing popularity of two-wheelers and why they are becoming the most preferred transportation choice for commuters.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Automobile/BikesAutomobile(5ReasonsTwoWheelersAretheGo-ToChoiceforCommuters).jpg?updatedAt=1725963568722', 2, '5 Reasons Two-Wheelers Are The Top Pick For Commuters', 'Dive into the factors boosting the global surge in two-wheeler adoption. From cost-effectiveness to ease of use, discover what\'s driving this phenomenon.  ', NULL, 8, '2024-09-07', NULL, '2024-09-09 04:34:01'),
(39, 8, 'How to Find the Most Reliable Pest Control Service', 'how-to-find-a-reliable-pest-control-service', 'When pests invade your home, the foremost priority is often to eliminate them as quickly as possible. As you search for pest control services nearby, you may encounter numerous options. With so many pest control companies available, how can you discern which offers the best deal? Here are 10 essential ways to select the best pest control service for your home.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/PestControlService(HowtoFindtheMostReliablePestControlService).jpg?updatedAt=1725963587371', 2, 'How to Find a Reliable Pest Control Service for Your Home ', 'Are you looking for a reliable pest control service? Follow these simple tips to find the best provider for your needs—licensing, pricing, warranties, and more.\n', NULL, 6, '2024-09-08', NULL, '2024-09-09 04:37:54'),
(40, 8, 'Why Should You Consider Replacing Your Windows?', 'benefits-for-window-replacement', 'Window replacement might not be at the top of your mind when considering home improvements, but it can provide benefits beyond just looks. Sure, they upgrade your home\'s visual appeal, but going further, they also offer some practical advantages. If you are wondering why you need new windows in your home, here are 5 key reasons telling you just that.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/WindowReplacementServices(WhyShouldYouConsiderReplacingYourWindows).jpg?updatedAt=1725963589628', 2, '5 Reasons to Consider Window Replacement Today', 'Thinking about upgrading your windows? Discover the top 5 reasons why window replacement can help you enhance your home beyond aesthetics.\n', NULL, 7, '2024-09-09', NULL, '2024-09-09 04:41:31'),
(41, 8, 'Is Your HVAC System Trying to Warn You?', 'signs-you-need-hvac-servicing', 'Amid your busy schedule, it’s easy to forget about your HVAC system, which works hard to keep you comfortable all year round. Like any complex machine, it requires regular upkeep to perform well. Ignoring its quiet signals can result in higher energy bills or costly repairs. This blog will help you spot when your HVAC system needs a check-up from a professional technician.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/HVACService(IsYourHVACSystemTryingtoWarnYou).jpg?updatedAt=1725963587341', 2, 'Is Your HVAC System Sending Warning Signs?', 'Is your HVAC system causing your energy bills to soar or starting to look outdated? Learn the key signs that indicate your HVAC needs immediate servicing.', NULL, 2, '2024-09-10', NULL, '2024-09-09 04:48:15'),
(42, 8, 'Transform Your Space with These 5 Home Remodeling Ideas', 'home-remodeling-must-haves', 'Home renovation projects are rising as individuals seek to upgrade their homes and adapt to evolving lifestyles. The biggest challenge is figuring out where to begin. Determining the most beneficial alterations for your home can be overwhelming with various choices and trends. This blog helps you explore the primary aspects of a feature-packed home renovation project.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/RemodellingServices(TransformYourSpacewithThese5HomeRemodelingIdeas).jpg?updatedAt=1725963587577', 3, 'Transform Your Space: 5 Home Remodeling Ideas', 'Are you planning to remodel your home? Take advantage of our must-have remodeling ideas to warm and style your space!\r\n', NULL, 1, '2024-09-11', NULL, '2024-09-09 04:51:45'),
(43, 8, 'Personal Injury Lawyers: Key Advocates for Your Rights', 'reasons-for-hiring-a-personal-injury-lawyer', 'Things can dramatically shift in a few life-altering moments due to someone else\'s carelessness. Car accidents, slips, falls, and many other incidents are common personal injuries that can cause significant setbacks in life. These situations can result in physical pain and unwanted financial and legal struggles.', 'In such times, a personal injury lawyer can become your shield. They\'re not just legal consultants but advocates and defenders who can drive you through these uncommon difficulties. Here\'s an overview of why having a personal injury lawyer by your side can help you with your legal wins.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/PersonalInjuryLawyerServices(PersonalInjuryLawyersKeyAdvocatesforYourRights).jpg?updatedAt=1725963587281', 3, 'Personal Injury Lawyers: Key Advocates for Your Rights', 'Explore the importance of having a seasoned personal injury lawyer to navigate legal complexities and safeguard your interests during tough times.', NULL, 3, '2024-09-12', NULL, '2024-09-09 04:54:30'),
(44, 8, 'Why Is Hiring a DUI Lawyer Beneficial?', 'advantages-of-hiring-a-dui-lawyer', 'If you’re charged with driving under the influence (DUI), you may face severe penalties, including losing your driver\'s license, facing jail time, and paying hefty fines. In such a situation, getting help from a qualified and specialized lawyer who knows DUI laws inside out is essential.', 'A DUI lawyer can be a great ally, guiding you through the legal process and reducing its impact on your life. Here are 6 reasons why hiring a DUI lawyer is beneficial for you.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/DUIServices(WhyIsHiringaDUILawyerBeneficial).jpg?updatedAt=1725963587376', 2, 'Advantages of Hiring a DUI Lawyer', 'Are you facing DUI charges? Discover how a qualified DUI lawyer can help navigate legal complexities and offer a better chance of a positive outcome.', NULL, 4, '2024-09-13', NULL, '2024-09-09 04:57:43'),
(45, 8, 'Why You Need A Divorce Lawyer: Role and Significance', 'why-you-need-a-divorce-lawyer-their-role-and-significance', 'Life sometimes leads us down unexpected paths, and divorce, a universally accepted unfortunate event, is one of them. For some, it symbolizes a fresh start, while for others, it represents the closing of a significant life chapter. The emotional turmoil, complicated matters, and the struggle for mental stability can make the legal procedures seem like an emotionally painful process.', 'In such circumstances, having a professional, practical, and well-versed person can make navigating through the divorce process doable. This is where divorce lawyers offer the much-needed legal expertise, helping you make well-informed and solid decisions.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/DivorceServices(WhyYouNeedADivorceLawyerRoleandSignificance).jpg?updatedAt=1725963587309', 2, 'Why You Need A Divorce Lawyer: Role & Significance', 'Learn how a skilled divorce lawyer can help you handle the complexities of divorce, ensuring you make informed decisions and achieve fair outcomes.', NULL, 5, '2024-09-14', NULL, '2024-09-09 05:00:47'),
(46, 8, '5 Tips for a Hassle-Free Flight Booking Experience', 'tips-for-flight-booking', 'Reserving a flight, with several options available, can be a journey filled with excitement and confusion. Whether you\'re an experienced traveler or a beginner planning your first trip, it\'s necessary to make an informed flight booking decision for a hassle-free and enjoyable flight experience. In this blog, we will walk you through the essential factors you need to consider while booking your flight, aiding you in making choices that save you money and allow you to travel easily.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/FlightServices(5TipsforaHassleFreeFlightBookingExperience).jpg?updatedAt=1725963587016', 3, '5 Tips for a Hassle-Free Flight Booking Experience', 'Explore crucial factors that can enhance your flight experience, including optimal booking times, airline comparisons, and the importance of seat selection.', NULL, 8, '2024-09-15', NULL, '2024-09-09 05:03:22'),
(47, 8, 'River Cruises: Sailing Through the Scenic Routes', 'river-cruises', 'River cruises are an excellent way to experience some of the most stunning landscapes and charming towns up close. Unlike ocean cruises, which spend long hours in deep waters, river cruises travel down narrow rivers and dock right in the heart of towns and cities, giving you a more immersive experience.', 'If you have yet to try river cruising, this blog will take you through its charm by highlighting its unique benefits and enjoyable experiences onboard that you’re probably missing out on.', 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/CruiseService(RiverCruisesSailingThroughtheScenicRoutes).jpg?updatedAt=1725963587091', 2, 'River Cruises: Exploring the Scenic Routes', 'Set sail on a river cruise and enjoy luxurious amenities onboard and incredible destinations at every port of call.', NULL, 6, '2024-09-16', NULL, '2024-09-09 05:05:36'),
(48, 8, '5 Major Benefits of Car Rental Services', 'benefits-of-car-rental-services ', 'Traveling can sometimes be tough on your pocket, but what about a method that lets you save bucks while allowing you to roam around? When comparing the costs of numerous rideshares or public transportation, renting a car is cheaper. This applies to individuals, groups of friends, or families. Let\'s explore the top 5 benefits of car rental services and how they can enhance your traveling experience.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/CarRentalsServices(5MajorBenefitsofCarRentalServices).jpg?updatedAt=1725963586935', 2, '5 Best Benefits of Car Rental Services', 'Discover 5 key benefits of car rental services to gear up your travel journey. 1. Cost-effective • 2. Range of Cars • 3. Comfort and more.', NULL, 7, '2024-09-17', NULL, '2024-09-09 05:09:47'),
(49, 8, '7 Benefits of Opting for a Travel Vacation Package', 'benefits-of-travel-packages', 'Imagine a trip where you travel worry-free without the hassle of thinking about booking, planning, and reviewing every minute detail, from flight accommodation to activities and meals. Sounds like a dream, right? But it\'s entirely possible through travel vacation packages. These packages have numerous benefits and can save time, money, and stress. Here are 7 reasons why a vacation package should be your top choice for your next getaway.', NULL, 'https://ik.imagekit.io/gku4adhog/trusted-10/Services/VacationPackagesServics(7BenefitsofOptingforaTravelVacationPackage).jpg?updatedAt=1725963587590', 2, '7 Benefits of Travel Vacation Packages', 'Discover the convenience, cost-efficiency, and incredible experiences offered by travel vacation packages for an unforgettable travel journey.', NULL, 2, '2024-09-18', NULL, '2024-09-09 05:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'James Smith'),
(2, 'Shiro Hernandez'),
(3, 'Kevin James'),
(4, 'Evelyn Wang'),
(5, 'Jim Swede'),
(6, 'Percy Cooper'),
(7, 'Nico ZUcker'),
(8, 'Olivia Sakai');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `icon`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'Technology', NULL, NULL, NULL, 'technology', 'The Future of Technology: Software | Gadgets | AI', 'Stay ahead of the curve with our guides on AI advancements, essential software tools, and emerging tech trends.', NULL, '2024-09-06 15:08:09'),
(2, 'Career', NULL, NULL, NULL, 'career', 'Career Growth: Jobs, Tips & Insights', 'Find valuable resources for career guidance and be updated with what\'s happening across industries.', NULL, '2024-09-06 15:10:32'),
(3, 'Business', NULL, NULL, NULL, 'business', 'Business: Emerging Trends & Expert Insights', 'Gain valuable insights and expert guidance on business strategy and developmental objectives for the modern business landscape.', NULL, '2024-09-06 15:11:52'),
(4, 'Health', NULL, NULL, NULL, 'health', 'Expert Tips on Health Care & Well-Being', 'Learn the essentials of preventive health care, including treatment options and lifestyle changes to support your overall well-being.', NULL, '2024-09-06 15:13:33'),
(5, 'Lifestyle', NULL, NULL, NULL, 'lifestyle', 'Lifestyle: Trends, Tips, & Reviews', 'Get expertly curated content on maintaining a healthy lifestyle and improving mental and physical wellness.', NULL, '2024-09-06 15:14:25'),
(6, 'Finance', NULL, NULL, NULL, 'finance', 'Master Your Finances | Tax, Insurance & Loans\r\n', 'Gain valuable insights on navigating the complex world of finance with smart solutions that empower your financial growth. ', NULL, '2024-09-06 15:15:43'),
(7, 'Automobile', NULL, NULL, NULL, 'automobile', 'Automobile Trends & Reviews', 'Get expert reviews on the latest trends in automobile innovations, electric vehicles, and tech advancements.', NULL, '2024-09-06 15:17:05'),
(8, 'Services', NULL, NULL, NULL, 'services', 'Services: Home, Legal, Travel & More', 'Learn how to choose the best options for your needs with our in-depth reviews and guides for various services.', NULL, '2024-09-06 15:19:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_block`
--
ALTER TABLE `ads_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_data`
--
ALTER TABLE `ads_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_postback_data`
--
ALTER TABLE `ads_postback_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ads_block`
--
ALTER TABLE `ads_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads_data`
--
ALTER TABLE `ads_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_postback_data`
--
ALTER TABLE `ads_postback_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
