-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2021 at 06:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interop_absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin__dosen`
--

CREATE TABLE `admin__dosen` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pegawai` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__dosen`
--

INSERT INTO `admin__dosen` (`uuid`, `id_pegawai`, `nidn`, `created_at`, `updated_at`) VALUES
('06cd86bd-489d-4543-92ad-54d7ee094813', 'b551f995-61b7-4d86-8112-8705bcee98af', '0020108302', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('0b445533-f6d1-495f-a122-09216763d1b2', '9ff4c396-9900-4fd0-bc28-a0f5073bc016', '', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('0beeb945-e179-4f2d-883f-76506fc1058e', 'de6c0638-acb2-4da2-b24b-619e44387548', '', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('101008d8-673c-43ea-a08e-03a27d46e5d0', 'd2a6a740-ee64-4111-8019-ed2d337fd4a6', '0002086702', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('161d8bf1-82fb-4530-a5ee-a889fbc8efad', '94bbc7fb-e2b5-4886-a7e9-21bb5c038306', '12345', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('38d5fba9-9b81-45d3-86ea-c7173e6afd6f', '074f2c3f-1f4f-4d9f-8fcc-7ac0b27f92f1', '0015036403', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('3dfc997c-8ea0-4bdc-9fe4-b804ffec0668', '402260fd-8c37-4cc8-bb46-7143a2289817', '0004127301', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('3dff376c-d633-457a-973f-2ebe27bd439a', '7e58e774-865d-4be7-90d9-dff20ef49889', '0001117103', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('484aa151-ee53-48bc-b330-39810d4d89c2', '88ea2221-9b7e-462c-9880-8b574642665e', '0015017505', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('485a227f-6f8a-498e-ac65-7bfe973869ae', 'eca7e5b7-2427-4512-9432-7157af7f4c86', '0028116704', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('49ec7028-10d9-4a20-bfa2-ff450154c6ff', '99b3d70b-31fc-405d-ae1a-51be4a2c2c99', '0008016104', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('56646322-617c-4fc7-beae-0fde186b73b5', '88c88f3c-506a-44c4-9d49-015e264648e3', '0022116902', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('5e39d3fa-e408-4521-96be-5b0ead49862f', 'e018681d-4971-4879-ba01-679bfa12853f', '0520068502', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('61fd72d1-0fc0-4d60-bf17-bd6a109d8b8e', '946b5c0f-80c4-417e-aeb7-138b792e8051', '0024027804', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('6267041c-f158-4177-8b64-ee9bfc71981e', '34c41299-7f8b-45a3-9b23-7246292ed8d0', '0029044002', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('6ce8790d-05fa-460b-b686-2032c345802a', 'd1886bc7-c9a3-424d-b285-df5b5bfbae35', '0001018018', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('772773f7-e8bc-4ee8-a82b-cde5fc4d1f4d', '0fe38bf6-60a2-4696-86f9-8b15007e1545', '0026027403', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('7ae7ee56-ca4b-4bc0-b5a9-1a202719edad', 'ec61c34e-624d-45c6-b38c-548586829fda', '196906131997021003', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('8e9857dd-a087-4e2c-8ba4-369240a9d0d7', '623eb87b-819a-4080-bd7d-9b92b93cc62f', '0020096904', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('95b77e18-83d1-470f-ac90-92e25a35219e', '6347f2f9-a8a5-4312-8f7f-d3fcf392d8b0', '0001037213', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('9894aed0-020d-444f-9782-4b6f63b1dcbf', '491312ba-cf21-412f-ba26-c1e0420d9b53', '111199205202101102', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('99a9697b-1c52-4d76-a20d-c835704f83b0', '24f18e8f-afe7-49c4-9878-7fda59fdf724', '', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('a115a980-ca6d-439c-b06b-2f26ae1e23fb', '10e0f4dd-2fd3-455b-867d-e4a530317eab', '0026057905', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('a3c101f3-d991-4468-84fe-55535f1e3fc5', '70b01d40-eecc-4add-a1ac-af714093c3a8', '0019067501', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('ae0635ed-5ed4-41a8-a400-9d0c9feb2367', '8df8649c-3bed-4e53-8e6a-3ad60756ddb1', '0003037903', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('b3025e7d-6f5b-4130-b40a-1ed36387809d', 'e6e75872-6287-4706-97be-ee9fe44f46f4', '0023085903', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('b75297a2-b012-4b92-b142-8baed9e25c5b', 'e111c69c-a0bb-4a4b-ba11-c1a8c2503a78', '0007067503', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('b9b1afba-985b-4555-b420-4f610e36d192', '6632058a-01e6-4090-b263-025d758a1073', '0015067403', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('c2481201-970b-4dd6-94dd-ac9933e8dce6', '16d7fa46-48c3-4780-bf9d-f719174dfc76', '0529048102', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('cb35ecca-69ea-4fe5-9ad6-ddd4a98fb5bc', '598029fe-0b83-4f5b-b27b-f4bec0cd3248', '0027036602', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('dba0de8d-56b4-4a01-b63c-781b04d27bc6', 'b77f35ac-6ef4-4b8f-a34e-6d71dae9688b', '', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('dc3b0cdb-cbeb-46d7-ad0d-7b4659ee2b32', 'bff59e04-19de-4ca3-ab52-557fe9a4dee4', '12345', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('df89a252-4d46-4fdb-ad6b-08e901628200', '484df94c-6405-45ba-bbe8-15deba99d857', '0027125304', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('e9315fdf-ddc1-445c-9186-317785bfb19c', '85fee2d1-882d-42a8-913d-22246682d535', '0001057603', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('e936a09e-a060-4334-91ca-62ff5e436fa9', '0af38a20-9f5e-45a8-a652-56472c671fb2', '0006077301', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('ea37cbf3-847f-4878-9a27-ce89ad7dd1f8', '494d8112-5a20-496d-ab26-738f2ecc1bb2', '', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('ea408e2b-c07c-4b84-8e8e-448a4b64f7da', '105a5f83-e70c-4871-ba42-5743d38773cb', '0026108504', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('ef4e53f8-c0ad-4fcb-ba6c-82b51a503e1c', 'ea5eccdd-277f-4aaf-9736-9e9c83742a1d', '0004106502', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('f4b44364-2fc9-46c0-bcc9-cc482b06757d', '1746d501-d06c-4017-bc73-eaab259fb5fe', '0001117509', '2021-06-05 20:36:59', '2021-06-05 20:36:59'),
('fb8b522c-56c0-4cdc-8d30-162c463b63b2', '547b5d81-ac69-4fee-87e1-104a8391c67a', '0031017701', '2021-06-05 20:36:59', '2021-06-05 20:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin__mahasiswa`
--

CREATE TABLE `admin__mahasiswa` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__mahasiswa`
--

INSERT INTO `admin__mahasiswa` (`uuid`, `username`, `email`, `nim`, `nama`, `password`, `created_at`, `updated_at`) VALUES
('06809d43-cb01-4697-ae35-19256ea8a105', 'vaniaputri99', 'vaniaputri99@mail.ugm.ac.id', '20/467616/PTK/13677', 'VANIA PUTRI MINARSO', '$2y$10$1YHai.xcF5S1Z.Q/l/qRoO/MWMVHBRi4KQtilQUj0e5382iNw0jWq', '2021-05-30 07:52:56', '2021-06-07 06:48:52'),
('11c2d83d-8eb1-46da-8327-f603f623261e', 'aditya.nur.riskan', 'aditya.nur.riskan@mail.ugm.ac.id', '20/467587/PTK/13648', 'ADITYA NUR RISKAN NUGROHO', '$2y$10$TsTnXSO29uIJWB4FNfUsJuAxhewavMY8TPsOC725IHshjqmcsTXna', '2021-05-30 07:52:53', '2021-06-07 06:48:52'),
('13c520ef-0c7a-4d2a-bef5-828e2766f301', 'aris.n.h', 'aris.n.h@mail.ugm.ac.id', '20/467593/PTK/13654', 'ARIS NURUL HUDA', '$2y$10$DaJGd5u591vo24OUAJ8fyOza8KfADAE0PoEdRst1ktioMwV/GHyBG', '2021-05-30 07:52:54', '2021-06-07 06:48:52'),
('1d787ec3-b19b-4bce-ac60-91489615d92b', 'alfian96', 'alfian96@mail.ugm.ac.id', '20/467589/PTK/13650', 'ALFIAN', '$2y$10$fdj3E4TwqRLQBdwOAxdzj.TahU.nTWNEBEQJYx73H9vWmwaPhWztm', '2021-05-30 07:52:53', '2021-06-07 06:48:52'),
('2413022b-686d-45b3-88d9-2ab0f0090687', 'faisal.n', 'faisal.n@mail.ugm.ac.id', '20/467598/PTK/13659', 'FAISAL NAJIB', '$2y$10$uubHZvGtnFrCdS3MAu6.BOqItQOenZ5g.VyfNdL7jod3Q/GMQgHrC', '2021-05-30 07:52:54', '2021-06-07 06:48:52'),
('2ff40f0b-2761-4191-b859-fe8d0d2e705b', 'juliantaraeka', 'juliantaraeka@mail.ugm.ac.id', '20/467601/PTK/13662', 'I PUTU EKA JULIANTARA', '$2y$10$d5vM79BU.13ltrO4p4D3je7sieX/d1TIWK9GNt4gktBoIEkzSwqQi', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('56dbeceb-76b3-4e07-9722-597ed28de1b4', 'sandhyahizrian42', 'sandhyahizrian42@mail.ugm.ac.id', '20/467614/PTK/13675', 'SANDHYA HIZRIAN SABILA', '$2y$10$ZWiLZzpRencklqWfkPTdgutXKnxSejjXWDAw7Ik.vS8WOL7TVQ93W', '2021-05-30 07:52:56', '2021-06-07 06:48:53'),
('5a2100f0-4718-43e5-87d9-16d924de2aea', 'ar.razy.muhammad', 'ar.razy.muhammad@mail.ugm.ac.id', '20/467591/PTK/13652', 'AR-RAZY MUHAMMAD', '$2y$10$3jfrOWwsJvSQubAZ4d3seeWLy4cIC1qgKT17CrPWqsOVZyFnosd.K', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('5a42adb8-190d-4772-b118-312bfa396aaa', 'naufal.perdana', 'naufal.perdana@mail.ugm.ac.id', '20/467608/PTK/13669', 'NAUFAL PERDANA', '$2y$10$5JkpGrF2J3khlx2X.9ELSOYeHi44IWkkMjfzI/Brow23U0tJyrDx6', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('5d4e9eb6-f5fc-4b1d-98d4-74ed8e02de47', 'elvionna95', 'elvionna95@mail.ugm.ac.id', '20/467596/PTK/13657', 'EL VIONNA LAELLYN NURUL FATICH', '$2y$10$3VxNURPrLke5Ml/YNpu0C.WX1jWr/oYDkl4yhGDCS07JCywsfYUdG', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('69576ab0-bb38-4024-911d-075ac900128a', 'arifbudi92', 'arifbudi92@mail.ugm.ac.id', '20/467592/PTK/13653', 'ARIF BUDI SETIAWAN', '$2y$10$j6k19QRNakFkuelpJl1BEujBGtBsgsfdy8Fec9j/IN3pexV3898lS', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('76108b91-4a45-4455-94dc-0e224e55f979', 'asep.syaiful.hidayat', 'asep.syaiful.hidayat@mail.ugm.ac.id', '20/467594/PTK/13655', 'ASEP SYAIFUL HIDAYAT', '$2y$10$V0FtHuy.Tjdv8W0/i3C3uu85VChStxwhm1fbc0VMnFe7T1bOH0GU.', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('79540f32-e70a-42f7-bfcf-222f7f6bb53e', 'selviatunjungsih', 'selviatunjungsih@mail.ugm.ac.id', '20/467615/PTK/13676', 'SELVIA TUNJUNGSIH WAHYU KESUMASTUTI', '$2y$10$69m4Mxifrfax1eUIgEYvzOJFBXA5aW2NiwC/z6t5UTNfwqnVRBfie', '2021-05-30 07:52:56', '2021-06-07 06:48:53'),
('79a88e09-ccb0-406d-b0de-57abbec4df08', 'nureka94', 'nureka94@mail.ugm.ac.id', '20/467609/PTK/13670', 'NUR EKA FITRIANINGTYAS', '$2y$10$FcBJiwUYi4hafCLS3YkGuus11jshpuOxC6yyxGAuMsZFu.UweJ/H6', '2021-05-30 07:52:56', '2021-06-07 06:48:53'),
('79c48cf4-d71e-42c6-b1ed-207d968a6890', 'fitri.a.n', 'fitri.a.n@mail.ugm.ac.id', '20/467600/PTK/13661', 'FITRI ANI NUR MUSLIHATUN', '$2y$10$Ih2yp1mdDnBZ9bx4IQl4FeD2pQIAm3tSNgOo.y2KHtAprsIl.F/mW', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('7db0a23f-71ad-4b89-9e84-1097ee9fccf7', 'victor.petrus.waroy', 'victor.petrus.waroy@mail.ugm.ac.id', '20/467617/PTK/13678', 'VICTOR PETRUS WAROY', '$2y$10$6m/neY5IOyzdonMsGcoz1eWBrEkRG124Z..TqG77dcxCgJqEE6DPu', '2021-05-30 07:52:56', '2021-06-07 06:48:53'),
('8ed09dc8-463f-4f78-849b-12d6e323c088', 'irfan.budi.santoso', 'irfan.budi.santoso@mail.ugm.ac.id', '20/467602/PTK/13663', 'IRFAN BUDI SANTOSO', '$2y$10$0WaBItrGHq2RZjWdb961fOw1c02cEZCSTcrq8QTfARQrNF7rhazgO', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('996da86e-9b3e-4425-abcf-df65404560b7', 'nyoman.andri', 'nyoman.andri@mail.ugm.ac.id', '20/467610/PTK/13671', 'NYOMAN ANDRI JUNIAWAN', '$2y$10$C8C.Hg6BlADYGH6i7x449ecOQZI0ag/deSJk8AMM4pyUnJLWf02Oy', '2021-05-30 07:52:56', '2021-06-07 06:48:53'),
('a4aad234-bd31-46e5-9c38-093953ee7e97', 'chivaolivia2020', 'chivaolivia2020@mail.ugm.ac.id', '20/467595/PTK/13656', 'CHIVA OLIVIA BILAH', '$2y$10$A5TO/fASkebl.q9DzV/TnOjt/sH/hqdo67q4A2CRU5.0/SjdZSu7W', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('b6f1c424-68d5-4a42-87a3-e6942a047710', 'muhammadichwandar', 'muhammadichwandar@mail.ugm.ac.id', '20/467606/PTK/13667', 'MUHAMMAD ICHWANDAR AKRIANTO', '$2y$10$LlyGtP4FNtlW8qoQ9WmJKuOD/eqzBOL51XNj6a7ozO4bv1JNumxp.', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('b78e4bcf-538d-4ea2-8bb8-88ab038085c9', 'monicaagustami', 'monicaagustami@mail.ugm.ac.id', '20/467605/PTK/13666', 'MONICA AGUSTAMI KRISTY', '$2y$10$5kPTvPXJVUn2CQZ27vywS.HWO7LpfDKHRk9IEA350QkFnS1jykpWu', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('b8be2abf-9c29-4f2d-99df-cc46250732f2', 'firmansyah2020', 'firmansyah2020@mail.ugm.ac.id', '20/467599/PTK/13660', 'FIRMANSYAH', '$2y$10$8iDXZ2IaiOsVmlxYUQ5fFOf9d32Xm7P4GeniXz9Kq0abq0WXkq1zC', '2021-05-30 07:52:54', '2021-06-07 06:48:53'),
('bbef08b2-1de6-411f-9657-ae5ac07839ec', 'irmma.dwijayanti', 'irmma.dwijayanti@mail.ugm.ac.id', '20/467603/PTK/13664', 'IRMMA DWIJAYANTI', '$2y$10$i0ICd6vHs07StrYgBjRsOehfX6lfMUZd53fwdu4osQbE9GIKlJy1S', '2021-05-30 07:52:55', '2021-06-07 06:48:53'),
('c61f27b5-c9b8-4e76-b9b5-ba743a1553f3', 'anisarahmanti', 'anisarahmanti@mail.ugm.ac.id', '20/467590/PTK/13651', 'ANISA RAHMANTI', '$2y$10$1fuaRwCkmpgyRM67WUJ8rO.Dvpr4DvKImPwXWt.q9T.UblevkQxv6', '2021-05-30 07:52:54', '2021-06-07 06:48:54'),
('dc70c093-5794-4382-bec6-faa0eaf8d26a', 'rahmat.nur.faizin', 'rahmat.nur.faizin@mail.ugm.ac.id', '20/467612/PTK/13673', 'RAHMAT NUR FAIZIN', '$2y$10$BfHRZDl3QxdyTw/dv.BcXOAnA6H/3zBKF4TiZJmj6Fxe1FtMcgEP6', '2021-05-30 07:52:56', '2021-06-07 06:48:54'),
('dcbda916-766d-49b9-94c0-b3693145c9eb', 'm.abdurachman.fairuz', 'm.abdurachman.fairuz@mail.ugm.ac.id', '20/467604/PTK/13665', 'MUHAMMAD ABDURACHMAN FAIRUZ', '$2y$10$LX8cJRGjy.uGn48QHtWchOIaKkwHbqiB86Ko/a20v.RbJ3lj788fK', '2021-05-30 07:52:55', '2021-06-07 06:48:54'),
('e7b3c93a-7063-49a6-bc77-43cce246ce89', 'wahid.salman.af', 'wahid.salman.af@mail.ugm.ac.id', '20/467618/PTK/13679', 'WAHID SALMAN AL FARIZI', '$2y$10$qv.0G.hMEnMiFRbdB2S9yO7jjqcLczabczJaK0hdXzy1P6z.Wm1WS', '2021-05-30 07:52:56', '2021-06-07 06:48:54'),
('f2642ad5-36b9-4512-a53a-540e22ccfc15', 'pandesatria', 'pandesatria@mail.ugm.ac.id', '20/467611/PTK/13672', 'PANDE SATRIA ANANTA PUTRA', '$2y$10$qd8X6wxdRD6t0SnM90iRQOv6HLWyF8qUR2sfj0B/c3wpaGcrRXrg6', '2021-05-30 07:52:56', '2021-06-07 06:48:54'),
('fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', 'afifamrullah', 'afifamrullah@mail.ugm.ac.id', '20/467588/PTK/13649', 'AFIF AMRULLAH', '$2y$10$8cSgR/LKmLkd8aRE7LzNquqmj/PU8mb4SY2sTm4E2p9C51QohC7Lu', '2021-05-30 07:52:53', '2021-06-07 06:48:54'),
('ff25238a-84bf-4b96-bc63-5c5a415cf423', 'mohmoen93', 'mohmoen93@mail.ugm.ac.id', '20/467607/PTK/13668', 'MUHAMMAD MUNANDAR', '$2y$10$y1rCgSy/kmUxCR./4t1MveUZyn8wjvIwwZW5NlYeHdveiLTJIaEw2', '2021-05-30 07:52:55', '2021-06-07 06:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin__matakuliah`
--

CREATE TABLE `admin__matakuliah` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__matakuliah`
--

INSERT INTO `admin__matakuliah` (`uuid`, `kode`, `nama`, `sks`, `created_at`, `updated_at`) VALUES
('04226440-fe0a-44d1-9a78-40130b0e8166', 'TKIT 177122', 'Internet Of Things (IOT)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('052c24a6-cecb-4a6c-8e3a-dc076defaa2f', 'TKIT 177118', 'Pengembangan Aplikasi Permainan (Game Development)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('125f6c22-bd6d-43d2-919e-92a34fc06323', 'TKIT 177117', 'Kualitas dan Kehandalan Sistem (System Quality and Reliability)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('1451c5db-f548-43c6-9781-1f53b3cfb86d', 'TKIT 176206', 'Interaksi Manusia dan Komputer Lanjut (Advanced Human-Computer Interaction)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('1d449e96-b8e6-4185-845d-c9f43fd30cff', 'TKIT 177109', 'Keamanan Teknologi Informasi (Information Technology Security)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('1fd121ee-606a-4930-833c-432451c0122f', 'TKIT 177110', 'Jaringan Komputer Lanjut (Advanced Computer Network)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('2006ad45-0dbc-4fc0-9a09-8df09aa2da79', 'TKIT 177102', 'Pemrograman Logika (Logic Programming)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('20c4088d-e34d-46e6-860e-1a5a771dde42', 'TKIT 177112', 'Pengolahan Informasi Manusia (Human Information Processing)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('2b5bc4cc-87c2-4073-a967-bfbafc08b592', 'TKIT 176105', 'Metodologi Penelitian (Research Methodology)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('2bd13bf0-b7fd-4fd0-95a5-cf8704128022', 'TKIT 177107', 'Pengembangan Aplikasi Piranti Bergerak (Mobile Application Development)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('33eccbd3-8f85-431d-97a3-8c4be2fbca5a', 'TKIT 177116', 'Pemodelan Sistem dan Perangkat Lunak (System and Software Modelling)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('471a1ee1-9f75-4913-99d1-24d3d87226de', 'TKIT 177103', 'Simulasi dan Pemodelan (Simulation and Modelling)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('4aa1a631-9b27-437c-9b5f-9eff450fe450', 'TKIT 176207', 'Sistem Informasi Multimedia (Multimedia Information System)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('503fab01-2a38-4794-a3ed-dd62302541de', 'TKIT 176208', 'Rekayasa Kebutuhan (Requirement Engineering)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('50855000-a006-4acb-b249-2b0ba4bf5a12', 'TKIT 177201', 'Tesis', 8, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('5211d770-3995-4aa5-985b-f9f94dfa5341', 'TKIT 177120', 'Studi Kasus Organisasi (Enterprise Case Studies)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('55284340-e810-4a61-897b-fb97ea7da9b4', 'TKIT 176203', 'Gudang dan Penambangan Data (Data Warehouse and Data Mining)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('591e9a06-1067-4f6c-8a06-b8abf9c4e359', 'TKIT 176201', 'Seminar 1', 1, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('5ec30825-10bf-4410-829b-6a6b963c4bf7', 'TKIT 177106', 'Operasi Riset (Research Operation)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('63bdabe8-9311-4406-8e85-b5ec44bf80eb', 'TKIT 176209', 'Arsitektur dan Perancangan Perangkat Lunak (Software Architecture and Design)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('666a6e51-744b-4ea2-813b-d07bd20a796b', 'TKIT 176212', 'Layanan Elektronis (e-Services)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('6e6f010e-8067-4ca9-8cdd-515583f20506', 'TKIT 177104', 'Visi Komputer (Computer Vision)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('747a0238-487c-4e44-84e8-8e3a4c9c7704', 'TKIT 177105', 'Sistem Berbasis Pengetahuan (Knowledge Based System)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('75dedff9-c8db-43b1-965b-525bb5cdf16b', 'TKIT 177123', 'Pemerintahan Elektronik (e-Government)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('7e947621-10ab-450e-8f27-a2f82a758974', 'TKIT 176102', 'Sistem Cerdas (Intelligent System)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('82c496a2-2dca-453b-8cdb-4d690725169e', 'TKIT 177121', 'Audit Teknologi Informasi (Audit of Information Technology)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('8c846e0c-a55a-41f9-bb12-50e8b78d2f8a', 'TKIT 177125', 'Manajemen Perubahan dan Resiko TI (IT Change and Risk Management)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('9af76cf4-6f9d-43bd-bf48-c04309ca1433', 'TKIT 177111', 'Antar Muka Alamiah (Natural User Interface)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('a537102a-4bf9-4639-93c5-b8f48ca2c3ff', 'TKIT 177101', 'Seminar 2', 1, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('aff48089-02a2-404b-a0e2-eb39629a3ee9', 'TKIT 176202', 'Kecerdasan Bisnis (Business Intelligence)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('b29cc220-4c41-441d-ae51-44dd757cfd1e', 'TKIT 176101', 'Komputer dan Masyarakat (Computer and Society)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('ba8ca0c5-e284-4c00-9951-5fbb1d35abf8', 'TKIT 176211', 'Keselarasan Teknologi Informasi (IT Alignment)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('c64890e6-20d1-437a-aa45-e1842fccbfce', 'TKIT 176103', 'Pengembangan Perangkat Lunak (Software Development)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('d724d71c-cbd4-43eb-8c74-401ce29ac5d0', 'TKIT 177108', 'Komputasi berbasis Internet (Internet Computing)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('df09e575-4c79-4358-8d3f-996d238ea18c', 'TKIT 176104', 'Jaringan Nirkabel dan Bergerak (Wireless and Mobile Networking)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('df46307f-0ea7-4b73-bd2b-ae11779e3542', 'TKIT 176204', 'Komputasi Tersebar (Pervasive Computing)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('e0ec93fe-6e69-4958-9c28-6fb31f65d84b', 'TKIT 177124', 'Tatakelola IT (IT Governance)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('f4fdb97a-d2c1-491e-b73e-a6ff7ddd73eb', 'TKIT 177113', 'Rekayasa Faktor Manusia dan Ergonomi (Human Factor Engineeringand Ergonomics)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('f6840402-f6d2-4750-ae9e-961debb7a14b', 'TKIT 176205', 'Interoperabilitas (Interoperability)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('fd021fb5-9b95-40c5-ac5d-8ddafbdfc4ea', 'TKIT 177115', 'Pengujian dan Implementasi Perangkat Lunak (Software Testing and Implementation)', 3, '2021-06-05 20:37:36', '2021-06-05 20:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin__pegawai`
--

CREATE TABLE `admin__pegawai` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar_depan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__pegawai`
--

INSERT INTO `admin__pegawai` (`uuid`, `username`, `email`, `nip`, `nama`, `gelar_depan`, `gelar_belakang`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
('074f2c3f-1f4f-4d9f-8fcc-7ac0b27f92f1', 'rudy', 'rudy@ugm.ac.id', '196403151990031003', 'Rudy Hartanto', 'Dr. Ir.', 'M.T., IPM.', '$2y$10$QU1V3pB53ku66q.m.XjQOeKQtG9LWg1gqADd5MobCVXy0mlJ7oiLu', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:12'),
('0af38a20-9f5e-45a8-a652-56472c671fb2', 'sarjiya', 'sarjiya@ugm.ac.id', '197307061999031005', 'Sarjiy', 'Ir.', 'S.T., M.T., Ph.D., IPU.', '$2y$10$Gxqs7xykJ9FD6dHTosYXrOEcoTICeOvi9gOhKqF6gK47m2yvMbNvC', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:12'),
('0fe38bf6-60a2-4696-86f9-8b15007e1545', 'danangwijaya', 'danangwijaya@ugm.ac.id', '197402261998031003', 'F. Danang Wijaya', 'Dr.Eng. Ir.', 'S.T., M.T., IPM.', '$2y$10$zCeISiHmtHQ3NWLhwnayHumDjiPrKlMXglEH5MakeRwWF2B6Pofa6', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:13'),
('105a5f83-e70c-4871-ba42-5743d38773cb', 'sunu', 'sunu@ugm.ac.id', '198510262015041003', 'Sunu Wibirama', 'Dr.Eng. Ir.', 'S.T., M.Eng., IPM.', '$2y$10$SmHnNFOA99zy/DXWPj03m.qPsr45E4K6k9dXl6g0iSLm2s.yI0LRK', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:13'),
('10e0f4dd-2fd3-455b-867d-e4a530317eab', 'indriana.h', 'indriana.h@ugm.ac.id', '197905262002122001', 'Indriana Hidayah', 'Dr.', 'S.T., M.T.', '$2y$10$MXJbACzA5kOoEI.A1mP1ZeOFMUCcv5Ct3FJkMLJom.kQ8Z9uSkYMu', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:13'),
('16d7fa46-48c3-4780-bf9d-f719174dfc76', 'adhistya', 'adhistya@ugm.ac.id', '198104292008122001', 'Adhistya Erna Permanasari', '', 'S.T., M.T., Ph.D.', '$2y$10$ZdwRLlblNG0gm8OoUmgw9O.gmK7FG.mJtJOOuvmvknSuqqNl/KY8i', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:13'),
('1746d501-d06c-4017-bc73-eaab259fb5fe', 'adha.imam', 'adha.imam@ugm.ac.id', '197911022008121001', 'Adha Imam Cahyadi', 'Dr.Eng. Ir.', 'S.T., M.Eng., IPM.', '$2y$10$tp3kS0l7XMhl35xp.HFzuu/KI3p8YCyNCD67diPKn0iJHDfHgrAwq', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:13'),
('18a8c4a7-bf79-4ac9-91da-1ba885a4283d', 'admin', 'admin@ugm.ac.id', 'admin', 'Admin', NULL, NULL, '$2y$10$pXQSMe.s0K6670cASBIFQe3e6Xqs7E8e6wSAnmtGHitMRkSVnb/qe', 1, '2021-06-05 11:03:41', '2021-06-07 06:45:13'),
('24f18e8f-afe7-49c4-9878-7fda59fdf724', 'wmustika', 'wmustika@ugm.ac.id', '198109212014041001', 'I Wayan Mustika', '', 'S.T., M.Eng., Ph.D.', '$2y$10$z2ERoxvZFu9rS91JOUVG7e0sTK71dByTkf8QOiUvJWhXgw2XyRFcK', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:13'),
('34c41299-7f8b-45a3-9b23-7246292ed8d0', 'adhisusanto', 'adhisusanto@ugm.ac.id', '194004291964031001', 'Adhi Susanto', 'Prof. (Emr).', 'M.Sc., Ph.D.', '$2y$10$gF8CbGuEeRnbjnkORM512egNQsM8XMi1GdS31WvHUtCk/kFnTft4S', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:13'),
('402260fd-8c37-4cc8-bb46-7143a2289817', 'widyawan', 'widyawan@ugm.ac.id', '197312042002121001', 'Widyawan', '', 'S.T., M.Sc., Ph.D.', '$2y$10$ryKFTs5kDM5lwxevHLc5huuWQ6jUTZWLM6RCNYNo16xB8QiS5h4Ie', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:13'),
('484df94c-6405-45ba-bbe8-15deba99d857', 'sasongko', 'sasongko@ugm.ac.id', '195312271980031007', 'Sasongko Pramono H,', 'Prof. Dr. Ir.', 'DEA.', '$2y$10$HlJO/ZjiEMMIC3mjf0.qp.zl//y.QULOo2Gadxq2eCL.hrFx0J2gK', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:13'),
('491312ba-cf21-412f-ba26-c1e0420d9b53', 'syukron.abu', 'syukron.abu@mail.ugm.ac.id', '111199205202101102', 'Syukron Abu Ishaq Alfarozi', '', 'S.T., Ph.D.', '$2y$10$BpiOm681SVX4nnUrOUb83uFql12SODU8b5G9J83YjzbDAgohpRXnG', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:13'),
('494d8112-5a20-496d-ab26-738f2ecc1bb2', 'azkario', 'azkario@ugm.ac.id', '111199102201607102', 'Azkario Rizky Pratama', '', 'S.T., M.Eng.', '$2y$10$cgb7uZ.bFDbhd6ft5n/enuAK8JtibGsEGPYmfVfF2dyNTvUAR/hy6', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:13'),
('547b5d81-ac69-4fee-87e1-104a8391c67a', 'bhe', 'bhe@ugm.ac.id', '197701312002121003', 'Bimo Sunarfri Hantono', '', 'S.T., M.Eng.', '$2y$10$ZGX2FQonab6qs2IrCpVLgeNmV4Pkb4ATmR4q952NAer4ClRZIitIq', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:13'),
('598029fe-0b83-4f5b-b27b-f4bec0cd3248', 'lukito', 'lukito@ugm.ac.id', '196603271991031002', 'Lukito Edi Nugroho', 'Ir.', 'M.Sc., Ph.D.', '$2y$10$3wmltDH1DiwGhPdqJqBjR.O5EPjW0976KU1o.a3/Cara70.9mTh/W', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:13'),
('623eb87b-819a-4080-bd7d-9b92b93cc62f', 'adji', 'adji@ugm.ac.id', '196909201995121001', 'Teguh Bharata Adji', '', 'S.T., M.T., M.Eng., Ph.D.', '$2y$10$4O0q4.aNOCg6rmWmamHin.xCRPnkWQe0cWV7Iu4y6.HkRKyOEOpDK', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:13'),
('6347f2f9-a8a5-4312-8f7f-d3fcf392d8b0', 'selo', 'selo@ugm.ac.id', '197203011997021001', 'Selo', 'Prof. Ir.', 'S.T., M.T., M. Sc., Ph.D., IPM.', '$2y$10$h6isDAN427j1GokafAC4neuKAVzzKqjwjGB28SPhNelgDMvb74V/G', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:13'),
('6632058a-01e6-4090-b263-025d758a1073', 'indahsoesanti', 'indahsoesanti@ugm.ac.id', '197406152005012001', 'Indah Soesanti', 'Dr.', 'S.T., M.T.', '$2y$10$tQsryhFXZjWztSI7MUmVqOMjMSaymDsqoSmNjCt.ZCdiy9GacQLnq', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:13'),
('70b01d40-eecc-4add-a1ac-af714093c3a8', 'mnrizal', 'mnrizal@ugm.ac.id', '197506192002121004', 'Muhammad Nur Rizal', '', 'S.T., M. Eng., Ph.D.', '$2y$10$HQ4ugZws0nKpK2ip69D/Ze8RJxUhNMI.A1lfZO3XG.KYyFWsCDEim', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:13'),
('7e58e774-865d-4be7-90d9-dff20ef49889', 'silmi', 'silmi@ugm.ac.id', '197111011997022001', 'Silmi Fauziati', 'Dr.Eng.', 'S.T., M.T.', '$2y$10$2aodN9oNNGWkX0c9VUMFp.6rx2K21OjAITqZmzbNBfKsa5Wr9mHFe', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:14'),
('85fee2d1-882d-42a8-913d-22246682d535', 'sigitbw', 'sigitbw@ugm.ac.id', '197605012002121002', 'Sigit Basuki Wibowo', 'Ir.', 'S.T., M.Eng., Ph.D., IPM.', '$2y$10$rp1EKSDCbMmYtH8W5NwV7e51gG.dyyo53wPYA0FbyS2OeTbP1CZCe', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:14'),
('88c88f3c-506a-44c4-9d49-015e264648e3', 'suning', 'suning@ugm.ac.id', '196911221995122001', 'Sri Suning Kusumawardani', 'Dr.', 'S.T., M.T.', '$2y$10$vGvXbL6h2V1E9q/2vAznYOehIKRadXhsHkCQ5kjouAW/sKCK85xVO', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:14'),
('88ea2221-9b7e-462c-9880-8b574642665e', 'tatok', 'tatok@ugm.ac.id', '197501152005011003', 'Prapto Nugroho', 'Ir.', 'S.T., M.Eng., D.Eng., IPM.', '$2y$10$2LoDNbuFiEdDfgRgAJETteFRV9eFxxEtC07xQDttV7aQe4JO/JBxK', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:14'),
('8df8649c-3bed-4e53-8e6a-3ad60756ddb1', 'eka.firmansyah', 'eka.firmansyah@ugm.ac.id', '197903032002121004', 'Eka Firmansyah', 'Ir.', 'S.T., M.Eng., Ph.D., IPM.', '$2y$10$9v74nsBr1fIX0gGP3X/LOOSaxk4FE.Sq6ReEvzQx8CKC34OtfpZdG', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('946b5c0f-80c4-417e-aeb7-138b792e8051', 'adinugroho', 'adinugroho@ugm.ac.id', '197802242002121001', 'Hanung Adi Nugroho', 'Ir.', 'S.T., M.E., Ph.D., IPM.', '$2y$10$hmtUsBSRpWhBKCESYGJ1jePjZEHVpDmQ3govie9WmT2YBKusNi1mu', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('94bbc7fb-e2b5-4886-a7e9-21bb5c038306', 'roniirnawan', 'roniirnawan@ugm.ac.id', '111198504202001102', 'Roni Irnawan', '', 'S.T., M.T., Ph.D.', '$2y$10$iNLTLjkoLWbkS7F3c8WnSeeANTKCBW2nMIfo2ttq13Xk5cmV0znX.', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:14'),
('99b3d70b-31fc-405d-ae1a-51be4a2c2c99', 'insap', 'insap@ugm.ac.id', '196101081985031002', 'P. Insap Santos', 'Ir.', 'M.Sc., Ph.D., IPU.', '$2y$10$SYnSPPF1WJ4zp2cTJD/mi.Iv1HQef7WChFLS2xtJy/ra1jVm97tOK', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:14'),
('9ff4c396-9900-4fd0-bc28-a0f5073bc016', 'husni.rois.ali', 'husni.rois.ali@ugm.ac.id', '111198702201109101', 'Husni Rois Ali', '', 'S.T., M.Eng., Ph.D.', '$2y$10$V66YLrXIvLGe1T/YE7uCUetRUCm4gBMhvdfaHmg0ZQ2Ve9DZmmTie', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('b551f995-61b7-4d86-8112-8705bcee98af', 'ridi', 'ridi@ugm.ac.id', '198310202008121002', 'Ridi Ferdiana', 'Dr. Ir.', 'S.T., M.T., IPM.', '$2y$10$1H2WbDr3v8rawf9QmZScW.XzFhEo2ItydRXggmCgUYuaAydfofw.i', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:14'),
('b77f35ac-6ef4-4b8f-a34e-6d71dae9688b', 'igi', 'igi@ugm.ac.id', '198701092020121005', 'Igi Ardiyanto', 'Dr.Eng.', 'S.T., M.Eng.', '$2y$10$8hrlQTFro0rVHQtrM1sl4.zcgxe..eHIwBDcrRMM9TjC76gecxlQW', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('bff59e04-19de-4ca3-ab52-557fe9a4dee4', 'dzuhri.r.u', 'dzuhri.r.u@ugm.ac.id', '111199010202001101', 'Dzuhri Radityo Utomo', '', 'S.T, M.E., Ph.D', '$2y$10$wHsyN1ZwXwAVezwrhZOyG.BhMrwr5uCAPci4jV0EY.OM/BCnaN17i', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('d1886bc7-c9a3-424d-b285-df5b5bfbae35', 'agusbj', 'agusbj@ugm.ac.id', '198001012015041002', 'Agus Bejo', 'Ir.', 'S.T., M.Eng., D.Eng., IPM.', '$2y$10$EFlNz0gaXG5Dn9/lhp6vieOCIn3XAtdZq72e5dtVaft8z1b2HVTF6', NULL, '2021-05-30 07:44:38', '2021-06-07 06:45:14'),
('d2a6a740-ee64-4111-8019-ed2d337fd4a6', 'risanuri', 'risanuri@ugm.ac.id', '196708021993031002', 'Risanuri Hidayat', 'Dr. Ir.', 'M.Sc., IPM.', '$2y$10$vsbrnD0wFb.s65YI7XGUbOv.Ncybs.vQexvlPG4u/v1.0zMYmOq9m', NULL, '2021-05-30 07:44:41', '2021-06-07 06:45:14'),
('de6c0638-acb2-4da2-b24b-619e44387548', 'dyonisius.dony', 'dyonisius.dony@ugm.ac.id', '111197706201607101', 'Dyonisius Dony Ariananda', 'Dr.', 'S.T., M.Sc.', '$2y$10$sjM.X.xJqrp2uIdHZMQDXu4V3swEipVfkGgZDku5MW.g0lMDdpwau', NULL, '2021-05-30 07:44:39', '2021-06-07 06:45:14'),
('e018681d-4971-4879-ba01-679bfa12853f', 'lesnanto', 'lesnanto@ugm.ac.id', '111198506201212101', 'Lesnanto Multa Putranto', 'Ir.', 'S.T., M.Eng., Ph.D., IPM.', '$2y$10$4Ze4.0NyDAQ8HmULJOloy.r59CrgikTp.Z//vkCoeHlfYvGlZpbx6', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:14'),
('e111c69c-a0bb-4a4b-ba11-c1a8c2503a78', 'noorwewe', 'noorwewe@ugm.ac.id', '197506071999031002', 'Noor Akhmad Setiawan', 'Ir.', 'S.T., M.T., Ph.D., IPM.', '$2y$10$7LsZGRrRxm3d.TXtY1esBux1d2ZqnrU6ybmsmC3BpwV6n0TrJdgse', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:14'),
('e6e75872-6287-4706-97be-ee9fe44f46f4', 'tumiran', 'tumiran@ugm.ac.id', '195908231986031002', 'Tumiran', 'Ir.', 'M. Eng., Ph. D.', '$2y$10$0XqN.U3a6lyYAMXueBvMKOKnWBad0rT6rtLzUZEi72P1motDcCEVG', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:15'),
('ea5eccdd-277f-4aaf-9736-9e9c83742a1d', 'isnaeni', 'isnaeni@ugm.ac.id', '196510041993031003', 'M. Isnaeni Bambang Setyonegoro', 'Dr. Ir.', 'M.T.', '$2y$10$c3mbeHvUWLq3vSJU3YGaRuv/l8T3z3v0Y/3GL6BG70nvGvoEPq9YK', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:15'),
('ec61c34e-624d-45c6-b38c-548586829fda', 'surya.its', 'surya.its@ugm.ac.id', '12345', 'Surya Sumpeno', 'Dr.', 'S.T. M.Sc.', '$2y$10$SALaWd9LTb9R1ixx0UeOjeTl6At2zd0B.OsfT1OEGWqYMWoPZKoB.', NULL, '2021-05-30 07:44:42', '2021-06-07 06:45:15'),
('eca7e5b7-2427-4512-9432-7157af7f4c86', 'oyas', 'oyas@ugm.ac.id', '196711281994121001', 'Oyas Wahyunggoro', 'Ir.', 'M.T., Ph.D.', '$2y$10$NCcFw7vA2gyrim/LdnI4.e2PYAjZbuOTeK3LcfoUOCeMA0peJKIzu', NULL, '2021-05-30 07:44:40', '2021-06-07 06:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin__semester`
--

CREATE TABLE `admin__semester` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__semester`
--

INSERT INTO `admin__semester` (`uuid`, `tahun`, `semester`, `is_active`, `created_at`, `updated_at`) VALUES
('4ad27d12-6937-44d7-986e-69cd7b10011f', 2020, 2, 1, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('5fef3f0b-db1f-49b4-af40-d7057f7dce93', 2020, 1, 0, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('90940f74-3b78-405e-aa61-e87d5242709f', 2019, 2, 0, '2021-06-05 20:37:36', '2021-06-05 20:37:36'),
('9c60df45-d29c-4538-8938-1c4f87ca4eb3', 2019, 1, 0, '2021-06-05 20:37:36', '2021-06-05 20:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin__sync`
--

CREATE TABLE `admin__sync` (
  `uuid` char(36) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__sync`
--

INSERT INTO `admin__sync` (`uuid`, `nama`, `table_name`, `last_update`, `created_at`, `updated_at`) VALUES
('140e1124-b6f9-4d5c-8178-7b57959043c4', 'Absensi Perkuliahan', 'perkuliahan__kelas__absensi', NULL, '2021-06-05 20:46:29', '2021-06-05 20:46:29'),
('32942236-ea82-4e28-a505-e4e77a7fd268', 'Dosen', 'admin__dosen', '2021-06-05 20:45:43', '2021-06-05 20:06:27', '2021-06-05 20:45:43'),
('5f3cd84a-d3e4-4313-bc6f-483bc6efd017', 'Peserta Kelas', 'perkuliahan__kelas__peserta', '2021-06-06 04:04:29', '2021-06-05 20:38:25', '2021-06-06 04:04:29'),
('76909ea4-93e5-4969-8ad3-8e61bb1cb149', 'Mahasiswa', 'admin__mahasiswa', '2021-06-07 06:49:31', '2021-06-05 19:39:08', '2021-06-07 06:49:31'),
('8aaa34d6-89b6-450b-95ba-534d4030d77d', 'Semester', 'admin__semester', '2021-06-05 20:45:43', '2021-06-05 20:06:42', '2021-06-05 20:45:43'),
('9139d6df-a270-4371-8790-3ea9b137b070', 'Kelas Kuliah', 'perkuliahan__kelas__matakuliah', '2021-06-06 04:04:27', '2021-06-05 20:07:18', '2021-06-06 04:04:27'),
('b9e97873-5f57-44b4-848a-f6ec5f4fcc52', 'Mata Kuliah', 'admin__matakuliah', '2021-06-05 20:45:43', '2021-06-05 20:06:36', '2021-06-05 20:45:43'),
('cb1129bb-d374-4b5c-942d-fdfa15ce45b0', 'Pertemuan Perkuliahan', 'perkuliahan__kelas__pertemuan', NULL, '2021-06-05 20:46:07', '2021-06-05 20:46:07'),
('fc788f68-f5a9-410f-9640-07b19bd62801', 'Pegawai', 'admin__pegawai', '2021-06-07 06:47:16', '2021-06-05 19:16:49', '2021-06-07 06:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__absensi__atensi`
--

CREATE TABLE `perkuliahan__absensi__atensi` (
  `uuid` char(36) NOT NULL,
  `id_kelas` char(36) DEFAULT NULL,
  `pertemuan_ke` int(2) DEFAULT NULL,
  `id_mahasiswa` char(36) DEFAULT NULL,
  `waktu_absen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkuliahan__absensi__atensi`
--

INSERT INTO `perkuliahan__absensi__atensi` (`uuid`, `id_kelas`, `pertemuan_ke`, `id_mahasiswa`, `waktu_absen`, `created_at`, `updated_at`) VALUES
('01f4ed6e-e0ca-46a0-a088-25fc434cfbf7', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-04-19 00:15:41', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('072e3c10-dc96-4e2c-bfcc-2087c5b11b64', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-04-19 00:11:18', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('075bdc0f-23f0-44af-86f6-3471a544cdec', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-04-19 00:03:12', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('0d0019bc-31c4-4170-81e9-8c8fdf8a974e', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-04-19 00:11:18', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('269a0e7d-116b-4d2b-b0f2-a18811b166b0', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '06809d43-cb01-4697-ae35-19256ea8a105', '2021-04-19 00:12:28', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('28c924eb-dcbe-4f58-a392-103ef9cfb7bd', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-04-19 00:03:12', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('36b10d1e-9577-4cf1-bacf-fe1126626fa1', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-04-19 00:09:10', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('45e04585-decb-43b8-9c13-7d4469f477c7', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-04-19 00:03:12', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('47ca54f5-f231-4ff4-a173-d45d10cb30d6', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-04-19 00:42:37', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('545a8054-0dff-4ea9-a80d-fbfca79d273a', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-04-19 00:15:41', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('78ae3a0f-272a-4cfc-94a2-171bda3fe2b2', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-04-19 00:05:24', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('8684b980-6a7c-4a06-8d01-bfd3f05c2da1', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-04-19 00:06:09', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('8e38d8f8-c4e5-447c-b0bf-f2967bcea26c', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-04-19 00:06:09', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('9127795a-36b8-4f45-b299-b94cda5c079d', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-04-19 00:05:24', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('9cbfb37f-29f0-4533-af00-da00a0179b40', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-04-19 00:03:12', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('9d699d3b-8923-4aca-9e87-b3e878e7e1bf', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '06809d43-cb01-4697-ae35-19256ea8a105', '2021-04-19 00:12:28', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('9de100c3-dc56-4248-b76b-0626611d2aef', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-04-19 00:07:30', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('a3988167-7d1e-4c46-8d25-83872bdf18be', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-04-19 00:42:37', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('a512aef9-3eef-4cd8-a719-550d9e801d5c', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-04-19 00:06:18', '2021-06-07 11:10:59', '2021-06-07 11:10:59'),
('c3412ff1-4fa1-4bfc-ac5d-98a782473354', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-04-19 00:09:10', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('e0260519-9042-48ad-8330-d7db1496e8c7', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-04-19 00:06:18', '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('e17a4210-5d5a-4da6-9066-903dd6b150f9', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-04-19 00:07:30', '2021-06-07 11:10:59', '2021-06-07 11:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__absensi__data`
--

CREATE TABLE `perkuliahan__absensi__data` (
  `uuid` char(36) NOT NULL,
  `id_kelas` char(36) DEFAULT NULL,
  `pertemuan_ke` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkuliahan__absensi__data`
--

INSERT INTO `perkuliahan__absensi__data` (`uuid`, `id_kelas`, `pertemuan_ke`, `created_at`, `updated_at`) VALUES
('7a38d1e5-66c4-4ac0-81f6-a1c2ebb5f7cd', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, '2021-06-07 11:19:55', '2021-06-07 11:19:55'),
('f51da7ab-f1c2-4e15-870b-25230486e2f9', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, '2021-06-07 11:10:59', '2021-06-07 11:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__absensi__lupa`
--

CREATE TABLE `perkuliahan__absensi__lupa` (
  `uuid` char(36) NOT NULL,
  `id_mahasiswa` char(36) DEFAULT NULL,
  `id_kelas` char(36) DEFAULT NULL,
  `pertemuan_ke` int(11) DEFAULT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `surat_pengantar` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkuliahan__absensi__lupa`
--

INSERT INTO `perkuliahan__absensi__lupa` (`uuid`, `id_mahasiswa`, `id_kelas`, `pertemuan_ke`, `bukti`, `surat_pengantar`, `status`, `created_at`, `updated_at`) VALUES
('3756ff13-2078-49c6-950d-8ff06ef2d699', '5a2100f0-4718-43e5-87d9-16d924de2aea', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 5, NULL, 'app/lupa-absen/2021/06/07/3756ff13-2078-49c6-950d-8ff06ef2d699-pengantar.pdf', 1, '2021-06-07 11:21:59', '2021-06-07 11:30:10'),
('b06ecc88-0875-4fd0-9d66-3b7d4add3d8f', '5a2100f0-4718-43e5-87d9-16d924de2aea', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 4, 'app/lupa-absen/2021/06/07/b06ecc88-0875-4fd0-9d66-3b7d4add3d8f-bukti.jpg', 'app/lupa-absen/2021/06/07/b06ecc88-0875-4fd0-9d66-3b7d4add3d8f-pengantar.pdf', 1, '2021-06-07 08:56:12', '2021-06-07 09:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__absensi__mahasiswa`
--

CREATE TABLE `perkuliahan__absensi__mahasiswa` (
  `uuid` char(36) NOT NULL,
  `id_mahasiswa` char(36) DEFAULT NULL,
  `id_kelas` char(36) DEFAULT NULL,
  `pertemuan_ke` int(11) DEFAULT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkuliahan__absensi__mahasiswa`
--

INSERT INTO `perkuliahan__absensi__mahasiswa` (`uuid`, `id_mahasiswa`, `id_kelas`, `pertemuan_ke`, `bukti`, `status`, `created_at`, `updated_at`) VALUES
('68fb295c-9966-4635-b9f5-fbd8e469225d', '5a2100f0-4718-43e5-87d9-16d924de2aea', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 9, 'app/absensi/2021/06/07/68fb295c-9966-4635-b9f5-fbd8e469225d.png', 1, '2021-06-07 07:45:15', '2021-06-07 08:16:21'),
('d1807fd0-a85e-48db-904c-d45e15662fc4', '5a2100f0-4718-43e5-87d9-16d924de2aea', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 10, 'app/absensi/2021/06/07/d1807fd0-a85e-48db-904c-d45e15662fc4.jpg', 1, '2021-06-07 07:56:35', '2021-06-07 08:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__kelas__absensi`
--

CREATE TABLE `perkuliahan__kelas__absensi` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pertemuan` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mahasiswa` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perkuliahan__kelas__absensi`
--

INSERT INTO `perkuliahan__kelas__absensi` (`uuid`, `id_pertemuan`, `id_mahasiswa`, `created_at`, `updated_at`) VALUES
('01dfc85c-7409-4d07-9aea-84953906e559', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('027de83f-fd6c-4a73-ae3c-c0f4126e5aa3', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('05754ce0-d06e-448a-be00-46e5324470f0', '78f3ec68-b2cf-4786-a834-1b9e57977f03', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('07403230-7cd9-4116-830e-25d4806073b9', '37408410-0c37-45fe-bb02-c9079058da2c', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 08:27:15', '2021-06-06 08:27:15'),
('07e92292-a2b6-4798-9601-de8c8dc8f4b1', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('0e3925b5-9b58-4cbd-90f6-10bd45097b78', 'c89b2eb2-a77d-4a31-83cb-8b376cecac87', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 08:25:46', '2021-06-06 08:25:46'),
('16b56273-4f32-4388-9566-d622de1e5074', 'f35d4e3c-2781-4aaa-bd7e-614fac980651', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 08:27:03', '2021-06-06 08:27:03'),
('18b4a896-bf77-4a00-857c-7ac87653dea3', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('1a1690cc-f146-473a-add1-0f8b402f6d02', '78f3ec68-b2cf-4786-a834-1b9e57977f03', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('1b4332c5-4317-44e6-bec1-dcf2bb64c548', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('23052bbf-b718-43d9-8e3f-52f2a92903fd', 'f35d4e3c-2781-4aaa-bd7e-614fac980651', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 08:27:03', '2021-06-06 08:27:03'),
('2599e8c7-f1e9-45a5-90c2-a24ce98ae525', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('2aeb71b4-195f-4aa7-8398-9156d9e810d8', '78f3ec68-b2cf-4786-a834-1b9e57977f03', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('2b267f08-9c9c-4cf6-8831-12e91448b5f2', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('33231ada-1057-4557-90ef-19808ed2d1ed', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-07 08:16:21', '2021-06-07 08:16:21'),
('33c273fa-fc25-4ad2-ba08-4e2a350a579f', '95b03357-40ea-4ed5-8c12-f620e42575ad', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('3c0112d1-3d87-4766-9070-d6147be8d27d', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('3e9c8c53-1380-438c-9c3d-c79554203560', '9594cf5c-ac52-4f8c-a115-dfa24f7c4d24', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-07 08:17:30', '2021-06-07 08:17:30'),
('402778b2-ae5c-45d7-804c-f75a6198cf09', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('41c5bb98-1d30-41b0-8da9-fcfe85b4a383', '78f3ec68-b2cf-4786-a834-1b9e57977f03', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('44a6729c-ad46-4cf4-b1b9-3ca56f4f94db', '78f3ec68-b2cf-4786-a834-1b9e57977f03', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('4a609354-155c-4fcd-8dc1-44b4fe2445ad', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('4b2f320a-7769-4bab-863e-4863377e066a', 'c89b2eb2-a77d-4a31-83cb-8b376cecac87', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-07 11:30:10', '2021-06-07 11:30:10'),
('5216981e-b0b1-4a53-8e33-bf9f4ee84396', '72085adf-3523-4286-9953-e154a9ded5a5', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('53e2e766-a34d-442f-a6e3-4bad9face447', '78f3ec68-b2cf-4786-a834-1b9e57977f03', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('5caf7ab3-71e3-4437-9cc8-86ae40a7eb40', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('5e70283e-70cc-4ada-8f47-cbcefdaf17e5', '72085adf-3523-4286-9953-e154a9ded5a5', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('5ee602b9-e14a-4043-9d1c-09ddd242031e', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('65299d8d-5e4e-46b7-bb6f-d018632c258b', '72085adf-3523-4286-9953-e154a9ded5a5', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('68f71af6-9765-47e3-beb7-2ed1c996a019', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('6aa9e8a2-0bad-4d6e-a104-84f1ea97b35c', '72085adf-3523-4286-9953-e154a9ded5a5', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('6ddae9a0-8a05-4be5-9c8e-9ffa0c91978d', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('7520034f-cac1-4cff-b9ea-5bc217868d69', '95b03357-40ea-4ed5-8c12-f620e42575ad', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 07:29:52', '2021-06-06 07:29:52'),
('7bcc5f82-6cc9-45c9-83f8-650c54596f4a', '37408410-0c37-45fe-bb02-c9079058da2c', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 08:27:15', '2021-06-06 08:27:15'),
('806fc758-5995-4776-a481-1c84f5f0c746', '72085adf-3523-4286-9953-e154a9ded5a5', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('886b0923-da57-4c86-bd62-4aca80b0cdde', '95b03357-40ea-4ed5-8c12-f620e42575ad', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('89439330-79d4-4f2e-9373-d0a64a7a7257', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('91de9201-5dad-4e13-bbe1-11de34216f80', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('962c5dde-7067-4aaa-b137-7f3fdf597768', '78f3ec68-b2cf-4786-a834-1b9e57977f03', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('98363876-b8d8-40ff-be78-2f3ef3a1c870', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('9e1f278a-768f-4370-b5be-e4c58c998aa7', '95b03357-40ea-4ed5-8c12-f620e42575ad', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 07:27:09', '2021-06-06 07:27:09'),
('a28796bc-0ffb-439a-8977-bf912c21c4aa', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('a42a3fa7-e460-43cf-a63a-f2b167f877fb', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('a52a8c07-07a5-41b0-9c1f-99a08dfd4c7e', 'f35d4e3c-2781-4aaa-bd7e-614fac980651', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-06 08:27:03', '2021-06-06 08:27:03'),
('a9756a4a-87a7-4a12-8678-84c4c6a37a48', '78f3ec68-b2cf-4786-a834-1b9e57977f03', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('b0374ee8-0f96-440f-b92c-b96613ba1e72', 'c89b2eb2-a77d-4a31-83cb-8b376cecac87', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 08:25:46', '2021-06-06 08:25:46'),
('b4ec6944-1545-4b53-95ab-ba5ebc732356', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('b6122d27-2f53-49ea-9350-768bdc315769', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('b8162957-bcdf-4d85-820c-2d5996f049eb', 'c89b2eb2-a77d-4a31-83cb-8b376cecac87', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 08:25:46', '2021-06-06 08:25:46'),
('b88e2234-2590-41b6-bd51-88f0665cc3ed', '72085adf-3523-4286-9953-e154a9ded5a5', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('b8df4226-c0aa-4273-999a-01e0befec4f0', '72085adf-3523-4286-9953-e154a9ded5a5', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('ba20a0a0-8b50-494f-82a5-ec614ec4f477', '78f3ec68-b2cf-4786-a834-1b9e57977f03', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 08:28:49', '2021-06-06 08:28:49'),
('bd007e74-95f1-430c-96d3-fbc0443218ad', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('bda76ebb-0e44-4c7c-850b-795dd7c6f0bf', '95b03357-40ea-4ed5-8c12-f620e42575ad', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-07 09:23:26', '2021-06-07 09:23:26'),
('c173782e-8d01-43bd-adea-b473dafa1f1a', '72085adf-3523-4286-9953-e154a9ded5a5', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('c709708f-2ad2-4eac-8694-2d5af0610e24', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('c7fb654c-c9df-4ea9-8ca6-1ea9f64b03d3', '31f0eb4f-48e0-4425-8c8d-7d375ae4b462', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 08:29:05', '2021-06-06 08:29:05'),
('c8c05730-02d7-4385-8fb3-e884fe6efb03', '37408410-0c37-45fe-bb02-c9079058da2c', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-06 08:27:15', '2021-06-06 08:27:15'),
('d29b00cc-5c8b-414e-bcb9-bc77c2c31712', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('d9067ead-21f7-4b75-b80a-9137c5606606', '72085adf-3523-4286-9953-e154a9ded5a5', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('db852462-ec87-433b-8999-38f371032722', '37408410-0c37-45fe-bb02-c9079058da2c', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-06 08:27:15', '2021-06-06 08:27:15'),
('dd9a3f0e-045f-41d9-8557-a402c7303c29', '72085adf-3523-4286-9953-e154a9ded5a5', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('de7ef662-160b-4925-9ee5-b1da2d9a1adb', 'a2aac882-f932-43a9-90e2-d7f70bc7466c', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('dfc14721-5020-425e-80a9-f9825abc9bba', '37408410-0c37-45fe-bb02-c9079058da2c', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 08:27:15', '2021-06-06 08:27:15'),
('e2c1dae1-bc16-4063-bb47-f31563fb8070', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('e7990994-07bc-4d03-b760-939bdf069803', '95b03357-40ea-4ed5-8c12-f620e42575ad', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-06 07:27:09', '2021-06-06 07:27:09'),
('ee7c1157-34e1-4d12-a8e0-2512eec369ff', '95b03357-40ea-4ed5-8c12-f620e42575ad', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-06 07:29:52', '2021-06-06 07:29:52'),
('f1096180-9fb8-47b3-a309-67d10076fedf', '72085adf-3523-4286-9953-e154a9ded5a5', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-06 06:46:25', '2021-06-06 06:46:25'),
('f3a4ebd8-e0a9-4e33-a6cd-0cf6eab2b638', '031eb01f-c1d5-4ceb-a3d3-54c062187a91', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-06 06:46:25', '2021-06-06 06:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__kelas__matakuliah`
--

CREATE TABLE `perkuliahan__kelas__matakuliah` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_matakuliah` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dosen` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_semester` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perkuliahan__kelas__matakuliah`
--

INSERT INTO `perkuliahan__kelas__matakuliah` (`uuid`, `id_matakuliah`, `id_dosen`, `id_semester`, `nama`, `created_at`, `updated_at`) VALUES
('068f5400-ad8a-40b1-8fe3-a8d10c640924', '55284340-e810-4a61-897b-fb97ea7da9b4', 'b75297a2-b012-4b92-b142-8baed9e25c5b', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Gudang dan Penambangan Data 2020 Genap', '2021-06-05 20:41:35', '2021-06-06 04:04:27'),
('34503e00-cd90-4987-88e2-d9f7619bfa89', 'aff48089-02a2-404b-a0e2-eb39629a3ee9', '06cd86bd-489d-4543-92ad-54d7ee094813', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Kecerdasan Bisnis 2020 Genap', '2021-06-05 20:41:35', '2021-06-06 04:04:27'),
('46cf8947-82c1-4d55-9f9f-ec357ea17259', 'f6840402-f6d2-4750-ae9e-961debb7a14b', 'cb35ecca-69ea-4fe5-9ad6-ddd4a98fb5bc', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Interoperabilitas 2020 Genap', '2021-06-05 20:41:35', '2021-06-06 04:04:27'),
('47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'df46307f-0ea7-4b73-bd2b-ae11779e3542', '99a9697b-1c52-4d76-a20d-c835704f83b0', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Komputasi Tersebar 2020 Genap', '2021-06-05 20:41:35', '2021-06-06 04:04:27'),
('9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '591e9a06-1067-4f6c-8a06-b8abf9c4e359', 'c2481201-970b-4dd6-94dd-ac9933e8dce6', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Seminar I 2020 Genap', '2021-06-05 20:41:35', '2021-06-06 04:04:27'),
('9f39df7a-c408-4123-ad90-a21995be0a20', '6e6f010e-8067-4ca9-8cdd-515583f20506', 'ea408e2b-c07c-4b84-8e8e-448a4b64f7da', '4ad27d12-6937-44d7-986e-69cd7b10011f', 'Visi Komputer', '2021-06-05 20:41:35', '2021-06-06 04:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__kelas__pertemuan`
--

CREATE TABLE `perkuliahan__kelas__pertemuan` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pelaksanaan` date NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perkuliahan__kelas__pertemuan`
--

INSERT INTO `perkuliahan__kelas__pertemuan` (`uuid`, `id_kelas`, `tanggal_pelaksanaan`, `pertemuan_ke`, `created_at`, `updated_at`) VALUES
('031eb01f-c1d5-4ceb-a3d3-54c062187a91', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-02-15', 2, '2021-06-06 06:12:33', '2021-06-06 06:12:33'),
('31f0eb4f-48e0-4425-8c8d-7d375ae4b462', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-04-12', 9, '2021-06-06 08:29:00', '2021-06-06 08:29:00'),
('37408410-0c37-45fe-bb02-c9079058da2c', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-03-15', 6, '2021-06-06 06:30:49', '2021-06-06 06:30:49'),
('72085adf-3523-4286-9953-e154a9ded5a5', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-02-22', 3, '2021-06-06 06:15:13', '2021-06-06 06:15:13'),
('78f3ec68-b2cf-4786-a834-1b9e57977f03', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-04-05', 8, '2021-06-06 08:28:37', '2021-06-06 08:28:37'),
('9594cf5c-ac52-4f8c-a115-dfa24f7c4d24', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-04-19', 10, '2021-06-07 08:17:24', '2021-06-07 08:17:24'),
('95b03357-40ea-4ed5-8c12-f620e42575ad', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-03-01', 4, '2021-06-06 06:15:13', '2021-06-06 06:15:13'),
('a2aac882-f932-43a9-90e2-d7f70bc7466c', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-02-08', 1, '2021-06-06 06:15:13', '2021-06-06 06:15:13'),
('c89b2eb2-a77d-4a31-83cb-8b376cecac87', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-03-08', 5, '2021-06-06 06:30:13', '2021-06-06 06:30:13'),
('f35d4e3c-2781-4aaa-bd7e-614fac980651', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2021-03-22', 7, '2021-06-06 06:31:04', '2021-06-06 06:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan__kelas__peserta`
--

CREATE TABLE `perkuliahan__kelas__peserta` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mahasiswa` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perkuliahan__kelas__peserta`
--

INSERT INTO `perkuliahan__kelas__peserta` (`uuid`, `id_kelas`, `id_mahasiswa`, `created_at`, `updated_at`) VALUES
('040fd747-32a5-44e7-a8ba-c30bf1dc7013', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('06d4b393-857b-4765-ad3a-adbe3606d989', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('0ebe070b-7053-4f2a-9c19-b101d3e55277', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '79a88e09-ccb0-406d-b0de-57abbec4df08', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('13065d72-2c2a-4071-a4e9-ae4dfdfbe72c', '34503e00-cd90-4987-88e2-d9f7619bfa89', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('13b352ed-b608-4267-97e0-e134708595ea', '34503e00-cd90-4987-88e2-d9f7619bfa89', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('16012466-89a6-4a2c-aa09-e86117472fbf', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('1645569d-ccb9-4647-a64a-7ebbaa4b755c', '46cf8947-82c1-4d55-9f9f-ec357ea17259', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('181a0169-649e-4d8a-ae8e-479708fb6fa6', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'e7b3c93a-7063-49a6-bc77-43cce246ce89', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('1ad7d483-2ed2-4a0e-b0f9-5edb28a03841', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('1d4f20d6-f880-4cee-b868-97717b4e3d4b', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('1e537564-11c1-4d8e-ba6a-a15f7a66bcc2', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('1fd48d5e-2556-4c8e-9506-54ce810206d8', '46cf8947-82c1-4d55-9f9f-ec357ea17259', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('23c55c4e-0c86-4446-aa20-89bbfc6ed69a', '34503e00-cd90-4987-88e2-d9f7619bfa89', '13c520ef-0c7a-4d2a-bef5-828e2766f301', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('23e2ad5c-abd1-4119-8c80-99cd3f1182e8', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('28e78d23-f341-4474-a550-b74a0916c16c', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'b78e4bcf-538d-4ea2-8bb8-88ab038085c9', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('292b8148-39f1-455b-98af-2b75084f34fa', '34503e00-cd90-4987-88e2-d9f7619bfa89', '79c48cf4-d71e-42c6-b1ed-207d968a6890', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('3430a057-1b39-4572-86bf-ecd226c97dc5', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'bbef08b2-1de6-411f-9657-ae5ac07839ec', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('3880125b-6382-4485-a32c-4524ed047677', '46cf8947-82c1-4d55-9f9f-ec357ea17259', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('43658657-aa78-424e-9b5e-2dcb3af34e34', '34503e00-cd90-4987-88e2-d9f7619bfa89', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('44002fca-1948-40af-9384-ad3da62f2bb2', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '69576ab0-bb38-4024-911d-075ac900128a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('45580c8c-90cf-4226-96f4-99c9178ada37', '46cf8947-82c1-4d55-9f9f-ec357ea17259', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4595944a-f2c8-4b5b-b53c-59a0976090eb', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4628c3dd-b35c-435b-884a-e0113126d253', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('499fccc6-2c30-46a8-9322-03e9732c5119', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '13c520ef-0c7a-4d2a-bef5-828e2766f301', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('49ba1690-4f22-4a4b-83ed-b196fcf7ac1d', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'b78e4bcf-538d-4ea2-8bb8-88ab038085c9', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4a77a59b-422f-4f6c-9403-5ea162ec8ca8', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4c400e48-eeb9-4bf8-94a5-bad18c631ecb', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '996da86e-9b3e-4425-abcf-df65404560b7', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4ce6913d-3292-42df-b3c6-65b13c89059e', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('4dc2f736-7e51-4363-982f-3f463e039bca', '46cf8947-82c1-4d55-9f9f-ec357ea17259', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('513f1f73-c766-45cb-92ae-180d03071b37', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('545484fd-60bb-429f-870b-31c8bd6501c7', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('55aa2573-2efc-4ce6-b340-a8eee6db6168', '34503e00-cd90-4987-88e2-d9f7619bfa89', '69576ab0-bb38-4024-911d-075ac900128a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('5c6d42da-e3de-4dce-ad70-08f13016d035', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('5d1208dc-717e-466f-8f82-d3b954ea64fa', '34503e00-cd90-4987-88e2-d9f7619bfa89', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('6c030251-4320-4a8e-8d66-acf7b397a238', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('6d09d44b-8695-4412-b25a-0f17859065f4', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('6e36a15b-cf7b-4a34-8b66-05b97a8da8d0', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '7db0a23f-71ad-4b89-9e84-1097ee9fccf7', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('7369f3df-1c46-4f68-bd9a-3f5dbfcf7e23', '46cf8947-82c1-4d55-9f9f-ec357ea17259', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('7a39d0bb-3d08-4d6e-ae11-aaddf45fbb59', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '56dbeceb-76b3-4e07-9722-597ed28de1b4', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('88843797-3c94-4208-9bbe-73422a27da76', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('8a68f3c6-2480-4843-a2de-636904c19326', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'f2642ad5-36b9-4512-a53a-540e22ccfc15', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('8ae9d8c0-2b12-4661-a8a2-7cb8ab2c2661', '34503e00-cd90-4987-88e2-d9f7619bfa89', '76108b91-4a45-4455-94dc-0e224e55f979', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('959a2f9b-f4f8-48a4-8132-7d75ae57c02b', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '2ff40f0b-2761-4191-b859-fe8d0d2e705b', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('984565a1-b873-4b36-b358-def9d400b54e', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('9ac1c4c2-f906-4f0a-b4af-6c498821eafd', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('9ed384a8-aad3-406d-8b8e-25cd07aae1f3', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('a2e8ba7d-31fa-41d3-bac6-84fa084f128d', '46cf8947-82c1-4d55-9f9f-ec357ea17259', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('a5b9d6cd-c08f-4903-bc55-7ffeda0a3f5e', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'b8be2abf-9c29-4f2d-99df-cc46250732f2', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('aa14dffc-70af-4402-9bda-4097074727b9', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('ad5f8392-453c-4cb2-8699-a185f4878324', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'c61f27b5-c9b8-4e76-b9b5-ba743a1553f3', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('aeb716f4-496e-492e-ad6e-8758e9ae4b2e', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('aef98230-e460-40b5-a5d0-be923c6364c3', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('b210a6b7-29d3-4ae7-ab59-aba5848184ac', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'fecdafe3-ebe0-4c94-9d58-5c47b6aaa019', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('b74ba57f-3d8d-4c3b-b9de-ee1d47fe7535', '34503e00-cd90-4987-88e2-d9f7619bfa89', '7db0a23f-71ad-4b89-9e84-1097ee9fccf7', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('bd36be06-ba1b-418a-8dc9-11b64c4b095c', '46cf8947-82c1-4d55-9f9f-ec357ea17259', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('bfd505fd-e22f-44bb-a5b4-7d74f3122d8f', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '06809d43-cb01-4697-ae35-19256ea8a105', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('c077eb20-247d-4789-9027-3c393a76ba6f', '34503e00-cd90-4987-88e2-d9f7619bfa89', '8ed09dc8-463f-4f78-849b-12d6e323c088', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('c1cd5d45-8a21-48aa-9739-f7b3132353dd', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '79c48cf4-d71e-42c6-b1ed-207d968a6890', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('c5240633-bb5e-4543-b50c-0917db46a829', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'b6f1c424-68d5-4a42-87a3-e6942a047710', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('c8dbe3e4-3e70-4dd3-82ed-07159fcf74e4', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'c61f27b5-c9b8-4e76-b9b5-ba743a1553f3', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('caeb731c-1cad-430b-bc07-8e6e1ffacbf6', '34503e00-cd90-4987-88e2-d9f7619bfa89', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('ce142152-a0f5-475b-8c9d-bf426592aa8f', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', 'e7b3c93a-7063-49a6-bc77-43cce246ce89', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('cef2e06a-12d3-4149-8b45-1e66eb385c7d', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('d464c8a0-a721-4cbc-aa41-bc110748bb3b', '34503e00-cd90-4987-88e2-d9f7619bfa89', '996da86e-9b3e-4425-abcf-df65404560b7', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('d495dcf3-a64c-4cbf-9780-b729a95f0de8', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('d6f16853-bca4-4a51-ad86-0f29b6bc7325', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'b8be2abf-9c29-4f2d-99df-cc46250732f2', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('d6f456fb-b543-4d50-8316-2a100f94ceee', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('d8a10122-85bf-46f7-a4c4-d49e9404d205', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '79540f32-e70a-42f7-bfcf-222f7f6bb53e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('da1d456d-eb61-4fd6-bea3-db5b3d20f056', '34503e00-cd90-4987-88e2-d9f7619bfa89', '1d787ec3-b19b-4bce-ac60-91489615d92b', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('da61920e-57e9-44b8-8567-46a7177bf3eb', '34503e00-cd90-4987-88e2-d9f7619bfa89', '5d4e9eb6-f5fc-4b1d-98d4-74ed8e02de47', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('dbfe012b-c1c5-4137-8ce8-08a08c787589', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'dc70c093-5794-4382-bec6-faa0eaf8d26a', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('dc0887e4-5642-436f-8203-6f6670f26aa4', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '8ed09dc8-463f-4f78-849b-12d6e323c088', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('df14d00f-ead2-432b-a201-ae7196549ee6', '46cf8947-82c1-4d55-9f9f-ec357ea17259', '11c2d83d-8eb1-46da-8327-f603f623261e', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('df799899-1d64-44a9-8625-654a0e6ef4d7', '34503e00-cd90-4987-88e2-d9f7619bfa89', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e0fdfe00-ca76-484f-81ce-5247f28ab8df', '34503e00-cd90-4987-88e2-d9f7619bfa89', '5a42adb8-190d-4772-b118-312bfa396aaa', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e641922f-45df-4744-955e-d40b818133cb', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e722b1fe-f99a-48ef-ac9a-c3d309a16dcf', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '5d4e9eb6-f5fc-4b1d-98d4-74ed8e02de47', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e75e70b6-e895-4299-8763-caddc2c7e027', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '5a42adb8-190d-4772-b118-312bfa396aaa', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e7917cf9-6738-478b-9bd5-de4853603a40', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '76108b91-4a45-4455-94dc-0e224e55f979', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('e8711fc1-af9a-49a4-8255-25814bf7fd23', '47594e16-9fd3-4020-9ca9-341cadf4d8ea', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('ea41a202-1510-46e1-aac7-b0232a2dcede', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 'dcbda916-766d-49b9-94c0-b3693145c9eb', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('eb1799a8-9b9d-4c48-9686-3d1936ee82bd', '9f39df7a-c408-4123-ad90-a21995be0a20', '5a2100f0-4718-43e5-87d9-16d924de2aea', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('f01b6eb6-9921-46a2-8ad1-115515548863', '9e3a4a8f-0efc-4e34-bc15-0b3de06a7645', '1d787ec3-b19b-4bce-ac60-91489615d92b', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('f2bdfd52-b710-4a3a-b55d-a9f8163d5ef9', '068f5400-ad8a-40b1-8fe3-a8d10c640924', '2413022b-686d-45b3-88d9-2ab0f0090687', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('f7d31097-86e9-46a8-9c8b-974d9eb2e42c', '068f5400-ad8a-40b1-8fe3-a8d10c640924', 'a4aad234-bd31-46e5-9c38-093953ee7e97', '2021-06-05 20:45:43', '2021-06-05 20:45:43'),
('fc040974-f81d-4dbc-a1c6-4676e26f70f2', '34503e00-cd90-4987-88e2-d9f7619bfa89', 'ff25238a-84bf-4b96-bc63-5c5a415cf423', '2021-06-05 20:45:43', '2021-06-05 20:45:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin__dosen`
--
ALTER TABLE `admin__dosen`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `admin__mahasiswa`
--
ALTER TABLE `admin__mahasiswa`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `admin__matakuliah`
--
ALTER TABLE `admin__matakuliah`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `admin__pegawai`
--
ALTER TABLE `admin__pegawai`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `admin__semester`
--
ALTER TABLE `admin__semester`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `admin__sync`
--
ALTER TABLE `admin__sync`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__absensi__atensi`
--
ALTER TABLE `perkuliahan__absensi__atensi`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__absensi__data`
--
ALTER TABLE `perkuliahan__absensi__data`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__absensi__lupa`
--
ALTER TABLE `perkuliahan__absensi__lupa`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__absensi__mahasiswa`
--
ALTER TABLE `perkuliahan__absensi__mahasiswa`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__kelas__absensi`
--
ALTER TABLE `perkuliahan__kelas__absensi`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__kelas__matakuliah`
--
ALTER TABLE `perkuliahan__kelas__matakuliah`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__kelas__pertemuan`
--
ALTER TABLE `perkuliahan__kelas__pertemuan`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `perkuliahan__kelas__peserta`
--
ALTER TABLE `perkuliahan__kelas__peserta`
  ADD PRIMARY KEY (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
