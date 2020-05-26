-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 01:12 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keera`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'na',
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicants` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `token`, `prefix`, `title`, `responsibility`, `requirements`, `qualification`, `file`, `deadline`, `applicants`, `status`, `created_at`, `updated_at`) VALUES
(8, 'KURA-QRRBS-2020-MAY', 'KURA/DE/20/1', 'DIRECTOR (ENGINEERING) – JG 2 - REF: KURA/DE/20/1 - (1 POST)', 'An officer at this level may be deployed to head any of the Technical Directorates - Urban Roads\r\nPlanning and Design; Urban Roads Development; Road Asset and Corridor Management; Policy,\r\nStrategy and Compliance, and will be responsible to the Director General for the coordination\r\nof activities in the Directorate.\r\nDuties and Responsibilities\r\n1. Duties under Road Assets & Corridor Management (RACM)\r\na) overseeing the preparation of roadside development and control;\r\nb) overseeing the formulation of road asset management policies;\r\nc) coordinating the undertaking of annual road inventory and condition surveys;\r\nd) overseeing the preparation of engineering design of road maintenance works;\r\ne) coordinating the compilation and analysis of annual road maintenance work\r\nprogrammes;\r\nf) liaising with Kenya Roads Board and other stakeholders on management of Roads\r\nMaintenance Levy Fund (RMLF);\r\ng) overseeing the preparation of annual procurement plans;\r\nh) coordinating the operations of the Authority’s regional offices, preparation of\r\nDirectorate budget;\r\ni) ensuring expenditure controls and measures within the Directorate;\r\nj) overseeing the implementation of road works emergency response programmes,\r\nk) overseeing the preparation of tender documentation for road works;\r\nl) coordinating the processing of road works tenders and monitoring supervision of road\r\nmaintenance works;\r\nm) ensuring the implementation and conformance of road management systems;\r\nn) facilitating periodic reviews of the performance standards;\r\no) overseeing activities of axle load control and review the reports on axle load control\r\nprogrammes;\r\np) representing the Authority in local and regional axle load stakeholder forums;\r\n\r\nq) ensuring road maintenance contracts are prepared and implemented in\r\naccordance with set standards and specifications;\r\nr) re-possessing illegally acquired road reserves;\r\ns) participating in the planning of roadside developments through institutional\r\nconsultations and collaboration;\r\nt) managing road reserve boundaries usage and maintenance of road markers system;\r\nu) managing roads inventory and survey data;\r\nv) undertaking public sensitization on protection of road reserves;\r\nw) taking overall responsibility for implementation of the Directorate strategic\r\nobjectives;\r\nx) building the capacity of staff and managing performance; and\r\ny) performing any other lawful duties that may be assigned.\r\n2. Duties under Urban Roads Planning and Design (URP&D)\r\na) overseeing road Planning and preparation of Road Investment programs;\r\nb) overseeing undertaking of traffic surveys and management of traffic data;\r\nc) collecting and collating economic, environmental and social data for road investment\r\nprogrammes and strategies;\r\nd) providing training on road safety audits, accident data analysis, design reviews and\r\nimplementing road accident counter-measures;\r\ne) partnering with other Agencies for improved road emergency response and undertaking\r\npublic sensitization on road safety;\r\nf) reviewing roadside development applications and field reports;\r\na) overseeing the supervision of road structures programs;\r\nb) taking overall responsibility for developing and monitoring bridge maintenance and\r\nconstruction programmes;\r\nc) liaising with external financing Agencies for resource mobilization, capacity\r\nbuilding and performance management;\r\nd) taking overall responsibility for implementation of the Directorate strategic objectives;\r\ne) building the capacity of staff and managing performance; and\r\nf) performing any other lawful duties that may be assigned.\r\n3. Duties under Urban Roads Development (URD)\r\na) overseeing preparation of short, medium and long term road works programmes;\r\nb) coordination of preliminary and detailed engineering road designs;\r\nc) oversee the preparation of preliminary and detailed engineering designs of road\r\nstructures;\r\nd) coordinating preparation and finalization of road works tenders;\r\ne) overseeing preparation of procurement plans for road work programmes;\r\nf) liaising with external financing agencies for resource mobilization;\r\ng) reviewing standards and specifications for road works;\r\nh) supervision of roads and structures works contracts;\r\ni) coordinating preparation of directorate budget;\r\nj) ensuring expenditure controls and measures within the Directorate;\r\nk) facilitating resource mobilization from Government and Development Partners;\r\nl) facilitating resource mobilization through Public Private Partnerships;\r\nm) enhancing efficiency in utilization of financial resources;\r\n\r\nn) enhancing knowledge transfer and capacity building by encouraging\r\npartnership of foreign consultants and contractors with local firms in undertaking\r\nprojects/consultancies;\r\no) building capacity of young professional graduatesthrough internship in projects;\r\np) undertaking regular road safety audits during road development;\r\nq) taking overall responsibility for implementation of the Directorate strategic objectives;\r\nr) building the capacity of staff and managing performance; and\r\ns) performing any other lawful duties that may be assigned.\r\n4. Duties under Policy, Strategy & Compliance (PSC)\r\na) coordinating the preparation, monitoring and evaluation of the strategic plans and\r\nprojects;\r\nb) leading research and materials testing function and enhancement of knowledge transfer;\r\nc) coordinating the preparation of quality assurance plans;\r\nd) coordinating the undertaking of technical audits for works and services;\r\ne) overseeing the preparation of reports on quality assurance findings and\r\nrecommendations;\r\nf) formulating the Authority’s risk management policies, programmes, strategies and\r\nprocedures;\r\ng) coordinating the preparation of risk assessment and classification system/criteria;\r\noverseeing identification of priority areas for risk assessment and mitigation planning;\r\nh) overseeing risk assessment processes, compilation and consolidation of periodic reports;\r\ni) providing custody to risk methodologies and templates including risk registers, corporate\r\nrisk profile, risk assessment criteria and business process documentation;\r\nj) overseeing the monitoring and evaluation of risk management function;\r\nk) coordinating the development of risk management education and training programmes;\r\nl) facilitating the development of effective networks for risk management information\r\nsharing;\r\nm) building the capacity of staff and managing performance; and\r\nn) performing any other lawful duties that may be assigned.\r\nQualifications and Competencies\r\nFor appointment to this grade, the ideal candidate must:-\r\na) Have a minimum of twelve (12) years’ experience in relevant work and at least five (5)\r\nyears in a management role in the Public Service or in the Private Sector;\r\nb) Have a Bachelor’s degree in Civil Engineering or equivalent qualification from a\r\nrecognized institution;\r\nc) Have a Master’s Degree in a relevant field from a recognized institution;\r\nd) Be registered by Engineers Board of Kenya as a professional Engineer with a minimum\r\npost registration experience of eight (8) years;\r\ne) Have a valid annual Practicing License from the Engineers Board of Kenya;\r\nf) Have a certificate in Leadership Course from a recognized institution;\r\ng) Be a member of the Institution of Engineers of Kenya (IEK);\r\nh) Have proficiency in computer applications;\r\ni) Fulfil the requirements of Chapter Six of the Constitution; and\r\nj) Demonstrate merit and ability as reflected in work performance and results.', 'Relevant Experience (min 8 years)||Supervisory Experience ( min3 years)||Implementation of ERP systems  (3 years)||Bachelors\' Degree (IT, Computer Science/Engineering, BIT)||Professional Qualification  Certifications (CCNP, MCSE, MCP, MCSD, Oracle)||Professional  Qualification System Analysis, Design & Implementation skills||Certificate in Management Course', '8', '1590523657.pdf', '2020-04-30', '0', 'Active', '2020-05-26 17:07:37', '2020-05-26 17:07:37'),
(9, 'KURA-MKSLK-2020-MAY', 'KURA/CS/ICT/AD/20/2', 'ASSISTANT DIRECTOR, ICT (BUSINESS SYSTEMS) JG 4 – REF: KURA/CS/ICT/AD/20/2 (1 POST)', 'Duties and responsibilities\r\na) Implementation and review of ICT policies, regulations and procedures;\r\nb) Spearheading implementation of ICT Strategic Plan and Performance Targets;\r\nc) Planning and implementation of effective testing processes of systems to ensure that\r\ndeliverables adhere to standards;\r\nd) Ensuring effective administration of the Enterprise Resource Planning (ERP) system;\r\ne) Coordinating systems analysis, design and implementation;\r\nf) Leading project teams during business systems project implementation;\r\ng) Liaising with network administrators and systems analysts in putting up security controls\r\nin all KURA ICT systems;\r\nh) Carrying out research on new technologies in the market that can benefit the Authority;\r\ni) Carrying out system audits on the utilization and viability of the Authority’s software;\r\nj) Preparation of software requirements for systems;\r\nk) Carrying out installation, maintenance, updating and upgrading of the Authority\r\nsoftware;\r\nl) Training of ICT users on new systems within the Authority; and\r\nm) Performing any other lawful duties that may be assigned from time to time.\r\nQualifications and Competencies\r\nAppointment to the position will be made from persons who:\r\na) Have a minimum of eight (8) years’ experience in relevant work and at least three (3)\r\nyears in a supervisory role in the Public Service or in the Private Sector;\r\nb) Have a Bachelor’s Degree in any of the following: Information Technology, Computer\r\nScience/Engineering, Business Information Technology from a recognized Institution;\r\nc) Have professional certification such as Certified Computer Network Professional (CCNP),\r\nMCSE, MCP, MCSD, Oracle, or their equivalent qualification from a recognized\r\ninstitution;\r\nd) Must have a minimum three(3)years’ experience in implementation and support of\r\nMicrosoft Dynamics (ERP)system;\r\ne) Have proficient skills in systems analysis and design and implementation;\r\nf) Be a member of an ICT professional body;\r\ng) Have a certificate in Management Course from a recognized institution.\r\n\r\nh) Fulfil the requirements of Chapter Six of the Constitution; and\r\ni) Demonstrate merit and ability as reflected in work performance and results.', 'Relevant Experience (min 8 years)||Supervisory Experience ( min3 years)||Implementation of ERP systems  (3 years)||Bachelors\' Degree (IT, Computer Science/Engineering, BIT)||Professional Certifications (CCNP, MCSE, MCP, MCSD, Oracle||System Analysis, Design & Implementation skills||Certificate in Management Course', '8', 'na', '2020-04-30', '0', 'Active', '2020-05-26 20:12:01', '2020-05-26 20:12:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
