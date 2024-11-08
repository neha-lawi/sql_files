-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 05:22 AM
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
-- Database: `findsjnu_findaresponse`
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
(1, 1, 'Role of AI in Sales and Marketing Automation Software', 'role-of-ai-in-sales-and-marketing-automation-software', 'In the current business world, staying ahead of the competition isn’t just about putting in the hours—it\'s about working smart. Artificial intelligence (AI) transforms how businesses approach sales and marketing, allowing them to connect with their audience more effectively, manage leads, and predict future growth more accurately. Today, AI integrates with multiple sales and marketing automation software to drive efficiency and improve customer engagement.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/Role_of_AI_in_Sales_and_Marketing_Automation_Software.jpg?updatedAt=1725510194437', 2, 'The Role of AI in Sales and Marketing Automation Software', 'Know how AI revolutionizes sales and marketing automation by enhancing marketing strategies, lead management, chatbots, personalization & predictive analytics.', NULL, 2, '2024-08-01', NULL, '2024-09-03 04:45:42'),
(2, 1, 'The 7 Different Types Of Cybersecurity', 'different-types-of-cyber-security', 'In today\'s digital age, cybersecurity has become essential to safeguarding sensitive information and maintaining the integrity of technology and connections. With cyber threats rapidly evolving, it\'s necessary to understand the different cybersecurity measures to protect data.', 'Cybersecurity includes various strategies, practices, and technologies to protect appliances, networks, programs, and data from attacks, damages, or unauthorized entrance. All security measures, from network to application security, are essential to building a solid defense against cyber threats. Learn about the 7 different types of cybersecurity to better understand how each type works and why it’s important in the context of broader digital protection.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/The_7_Different_Types_Of_Cybersecurity.jpg?updatedAt=1725510194408', 3, '7 Different Types of Cybersecurity ', 'Explore various types of cybersecurity, including network security, endpoint security, and more. Learn how each type protects against cyber threats.', NULL, 1, '2024-08-02', NULL, '2024-09-03 04:52:39'),
(3, 1, 'The Impact of Software in Industry Evolution', 'role-of-software-in-every-industry', 'In times when technology proves to be the real key to competitiveness, software has emerged as a significant enabler of industry transformation. From manufacturing to healthcare, software solutions have changed how businesses used to work by delivering new efficiencies and capacities. Know how software has redefined industries, extending the boundaries of what\'s possible and setting the stage for the future.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/The_Impact_of_Software_in_Industry_Evolution.jpg?updatedAt=1725510194426', 2, 'The Transformative Impact of Software in Various Industries', 'Learn how software influences various industries, focusing on the key areas of innovation, efficiency, and the future of business technology.', NULL, 3, '2024-08-03', NULL, '2024-09-03 04:56:24'),
(4, 1, 'Why Your Business Needs Cloud Storage Now', 'benefits-of-cloud-storage-for-business', 'Business owners always search for smarter, faster, and more cost-effective ways to manage their operations. That\'s where cloud storage comes into play. Think of it as having a super-secure, ultra-flexible, and infinitely expandable space that stores all your data in one place. Explore its advantages and potential to enhance data management, foster collaboration, and promote sustainability. ', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/Why_Your_Business_Needs_Cloud_Storage_Now.jpg?updatedAt=1725510194404', 3, 'Benefits of Using Cloud Storage for Businesses', 'Learn the benefits of cloud storage and how it can handle your company\'s data and collaboration challenges, paving the way for long-term success.', NULL, 4, '2024-08-04', NULL, '2024-09-03 05:03:34'),
(5, 1, 'Choose The Perfect Mini Security Camera For Your Home', 'mini-security-camera', 'Ensuring the safety of your home and loved ones is more crucial than ever. With technological advancements, mini-security cameras have become convenient for modern households. While various options are available in the market, it is essential to consider many factors. The blog highlights the important points to consider while choosing the perfect mini-security camera for your home.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/Choose_The_Perfect_Mini_Security_Camera_For_Your_Home.jpg?updatedAt=1725510194396', 4, 'Choose The Best Mini Security Camera For Your Home', 'Learn how to choose the ideal mini-security camera, including key features, installation tips, and longevity, to make an informed decision for your home.', NULL, 5, '2024-08-05', NULL, '2024-09-03 05:07:01'),
(6, 1, 'Why Installing Solar Panels is a Smart Move', 'benefits-of-installing-a-solar-panel', 'Nowadays, sustainable living isn\'t just a trend—it\'s a lifestyle choice for many. That\'s why more and more homeowners are prioritizing renewable energy, and one of the simplest ways to achieve that is by installing solar panels. Beyond reducing your carbon footprint, solar power also has many other benefits.', 'In this blog, know how it benefits you and why tapping into the sun\'s energy is a win-win for both the planet and you. If you’re eco-conscious or simply want to save on your electricity bills, this guide will show you how going solar could make that happen.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Technology/Why_Installing_Solar_Panels_is_a_Smart_Move.jpg?updatedAt=1725510194431', 3, 'Benefits of Installing Solar Panels in Your Home', 'Wondering why going solar is considered a smart move? Here are reasons why switching to solar power can bring you many benefits. ', NULL, 8, '2024-08-06', NULL, '2024-09-03 05:11:29'),
(7, 2, 'Why an Online MBA can Be the Best Move for Your Career', 'benefits-of-an-online-mba', 'In today\'s fast-paced and digitally-driven world, pursuing higher education has never been more accessible or advantageous. An online MBA (Master of Business Administration) might be what you need to excel in your career and reach new heights, unlocking the door to varied opportunities. Moreover, an online MBA has broadened the scope of self-development from wherever one is situated. The blog details the benefits of an online MBA.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/Why_an_Online_MBA_can_Be_the_Best_Move_for_Your_Career.jpg?updatedAt=1725510596266', 3, '7 Reasons Why You Should Choose An Online MBA ', 'An online MBA has the potential to unlock your career growth while you save time on commutes and expenses and gain industry exposure.', NULL, 6, '2024-08-07', NULL, '2024-09-03 05:17:47'),
(8, 2, 'How do Scholarships Promote Diversity and Inclusion?', 'role-of-scholarships-in-diversity-and-inclusion', 'Education is often seen as a way to make things fair for everyone. But, many face challenges and financial barriers that keep them from going to college. As a result, they may have to choose a different career path or settle for a lower-paying job. This creates a cycle of inequality and limits opportunities for these students.', 'Scholarships focusing on diversity and inclusion help break down these barriers and give people from marginalized backgrounds a chance to succeed academically and professionally. By investing in these students\' education, institutions can create a more diverse and inclusive workforce.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/How_do_Scholarships_Promote_Diversity_and_Inclusion.jpg?updatedAt=1725510596236', 3, 'The Role of Scholarships in Promoting Diversity & Inclusion', 'Find out how scholarships promote diversity and inclusion by empowering underrepresented students to achieve their academic and career goals.', NULL, 7, '2024-08-08', NULL, '2024-09-03 05:21:02'),
(9, 2, 'From Learning to Serving: The Road to a Nursing Degree', 'road-to-nursing-degree', 'Like other professions, the journey to a nursing degree involves learning and taking up challenges and responsibilities to gain a rewarding experience. Whether starting with nursing education or transitioning into this field, the degree requires hands-on clinical experience, theoretical knowledge, and real-life examples to make yourself industry-ready. ', 'However, completing a nursing degree with flying colors requires immense hard work and determination to stay focused. The journey has a set pattern and structure to grasp the fundamentals of mastering the study techniques. This blog has dissected the key areas to focus on to make your nursing journey successful.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/From_Learning_to_Serving_The_Road_to_a_Nursing_Degree.jpg?updatedAt=1725510596285', 2, 'From Learning to Serving: The Journey of a Nursing Degree', 'Transition from classroom to clinic in nursing with tips like mastering study techniques, developing clinical skills, and building professional networks. ', NULL, 2, '2024-08-09', NULL, '2024-09-03 05:24:31'),
(10, 2, 'Your Guide to a Successful Career in Hospitality Management', 'career-in-hospitality-management', 'As the hospitality industry grows and evolves, there has never been a better time to enter this exciting field. Whether you are just starting or looking to advance your current position, our guide will provide valuable insights and tips for navigating the competitive world of hospitality management. So, prepare to embark on your path to success in this rewarding industry.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/Your_Guide_to_a_Successful_Career_in_Hospitality_Management.jpg?updatedAt=1725510596280', 2, 'Hospitality Management: A Comprehensive Career Guide', 'Understand what it takes to build a successful career in hospitality management. Get insights on essential skills, educational requirements, & industry trends.', NULL, 1, '2024-08-10', NULL, '2024-09-03 05:29:57'),
(11, 2, 'Navigating the Rise of Project Management Careers', 'the-rise-of-project-management-careers', 'With businesses increasingly prioritizing efficiency and innovation, project managers are becoming pivotal figures in driving success. The demand for these professionals is not just a trend but a fundamental shift across all sectors. This blog aims to provide insight into the growing demand for a career in project management, the essential skills for aspiring project managers, and the numerous opportunities for growth and advancement within the field.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/Navigating_the_Rise_of_Project_Management_Careers.jpg?updatedAt=1725510596310', 3, 'The Rising Demand of Project Management Careers', 'Learn why now is the ideal time for pursuing a career in project management, with insights into crucial skills and the vast opportunities available.', NULL, 3, '2024-08-11', NULL, '2024-09-03 05:32:06'),
(12, 2, '5 Benefits of Fleet Management to Boost Logistics Operations', 'benefits-of-fleet-management', 'Businesses are always on the lookout for optimizing the use of resources to reduce costs. Out of many departments, transportation and logistics are the core of any company. Fleet management revolutionizes how we carry logistics in today’s day and age. This blog delves into how fleet management helps streamline operations, reduce costs, and improve efficiency.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/5_Benefits_of_Fleet_Management_to_Boost_Logistics_Operations.jpg?updatedAt=1725510596263', 3, '5 Benefits Of Fleet Management To Boost Logistics', 'Discover how fleet management can transform logistics operations with technology infused to predict future trends and provide potential breakdowns.', NULL, 4, '2024-08-12', NULL, '2024-09-03 05:34:23'),
(13, 2, 'Essential Factors to Consider Before Applying for an Online Job', 'factors-to-consider-before-applying-for-an-online-job', 'Today, the internet has opened up many opportunities for job seekers. Whether you\'re eager to break free from the traditional 9-to-5 grind or seek a way to earn some extra cash, finding the perfect online job can change your life. But jumping into the online job market can feel like playing a complicated chess game. ', 'With so many moves and options to consider, it’s common to feel confused and not know where to begin. It’s time to leave your worries behind, as this blog covers some important factors to help you find the perfect online job for a successful future.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Career/Essential_Factors_to_Consider_Before_Applying_for_an_Online_Job.jpg?updatedAt=1725510596288', 2, 'Factors to Consider Before Applying for an Online Job', 'Are you looking for an online job? Know tips on identifying your skills, researching options, preparing for virtual interviews, and more.', NULL, 5, '2024-08-13', NULL, '2024-09-03 05:50:25'),
(14, 3, '10 Key Benefits of Investing in Real Estate', 'benefits-of-real-estate-investment', 'Nowadays, when the economy fluctuates, most investors seek secure and sure-to-return investment opportunities. One of the tried-and-tested methods comes out on top, and that is real estate investment. Real estate, which has a history of continuous return on investment and is likely to increase in value in the future, is where beginners and experienced investors usually invest their money. This blog will explain why real estate investments might be key to building long-term wealth and financial security. ', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Business/10_Key_Benefits_of_Investing_in_Real_Estate.jpg?updatedAt=1725511043218', 3, 'Top 10 Benefits of Investing in Real Estate', 'These 10 benefits of investing in real estate will help you better understand this market\'s potential rewards and opportunities. Read to know more.', NULL, 8, '2024-08-14', NULL, '2024-09-03 05:54:25'),
(15, 3, 'The Transformative Role of Industrial Machines Across Sectors', 'the-role-of-industrial-machines-across-sectors', 'Over the past few decades, the world of industrial machines has undergone a remarkable transformation driven by the digital age. From traditional mechanical devices to state-of-the-art automated systems, these machines have made great strides in transforming industries and enabling progress. Today, we look into the various innovations and developments in industrial machinery streamlining operations across different sectors.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Business/The_Transformative_Role_of_Industrial_Machines_Across_Sectors.jpg?updatedAt=1725511043265', 2, 'The Role of Industrial Machines in Transforming the Future', 'Automation, AI, and IoT significantly impact industrial machinery. Learn how these technologies are shaping a new era in manufacturing and production.', NULL, 6, '2024-08-15', NULL, '2024-09-03 05:57:23'),
(16, 3, 'Coworking Spaces: 5 Key Features of the Coworking Model', 'features-of-coworking-spaces', 'Coworking spaces redefine the working style by offering a dynamic alternative to traditional offices. They are home to freelancers, startups, remote workers, and small businesses. These shared cubicles under one branch are beyond a mere trend, aligning more with an approach that brings collaboration and innovation. Companies and individuals are embracing the unique approach to work by adapting to collaborative working spaces.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Business/Coworking_Spaces_5_Key_Features_of_the_Coworking_Model.jpg?updatedAt=1725511043257', 3, '5 Key Features Of A Coworking Space', 'Discover how coworking spaces are reshaping the modern workplace, fostering collaboration, flexibility, and community for professionals of all backgrounds.', NULL, 7, '2024-08-16', NULL, '2024-09-03 06:07:40'),
(17, 4, 'Dental Implants: Debunking Common Myths', 'debunking-myths-on-dental-implants', 'A cloud of myths and misconceptions often surrounds dental implants. Many people hear conflicting information about their effectiveness, comfort, and overall value, making it difficult to understand what\'s true and what\'s not. If you\'ve been considering dental implants but are unsure about their benefits, you\'re at the right place. In this blog, we\'ll cut through the noise and address the most common myths about dental implants.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/Dental_Implants_Debunking_Common_Myths.jpg?updatedAt=1725511185954', 3, 'Debunking Common Myths on Dental Implants', 'Find out why dental implants are the perfect long-lasting tooth replacement options that give you a reason to smile every day.', NULL, 2, '2024-08-17', NULL, '2024-09-03 06:10:03'),
(18, 4, 'Understanding ADHD and its Treatment Options', 'understanding-adhd-and-its-treatments', 'Attention Deficit Hyperactivity Disorder (ADHD) is a neurodevelopmental condition characterized by symptoms of inattention, hyperactivity, and impulsivity. ADHD symptoms can impact various aspects of life, including school, work, and personal relationships, and both children and adults can be affected. Methylphenidate (Ritalin) and Amphetamines (Adderall) are the most commonly prescribed medications that help manage ADHD symptoms. To spread more awareness, we highlight available treatments for ADHD in this blog.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/Understanding_ADHD_and_its_Treatment_Options.jpg?updatedAt=1725511186003', 3, 'Understanding ADHD and the Possible Treatment Options', 'Get a complete understanding of ADHD, what it is, and the possible treatment options to implement.', NULL, 1, '2024-08-18', NULL, '2024-09-03 06:13:23'),
(19, 4, 'Breast Cancer: Symptoms and Treatment Options', 'breast-cancer-symptoms-and-treatments', 'With over 2 million new cases diagnosed worldwide each year, Breast cancer is one of the most common types of cancer. With such a high prevalence and complexity, understanding breast cancer symptoms and treatment for patients and their loved ones becomes crucial.', 'In this blog, we highlight the different warning signs of breast cancer and possible treatment options. This information can serve as a starting point to help you better understand your diagnosis and make decisions about your treatment options.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/Breast_Cancer_Symptoms_and_Treatment_Options.jpg?updatedAt=1725511186025', 2, 'Understanding Breast Cancer Symptoms and Treatments', 'Find the common symptoms of breast cancer that should not be ignored, along with effective treatment options, including surgery, chemotherapy, and more.', NULL, 3, '2024-08-19', NULL, '2024-09-03 06:15:41'),
(20, 4, '7 Triggers of Psoriasis You Might Not Know About', 'triggers-of-psoriasis', 'Psoriasis is a condition that affects millions of people worldwide, causing red, scaly patches on the skin. While many are aware of the common triggers like stress and cold weather, several lesser-known factors can flare up this persistent skin issue. Understanding these hidden triggers can help manage and reduce the frequency of flare-ups. Knowing these seven psoriasis triggers can help you manage the condition more effectively beforehand.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/7_Triggers_of_Psoriasis_You_Might_Not_Know_About.jpg?updatedAt=1725511186089', 2, '7 Commonly Overlooked Triggers of Psoriasis', 'Psoriasis affects millions, but many remain unaware of its hidden triggers. Learn about these 7 surprising factors that affect your skin health.', NULL, 4, '2024-08-20', NULL, '2024-09-03 06:18:23'),
(21, 4, 'Complete Guide to Hair Transplants: Benefits & Types', 'guide-to-hair-transplants', 'Whether you regularly exercise, monitor your eating habits, or take care of your body, there are days when you start experiencing extreme hair fall conditions that frustrate the core out of you. This can be because of possible DNA mishaps, hormonal changes, or weather conditions.', 'But sudden hair loss tosses our smiles off our faces and replaces them with dim expressions, often locking us in a lack of confidence. To deal with this, there are clinically approved alternatives like hair transplant, a life-changing procedure that promises a fuller, more youthful head of hair. This blog explains how you can regain your smile and confidence with this magic treatment called hair transplant. ', 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/Complete_Guide_to_Hair_Transplants_Benefits_&_Types.jpg?updatedAt=1725511186049', 3, 'Comprehensive Guide To Hair Transplant: Benefits & Types', 'Considering a hair transplant? Explore different types, procedures, and benefits of a natural-looking treatment and restore your confidence.', NULL, 5, '2024-08-21', NULL, '2024-09-03 06:21:03'),
(22, 4, 'Hearing Aids: Uses, Beneficiaries, and Care Tips', 'hearing-aids', 'In a world filled with sounds, experiencing hearing loss can feel isolating. However, hearing aids have transformed how people reconnect with sounds. These remarkable devices make sound louder and help people connect with the world around them. In this blog, we’ll look at how hearing aids can help their beneficiaries and provide simple tips for keeping them in good shape, so they keep working well for you.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Health/Hearing_Aids_Uses_Beneficiaries_and_Care_Tips.jpg?updatedAt=1725511186020', 3, 'Hearing Aids: Uses, Beneficiaries and Best Care Practices', 'This guide explains how hearing aids work and who can benefit from them. It also provides maintenance tips to keep the hearing aids in the best condition.', NULL, 8, '2024-08-22', NULL, '2024-09-03 06:24:04'),
(23, 5, 'Interconnected Relationship Between Beauty & Wellness', '-relationship-between-beauty-and-wellness', 'Often, beauty is reflected in outward appearance, neglecting the idea of inner well-being. Beauty is beyond being skin deep. Instead, it is the reflection of mental and physical health combined. Whether you are an avid beauty enthusiast or ready to supercharge your health, this blog covers precisely what you need. Explore the connection between beauty and wellness and gain practical tips and examples to achieve radiance that shines through within. ', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Lifestyle/LifestyleBeauty&Wellness.jpg?updatedAt=1725517567722', 2, 'Interconnected Relationship Between Beauty & Wellness', 'Learn the symbiotic relationship between beauty and wellness and discover practical tips for achieving a natural glow from the inside out.', NULL, 6, '2024-08-23', NULL, '2024-09-03 06:26:19'),
(24, 5, '3 Important Tips to Achieve Your Weight Loss Goals', 'weight-loss-tips', 'With today’s hectic lifestyle, maintaining optimal fitness goals can be challenging. Although engaging in activities like a morning jog, swimming, cycling, etc, can be a viable solution, not every weight loss goal can be achieved with just that.', 'Proper diet, rigorous physical exercise, the right mindset, and, most importantly, using the right tools and realistic goals are the keys to achieving your weight loss objective. Here are a few things you can start following right away.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Lifestyle/LifestyleWeightLoss.jpg?updatedAt=1725517567854', 2, 'Achieve Your Weight Loss Goals with These Valuable Tips', 'Thinking of losing your weight? Get valuable tips to integrate into your daily life and start your journey toward a healthier you!', NULL, 7, '2024-09-24', NULL, '2024-09-03 06:29:10'),
(25, 5, 'The Ultimate Guide to the Keto Diet for Beginners', 'beginner-guide-to-the-keto-guide', 'Among many different diet plans, the keto diet is a prominent one many individuals follow. The keto diet offers its followers impressive health benefits, including weight loss and enhanced mental clarity. It also helps lower the risk of certain diseases. But for beginners, this guide will help you understand the keto diet, how to get started, and what to expect. Whether you\'re looking to shed a few pounds or simply want to feel more energetic, this guide covers you.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Lifestyle/LifestyleKetoDiet.jpg?updatedAt=1725517567831', 3, 'Ultimate Guide To The Keto Diet For Beginners', 'Learn how a keto diet, focusing on higher fat and lower carb intake, can aid weight loss, enhance mental clarity, and reduce the risk of certain diseases.', NULL, 2, '2024-08-25', NULL, '2024-09-03 06:34:41'),
(26, 5, 'The Power of Nutra for a Healthier Lifestyle', 'the-power-of-nutra-for-a-healthier-lifestyle', 'Are you tired of hearing the same old health advice? Eat your veggies, get enough sleep, and exercise regularly. While these tips are essential, a new buzzword in health and wellness is worth exploring—Nutra. Short for nutraceuticals, Nutra refers to products derived from food sources that provide additional health benefits besides basic nutritional value', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Lifestyle/LifestyleNutra.jpg?updatedAt=1725517567835', 2, 'Nutra: A Key Ingredient for a Healthy Lifestyle', 'Understand what Nutra is and how to incorporate Nutra into your diet for improved well-being and longevity.', NULL, 1, '2024-08-26', NULL, '2024-09-03 06:38:15'),
(27, 5, 'Benefits of Body Massage Service for Well-Being', 'benefits-of-body-massage-for-well-being', 'These days, self-care therapies are more like a luxury. Often more than the world, we tend never to stop moving and take time to relax and rejuvenate. People feel guilty taking time out to take care of themselves. However,  in a world that never sleeps, there are bits and pieces of pauses granted to everybody, and one such form is massage, profoundly transforming and making a lasting impact on one’s life. ', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Lifestyle/LifestyleMassage.jpg?updatedAt=1725517567728', 2, 'Benefits Of Body Massage For Well-Being', 'Self-care is beyond luxury. Discover the holistic benefits of massage therapy, from stress relief to improved well-being.', NULL, 3, '2024-08-27', NULL, '2024-09-03 06:40:25'),
(28, 6, 'Insurance Uncovered: Everything You Need to Know', 'everything-you-need-to-know-about-insurance', 'In an uncertain world, insurance is more important than ever. Be it your home, car, or health, insurance provides a shield that supports you in recovering from unexpected situations. However, with numerous options available, understanding the basics can seem overwhelming. This blog aims to make the often-confusing insurance clearer and easier for you.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceInsurance.jpg?updatedAt=1725517590192', 3, 'A Comprehensive Guide on Insurance', 'Don’t wait for an unexpected event to realize how valuable insurance can be. By learning the basics now, you can protect what matters most.', NULL, 4, '2024-08-28', NULL, '2024-09-03 06:45:09'),
(29, 6, 'Why You Should Have a Bank Account?', 'benefits-of-a-bank-account', 'Banking has become an integral part of our everyday lives. It is nearly impossible to function in today\'s society without a bank account. For instance, receiving a paycheck, paying bills, or making purchases, having a bank account makes managing our finances much easier. Yet, despite its importance, many people still operate solely on cash, missing out on the benefits that come with banking.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceBankAccounts.jpg?updatedAt=1725517590269', 2, 'Why is it Important to Have a Bank Account?', 'Open a bank account to deposit your savings and withdraw cash when needed. Learn how a bank account can help with financial management and growth.', NULL, 5, '2024-08-29', NULL, '2024-09-03 06:49:22'),
(30, 6, 'Transform Your Future: 7 Benefits Of An Education Loan', 'benefits-of-education-loan', 'Education is one of the most powerful tools for changing life. However, funding education with expenses beyond one’s imagination often woggles one with thoughts that seem like disaster. In such a case, one usually opts for options that favor the situation more. Rather than missing an opportunity to shape a career and spread wings, one can opt for an education loan to ease the financial worry and work towards dreams with choices that allow one to secure a brighter future. ', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceLoan.jpg?updatedAt=1725517589856', 2, 'Shape Your Future: 7 Benefits Of An Education Loan', 'Learn how an education loan can shape your career by funding your studies, offering flexibility, and ensuring long-term benefits for your future.', NULL, 8, '2024-08-30', NULL, '2024-09-03 06:52:23'),
(31, 6, 'Benefits of Refinancing Your Home Loan Mortgage', 'benefits-of-mortgage-refinancing', 'Have you ever felt like your mortgage is holding you back financially? It\'s a familiar feeling. The monthly payments can seem daunting, especially if interest rates have risen since you first took out your loan. But there\'s a potential solution: mortgage refinancing.', 'Mortgage refinancing is basically taking out a new loan to pay off your existing mortgage. It might sound complicated, but it can be a great way to save money, reduce your monthly payments, or even access cash for other financial goals.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceMortgage.jpg?updatedAt=1725517590273', 2, 'The Benefits of Mortgage Refinancing', 'Learn how refinancing your mortgage can help you achieve your financial goals. Find the right strategy for your needs, from savings to debt management.', NULL, 6, '2024-08-31', NULL, '2024-09-03 06:55:53'),
(32, 6, 'Top 5 Roles and Responsibilities of a Tax Consultant', 'role-of-a-tax-consultant', 'The three-letter word “tax” often overwhelms individuals and business owners in the maze of tax regulations. To have a systematic approach to navigating different complex areas of tax, tax consultants come to the rescue. In this blog, we have curated a comprehensive guide to understanding the role of tax consultants in managing and advising a financial plan for various needs.', '', 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceTaxConsulting.jpg?updatedAt=1725517590269', 3, '5 Important Roles & Responsibilities Of A Tax Consultant', 'Learn about a tax consultant’s roles and responsibilities and how they can optimize finances, ensure compliance, and save money.', NULL, 7, '2024-09-01', NULL, '2024-09-03 07:02:53'),
(33, 6, 'Top 5 Advantages of Debt Consolidation You Must Know', 'benefits-of-debt-consolidation', 'Are you juggling multiple debts, struggling to keep track of each of their due dates? If yes, you\'re not alone. Many people find themselves in a similarly stressful situation. However, there\'s a way to simplify your finances and regain control over all your expenses with debt consolidation.', 'Debt consolidation can streamline your payments, reduce interest rates, and help improve your credit score. Here, we share how debt consolidation benefits you.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceDebtConsolidationLoans.jpg?updatedAt=1725517589874', 2, 'Top 5 Benefits of Debt Consolidation Loans You Should Know', 'From reducing financial stress to improving your credit score, here are 5 compelling reasons to consider debt consolidation loans today!', NULL, 2, '2024-09-02', NULL, '2024-09-03 07:07:06'),
(34, 6, 'Forex Trading Basics: A Comprehensive Overview', 'forex-trading-guide', 'Forex trading offers a financial platform to participate in the global economy from the comfort of your home. If you\'re new to Forex, there\'s no need to worry—starting with the basics is all you need to begin and start earning. In this blog, we will break down the essential concepts to help you build a solid foundation in this dynamic market.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceForex.jpg?updatedAt=1725517590212', 3, 'Introduction to Forex Trading: A Beginner\'s Guide', 'This comprehensive guide for beginners teaches you the basics of Forex trading, various trading methods, and essential terminology.', NULL, 1, '2024-09-03', NULL, '2024-09-03 07:11:38'),
(35, 6, 'Gold IRA: A Strategic Retirement Investment', 'gold-ira-investment', 'Of course, you don’t want a retirement that is not secured. With so many ups and downs in the economy, traditional investments alone might not be enough. That’s where a Gold IRA (Individual Retirement Account) can help. A Gold IRA kit is a helpful guide for investing in gold. It gives you everything you need to buy gold for retirement. This blog will explain what a Gold IRA kit is and why it’s a good idea to open a Gold IRA.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceGold.jpg?updatedAt=1725517589861', 3, 'Gold IRA: A Key Investment Strategy for Retirement', 'Discover why a Gold IRA could be crucial to your retirement plan. Get insights on setting up a Gold IRA and the advantages it offers.', NULL, 3, '2024-09-04', NULL, '2024-09-03 07:14:12'),
(36, 6, 'Why Smart Retirement Planning is Essential for Your Future?', 'importance-of-retirement-planning', 'In today’s age, when people plan to retire early, you could spend 20-30 years in retirement. But without enough savings, you might have to depend on social security or keep working longer than you\'d like. That\'s why it\'s essential to start planning early—giving your money more time to grow. In this blog, we\'ll explain why retirement planning is essential and share some helpful tips to ensure your future is as comfortable and worry-free as possible.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Finance/FinanceRetirementSchemes.jpg?updatedAt=1725517589943', 2, 'How Smart Retirement Planning Secures Your Golden Years?', 'Your golden years deserve precise planning. Learn how retirement planning can secure your financial well-being for years to come.', NULL, 4, '2024-09-05', NULL, '2024-09-03 07:16:52'),
(37, 7, 'Why Your Next Car Should Be Electric?', 'benefits-of-electric-cars', 'Electric cars are changing the way we think about driving. With technological advancements, these vehicles are not just good for the environment—they\'re also fun to drive! Imagine driving through the streets with a quiet ride, all while saving money and helping the planet. In this blog, we highlight the benefits of owning an electric car and why it might be the perfect fit for you.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Automobile/AutomobileElectricCars.jpg?updatedAt=1725517612973', 3, 'How Electric Cars Benefit You and the Planet?', 'An electric car isn’t just a trend; it’s a lifestyle upgrade. Learn how EVs can positively impact your life and the planet.', NULL, 5, '2024-09-06', NULL, '2024-09-03 07:21:37'),
(38, 7, 'Top 5 Reasons Behind the Growing Popularity of Two-Wheelers', 'growing-demand-for-two-wheelers', 'The growing demand for two-wheelers worldwide has become a noticeable trend in developing and developed nations. This ever-increasing trend in modern commuters is driving visible changes for practical needs. We have shared the reasons behind the growing popularity of two-wheelers and why they are becoming the go-to choice for commuters.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Automobile/AutomobileBikes.jpg?updatedAt=1725517612909', 2, 'Top 5 Reasons Behind The Growing Demand For Two-Wheelers', 'Explore the reasons behind the escalating demand for two-wheelers globally. From affordability to convenience, find out what\'s driving this trend.', NULL, 8, '2024-09-07', NULL, '2024-09-03 07:23:55'),
(39, 8, '10 Ways to Find the Most Reliable Pest Control Service', 'how-to-find-a-reliable-pest-control-service', 'When your home is swarming with pests, there’s barely any other thought in your mind other than getting rid of them immediately. As you search for pest control services nearby, you come across almost a dozen. ', 'With so many pest control companies available, how do you know which one’s worth every penny? There are different ways to determine whether or not a pest control company is genuinely dependable. Here, we highlight the 10 ways to get the best one for your home.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesHome%20GardenPestControl.jpg?updatedAt=1725517634132', 2, 'Pest Control Services: 10 Things to Look', 'Are you searching for a pest control service? Check these 10 things with your service provider to get the best deal. 1. License • 2. Cost • Warranty and more.', NULL, 6, '2024-09-08', NULL, '2024-09-03 07:29:55'),
(40, 8, '5 Reasons Why You Might Need a Window Replacement', 'reasons-for-window-replacement', 'Window replacement might not always be at the top of your home improvement list, but it can offer significant benefits beyond appearance. Modern windows have advanced features that improve energy efficiency, reduce noise, and enhance overall comfort. If you\'re wondering whether it\'s time to consider new windows for your home, here are 5 key reasons why a window replacement might be the right choice.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesHomeGardenWindowReplacement.jpg?updatedAt=1725517634372', 2, 'Why You Need a Window Replacement Now?', 'Are you not sure if you need new windows? Check out these 5 convincing reasons why you might need a window replacement for your home.', NULL, 7, '2024-09-09', NULL, '2024-09-03 07:31:49'),
(41, 8, 'Is Your HVAC Trying to Tell You Something?', 'signs-you-need-hvac-servicing', 'In the hustle and bustle of daily life, it\'s easy to overlook the quiet workhorse that keeps your premises comfortable every day—your HVAC system. But just like any other complex machine, your HVAC needs regular care and attention to function optimally. Ignoring its muted cries for help can lead to inefficiencies, higher energy bills, or even costly repairs down the line. In this blog, we highlight some signs your HVAC system might need servicing.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesHomeGardenHVAC.jpg?updatedAt=1725517634194', 2, '5 Signs Your HVAC System Needs Attention', 'Is your HVAC making strange noises or causing high energy bills? Learn the key signs that indicate your HVAC needs servicing and when to call a professional.', NULL, 2, '2024-09-10', NULL, '2024-09-03 07:35:10'),
(42, 8, 'Transform Your Space with These Home Remodeling Must-Haves', 'home-remodeling-must-haves', 'Home renovation projects have become popular as more people seek to update their living spaces and adapt to changing lifestyles. But where do you start? With unlimited options and trends, deciding which improvements would improve your home can be daunting. Discover the key elements of a value-packed home remodeling project through this blog.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesHomeGardenRemodelling.jpg?updatedAt=1725517634441', 3, 'Transform Your Space with These Must-Have Remodeling Ideas', 'Looking to remodel your home? Check out our essential remodeling must-haves to transform your space into a cozy and stylish place you\'ll love!', NULL, 1, '2024-09-11', NULL, '2024-09-03 07:41:12'),
(43, 8, '5 Benefits of Having a Personal Injury Attorney', 'benefits-of-having-a-personal-injury-lawyer', 'We lose hold of time, and lives change. It takes seconds for something significant to happen to turn lives upside down. Negligence of others that causes harm to us in the form of car crash accidents, slips, and falls are some of the most common personal injury tragedies to happen. These incidents mark a hole in lives, leaving not only pain but also suffering from financial and legal challenges. ', 'Having somebody who understands the ins and outs of dealing with such situations can make a difference, and that is where a personal injury lawyer comes into play. They are advocates, supporters, and defenders who can guide one through unforeseen mishaps. Become self-aware of why having a personal lawyer during difficult times is crucial and how they can help fight for legal rights.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesLegalPersonalInjuryLawyer.jpg?updatedAt=1725517634580', 3, '5 Benefits Of Having A Personal Injury Lawyer In Tough Times', 'Discover the critical role of having an expert personal injury lawyer in safeguarding your legal rights during times of crisis.', NULL, 3, '2024-09-12', NULL, '2024-09-03 07:51:32'),
(44, 8, 'Benefits of Hiring a DUI Lawyer', 'benefits-of-hiring-a-dui-lawyer', 'Driving under the influence (DUI) is a severe legal offense that can have significant consequences, including losing your driver’s license, jail time, and hefty fines. If you\'re charged with a DUI, it\'s crucial to seek legal representation from a qualified attorney. A DUI lawyer can provide invaluable assistance throughout the legal process, helping to protect your rights and minimize the potential penalties.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesLegalDUI.jpg?updatedAt=1725517634063', 2, 'The Benefits of Hiring a DUI Lawyer', 'Wondering whether hiring a DUI lawyer is a wise decision? Here’s how hiring a qualified DUI lawyer can help you bring positive results to your case.', NULL, 4, '2024-09-13', NULL, '2024-09-03 07:54:28'),
(45, 8, 'Role and Importance of Having a Divorce Lawyer', 'role-and-importance-of-a-divorce-lawyer', 'Divorce is the most mutually accepted tragic phase of life. For some, it marks the beginning of something fresh; for others, it is an end to a significant chapter. Many emotions, complexities, and mental wellness get caught up in the whirlwind of legal procedures and closing the shared bond. ', 'It becomes essential to have someone alert, practical, and knowledgeable about the subject matter to guide you throughout the divorce process. This is where divorce lawyers provide legal expertise to help you make robust and informed decisions.', 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesLegalDivorce.jpg?updatedAt=1725517634575', 2, 'The Role and Importance of Having a Divorce Lawyer', 'Discover the essential role of divorce lawyers and why having one is crucial. Learn how they protect your rights and help you through this challenging time.', NULL, 5, '2024-09-14', NULL, '2024-09-03 07:57:00'),
(46, 8, '5 Things to Consider When Booking A Flight', 'things-to-consider-when-booking-a-flight', 'Booking a flight can be exciting and overwhelming, especially with the many options available. Whether you\'re a frequent flier or planning your first trip, making an informed choice is crucial to ensure a smooth and fun travel experience. In this guide, we\'ll explore the essential factors to consider when booking a flight, helping you make decisions that save money and enhance travel comfort.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesTravelFlight.jpg?updatedAt=1725517634379', 3, '5 Important Things To Consider When Booking A Flight ', 'To ensure a smooth travel experience, discover vital factors to consider when booking a flight, including pricing, timing, airline selection, and more.', NULL, 8, '2024-09-15', NULL, '2024-09-03 08:00:54'),
(47, 8, 'River Cruises: Your Gateway to Scenic Wonders', 'river-cruises', 'River cruises are a great way to see some of the world\'s most beautiful landscapes and quaint towns up close. Unlike ocean cruises, which sail across extensive stretches of deep water for hours, maybe even days, river cruises sail along narrow waterways and dock in the heart of towns and cities, offering a more immersive experience. If you\'ve yet experienced the wonders of river cruising, this blog dives into its charm, spotlighting its unique perks and onboard experiences you can enjoy.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesTravelCruise.jpg?updatedAt=1725517634434', 2, 'A River Cruise Is Your Gateway To Scenic Wonders', 'Why river cruising has become a must for explorers? From historical sites to local cultures, learn what makes these voyages so special.', NULL, 6, '2024-09-16', NULL, '2024-09-03 08:03:32'),
(48, 8, 'Top 5 Benefits of Car Rental Services', 'benefits-of-car-rentals', 'Traveling can sometimes put a strain on your wallet, but what if there were a way to save money while enjoying the freedom to commute? When considering the trip expenses associated with multiple rides or public transport fares, car rentals can be a less expensive travel solution, especially for individuals, groups, or families. Read on to understand the top 5 benefits of car rentals and how they can improve your travel experience.', NULL, 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesTravelCarRentals.jpg?updatedAt=1725517634438', 2, '5 Key Benefits of Car Rental Services', 'These 5 benefits of car rentals shift your travel experience into high gear. 1. Cost-effective • 2. Convenience • 3. Comfort and more.', NULL, 7, '2024-09-17', NULL, '2024-09-03 08:05:43'),
(49, 8, 'Know Why a Travel Vacation Package can be Your Best Bet', 'benefits-of-travel-packages', 'Traveling is fun when everything is sorted beforehand, allowing you to enjoy and make the most of your planned trip. But what if one says this planned trip can come in handy to you with all the details taken care of, from flights and accommodations to activities and meals?', 'Well, this can become a reality with travel vacation packages. This blog will explore the multiple benefits of vacation packages and how they can enhance your travel experience. ', 'https://ik.imagekit.io/gku4adhog/learningdrift/Services/ServicesTravelVacationPackages.jpg?updatedAt=1725517636586', 2, 'The Smarter Way To Travel: Vacation Packages', 'Explore how travel vacation packages offer convenience, savings, and exclusive experiences for the ultimate travel adventure.', NULL, 2, '2024-09-18', NULL, '2024-09-03 08:08:20');

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
(1, 'Technology', NULL, NULL, NULL, 'technology', 'Find the Latest in Technology News and Reviews', 'Stay up-to-date with the latest trends, innovations, and expert reviews in the tech world. Explore gadgets, software, AI, and more!', NULL, '2024-09-02 13:58:02'),
(2, 'Career', NULL, NULL, NULL, 'career', 'Career: Tips, Reviews, and Guidance', 'Browse through insightful career reviews. Find the resources you need for career success.', NULL, '2024-09-02 13:59:35'),
(3, 'Business', NULL, NULL, NULL, 'business', 'Unlock Your Business Potential with Expert Insights ', 'Gain valuable insights and strategies to grow your business. Find tips to achieve your entrepreneurial goals.', NULL, '2024-09-03 09:40:47'),
(4, 'Health', NULL, NULL, NULL, 'health', 'Health Reviews & Insights', 'Get expert health tips and detailed reviews. Discover resources to improve your health and well-being.', NULL, '2024-09-03 09:42:01'),
(5, 'Lifestyle', NULL, NULL, NULL, 'lifestyle', 'Lifestyle | Tips, Inspiration and Recommendations', 'Access expert tips on fitness, nutrition, well-being, and more to enrich your overall standard of living.', NULL, '2024-09-03 09:43:09'),
(6, 'Finance', NULL, NULL, NULL, 'finance', 'Finance Reviews & Tips', 'Find the latest investment tips and guides. Get valuable advice for improving your financial health.', NULL, '2024-09-03 09:44:22'),
(7, 'Automobile', NULL, NULL, NULL, 'automobile', 'Automobile Reviews & Recommendations', 'Get the latest automobile reviews and expert advice. Stay informed to make better decisions.', NULL, '2024-09-03 09:45:58'),
(8, 'Services', NULL, NULL, NULL, 'services', 'Services for Your Every Need | Findaresponse', 'Find valuable insights to help you choose the best services for your personal, professional, and everyday needs.', NULL, '2024-09-03 12:35:15');

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
