-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2018 at 12:53 AM
-- Server version: 10.2.19-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocbuy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `post_type` enum('blog','page') NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `post_type`, `title`, `slug`, `description`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'page', 'Terms and Conditions', 'terms-and-conditions', '', '<p class=\"MsoNormal\"><b>Terms of Service</b></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Agreement between User and <span class=\"MsoHyperlink\"><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></b></span></p>\r\n\r\n<p class=\"MsoNormal\">Welcome to <span class=\"MsoHyperlink\"><span style=\"font-family:\r\nMontserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span>. The <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> website (the “Site”) is comprised of various<span style=\"mso-spacerun:yes\">&nbsp; </span>web pages operated by HCJ, Inc (“OCBuyBack”). <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein (the “Terms”). Your use of <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> constitutes your agreement to all such Terms. Please read these terms carefully and keep a copy of them for your reference.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> is an Electronic Buy Back Site.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Our Website allows individuals to sell their used cell phones, iPhones, tablets, iPads, iWatches, Google &amp; Microsoft devices to us. Upon receipt of the Device(s) and verification of its condition, we will pay the Device(s) owner for the Device(s) in the form of PayPal, check or cash (local pickup only for cash). Please see our Website for additional terms and conditions relating to the sale and purchase of Device(s). If you are under the age of 18, you must obtain your parent’s permission to submit Device(s) to us and to become a registered user.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Buyer reserves the right to revoke the original Offer and provide a “Revised Offer” for the Device(s)if: (a) you indicated the Device is in the Like New or Good condition but it is not as described, and/or (b) you indicated the Device is in the Damaged condition but it is crushed, bent or has missing parts, and/or (c) you indicated a different model than that you sent to OCBuyBack, and/or (d) the Device is received in the mail more fourteen (14) days after you accepted the original Offer. In the event OCBuyback provides you with a Revised Offer, you shall have the option of accepting or rejecting the Revised Offer. You will have seven (7) calendar days after OCBuyback sends the Revised Offer via e-mail to the e-mail address you provided to accept or reject the Revised Offer via e-mail or phone response. If you accept the Revised Offer, you will be paid as requested in the order. If you reject the Revised Offer, the Device will be returned to the mailing address you provided on the Website during checkout free of charge. If the Revised Offer is neither affirmatively accepted nor rejected by you during the seven (7) calendar day period, OCBuyback will consider the Revised Offer to have been accepted by you and you will be issued payment for the Revised Offer price within two (1) business day.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%\">Privacy</span></b></p>\r\n\r\n<p class=\"MsoNormal\">Your use of <span class=\"MsoHyperlink\"><span style=\"font-family:\r\nMontserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> is subject to OCBuyBack’s Privacy Policy. Please review our Privacy Policy, which also governs the Site and informs users of our data collection practices.<span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:Arial;color:#212529;\r\nbackground:white\"> OCBuyback protects the privacy of the persons who use its website. OCBuyback does collect information about you when you open an OCBuyback account and/or use the OCBuyback website and Services. You agree that we may collect and use such information in accordance with the OCBuyback Privacy Policy, which you can review at <a href=\"http://www.ocbuyback.com/privacy-policy\" target=\"_blank\">www.ocbuyback.com/privacy-policy</a>. Please do not use our website or services if you do not agree to the terms and conditions in the OCBuyback Privacy Policy.</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Personal Data. The Seller is solely responsible for any personal, financial and sensitive information stored in the Device(s), including all accessories. It is the Seller’s responsibility to delete all personal, financial and sensitive information from the Device(s) that may contain data before being submitted to the Company. The Seller understands that the Company is not responsible for removing data from the Device(s) and cannot guarantee that all data left on the Goods will be deleted. By the Seller releasing title of the Device(s) to the Company, the Seller agrees to release the Company from any claim as to the Device(s), the data stored in such Device(s), or any data on any media or other accessories used in conjunction with the Device(s), or for such data’s security, integrity, confidentiality, disclosure or use. The Company is not responsible for any loss suffered by the Seller due to any data that is not erased or removed from the Device(s).</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Final Sale- Transfer of Title and Risk of Loss: The Seller agrees that the sale of the Device(s) to OCBuyback is final once payment is made by delivery of the payment to the Seller. The title to the Device(s) passes to OCBuyback upon such delivery of the payment to the Seller. Neither the Device(s) nor any data stored thereon can be returned to the Seller after the payment has been so delivered to the Seller. The risk of loss for, and title to, the payment pass to the Seller upon such delivery of the payment. OCBuyback is not responsible for any lost or stolen payments.</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%\">Electronic Communications</span></b></p>\r\n\r\n<p class=\"MsoNormal\">Visiting <span class=\"MsoHyperlink\"><span style=\"font-family:\r\nMontserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> or sending emails to OCBuyBack constitutes electronic communications. You consent to receive electronic communications and you agree that all agreements, notices, disclosures and other communications that we provide to you electronically, via email and on the Site, satisfy any legal requirement that such communications be in writing.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%\">Your Account</span></b></p>\r\n\r\n<p class=\"MsoNormal\">If you use this site, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password. You may not assign or otherwise transfer your account to any other person or entity. You acknowledge that OCBuyBack is not responsible for a third party access to your account that results from theft or misappropriation of your account. OCBuyBack and its associates reserve the right to refuse or cancel service, terminate accounts, or remove or edit content in our sole discretion.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:107%\">Children Under Thirteen</span></b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack does not knowingly collect, either online or offline, personal information from persons under the age of thirteen. If you are under 18, you may use <span class=\"MsoHyperlink\"><span style=\"font-family:\r\nMontserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> only with permission of a parent or guardian.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>Termination/Access Restriction</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack reserves the right, in its sole discretion, to terminate your access to the site and the related services or any portion thereof at any time, without notice. To the maximum extent permitted by law, this agreement is governed by the laws of the state of California and you hereby consent to the exclusive jurisdiction and venue of courts in California in all disputes arising out of or relating to the use of the Site. Use of the Site is unauthorized in any jurisdiction that does not give effect to all provisions of these Terms, including, without limitation, this section.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>Links to Third Party Site/ Third Party Services</b></p>\r\n\r\n<p class=\"MsoNormal\"><span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> may contain links to other websites (“Linked Sites”). The Linked Sites are not under the control of OCBuyBack and OCBuyBack is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or update to a Linked Site. OCBuyBack is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by OCBuyBack of the site or any association with its operators.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Certain services made available via <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> are delivered by third party sites and organizations. By using any product, service or functionality originating from the <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> domain, you hereby acknowledge and consent that OCBuyBack may share such information and data with any third party with whom OCBuyBack has a contractual relationship to provide the requested product, service or functionality on behalf of <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> users and customers.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>No Unlawful or Prohibited Use/Intellectual Property</b></p>\r\n\r\n<p class=\"MsoNormal\">You are granted a non-exclusive non-transferable, revocable license to access and use <span class=\"MsoHyperlink\"><span style=\"font-family:\r\nMontserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> strictly in accordance with these terms of use. As a condition of your use of the Site, you warrant to OCBuyBack that you will not use the Site for any purpose that is unlawful or prohibited by these Terms. You may not use the Site in any manner which could damage, disable, overburden, or impair the Site or interfere with any other party’s use and enjoyment of the Site. You may not obtain or attempt to obtain any material or information through any means not intentionally made available or provided for through the Site.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">All content included as part of the Service, such as text, graphics, logos, images, as well as the compilation thereof, and any software used on the Site, is the property of OCBuyBack or its suppliers and protected by copyright and other laws that protect intellectual property and proprietary rights. You agree to observe and abide by the copyright and other proprietary notices, legends or other restrictions contained in any such content and will not make any change thereto.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">You will not modify, publish, transmit, reverse engineer, participate in the transfer or sale, create derivative works, or in any way exploit any of the content, in whole or in part, found on the Site. OCBuyBack content is not for resale. Your use of the Site does not entitle you to make any unauthorized use of any protected content, and in particular, you will not delete or alter any proprietary rights or attribution notices in any content. You will use protected content solely for your personal use and will make no other use of the content without the express written permission of OCBuyBack and the copyright owner. You agree that you do not acquire any ownership rights in any protected content. We do not grant you any license, express or implied, to the intellectual property of OCBuyBack or our licensors except as expressly authorized by these Terms.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>Third Party Accounts</b></p>\r\n\r\n<p class=\"MsoNormal\">You will be able to connect your OCBuyBack account to third party accounts. By connecting your OCBuyBack account to your third-party account, you acknowledge and agree that you are consenting to the continuous release of information about you to others (in accordance with your privacy settings on those third-party sites). If you do not want information about you to be shared in this manner, do not use this feature.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>International Users</b></p>\r\n\r\n<p class=\"MsoNormal\">The Service is controlled, operated and administered by OCBuyBack from our offices within the USA. If you access the service from a location outside the USA, you are responsible for compliance with all local laws. You agree that you will not use the OCBuyBack Content accessed through <span class=\"MsoHyperlink\"><span style=\"font-family:Montserrat\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span> in any country or in any manner prohibited by any applicable laws, restrictions or regulations.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b>Indemnification</b></p>\r\n\r\n<p class=\"MsoNormal\">You agree to indemnify, defend and hold harmless OCBuyBack, its officers, directors, employees, agents and third parties, for any losses, costs, liabilities and expenses (including reasonable attorney’s fees) relating to or arising out of your use of or inability to use the Site or services, any user postings made by you, your violation of any terms of this Agreement or your violation of any rights of a third party, or your violation of any applicable laws, rules or regulations. OCBuyBack reserves the right, at its own cost, to assume the exclusive defense and control of any matter otherwise subject to indemnification by you, in which event you will fully cooperate with OCBuyBack in asserting any available defenses.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Liability Disclaimer</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">THE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. HCJ, INC AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE SITE AT ANY TIME.</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL HCJ, INC AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE EOF THE SITE, WITH THE DELAY OR INABILITY TO USE THE SITE OR RELATED SERVICES, THE PROVISION OR OF FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE SITE OR OTHERWISE ARISING OUT OF THE USE OF THE SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OF OTHERWISE, EVEN IF HCJ, INC OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE SITE OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE SITE. </span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">YOUR USE OF THE WEBSITE AND RECEIPT OF PRODUCTS AND/OR SERVICES IS AT YOUR OWN RISK. IN NO EVENT SHALL WE OR ANY THIRD PARTY PROVIDER OR ANY OF OUR OR THEIR RESPECTIVE AFFILIATES, OFFICERS, DIRECTORS, EMPLOYEES, AGENTS OR LICENSORS BE LIABLE FOR ANY CLAIM ARISING OUT OF OR RELATING TO THE WEBSITE, THE SERVICES, THE PRODUCTS, THE CONTENT, OR USER CONTENT, WHETHER BASED IN CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, INCLUDING, BUT NOT LIMITED TO, ANY DECISION OR ACTION TAKEN IN RELIANCE UPON ANY CONTENT, ANY DELAYS, ERRORS, OMISSIONS OR INTERRUPTIONS IN DELIVERY, NEGLIGENCE, ACTS OF GOD, TELECOMMUNICATIONS FAILURE, THEFT OR DESTRUCTION OF, OR UNAUTHORIZED ACCESS TO THE WEBSITE OR THE CONTENT, OR FOR ANY TYPES OF DAMAGES OR LIABILITY, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">OCBuyback will have no liability for any item while in transit or otherwise in the possession or custody of any party other than OCBuyback, including, without limitation, any common postal carrier, customs authority or postal or delivery space. You bear the risk of loss until OCBuyback receives and acknowledges receipt and verification of your item(s), even if you send items in shipping materials provided by OCBuyback.</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">OCBuyback reserves the right, in its sole discretion, to reject delivery of any prepaid mailing kit, mail, envelope, package or other material that appears damaged, opened or tampered with. Any such rejected material will be returned to you and OCBuyback will have no liability for any such attempted delivery or return of any item(s).</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Exclusion of Consequential Damages; Further Limitation of Liability. IN NO EVENT SHALL WE OR ANY THIRD PARTY PROVIDER OR ANY OF OUR OR THEIR RESPECTIVE AFFILIATES, OFFICERS, DIRECTORS, EMPLOYEES, AGENTS OR LICENSORS BE LIABLE TO YOU OR TO ANYONE ELSE FOR ANY DIRECT, SPECIAL, INCIDENTAL, INDIRECT, PUNITIVE, CONSEQUENTIAL DAMAGES OR ANY OTHER LOSS OR INJURY CAUSED IN WHOLE OR IN PART IN RELATION TO THE WEBSITE, THE SERVICES, THE PRODUCTS, THE CONTENT OR THE USER CONTENT. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, SOME OF THE ABOVE LIMITATIONS IN THE “DISCLAIMER OF WARRANTIES” AND “DISCLAIMER OF LIABILITY” SECTIONS MAY NOT APPLY TO YOU. IN THOSE CIRCUMSTANCES, AS WELL AS ANY OTHER WHERE LIABILITY OCCURS, YOU ACKNOWLEDGE THAT THE ENTIRE LIABILITY OF OCBUYBACK UNDER THIS TOS, OR ANY MATTER RELATING TO THIS TOS, REGARDLESS OF THE FORM OF ANY CLAIM OR ACTION OR THEORY OF LIABILITY (INCLUDING CONTRACT, TORT, OR WARRANTY) SHALL NOT EXCEED ONE HUNDRED DOLLARS ($100) AND THAT AMOUNT SHALL BE IN LIEU OF ALL OTHER REMEDIES WHICH YOU MAY HAVE AGAINST US AND ANY AFFILIATED PARTY.</p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Changes to Terms</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">OCBuyBack reserves the right, in its sole discretion, to change the Terms under which </span><span class=\"MsoHyperlink\"><span style=\"font-size:10.0pt;line-height:107%;font-family:Montserrat;mso-bidi-font-family:\r\nArial\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span></span><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:Arial;color:#212529\"> is offered. The most current version of the Terms will supersede all previous versions. OCBuyBack encourages you to periodically review the Terms to stay informed of our updates. </span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Contact US</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">OCBuyBack welcomes your questions or commnets regarding the Terms: </span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">HCJ, Inc</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">126 Viking Ave</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Brea, CA 92821</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Email Address: </span></p>\r\n\r\n<p class=\"MsoNormal\"><span class=\"MsoHyperlink\"><span style=\"font-size:10.0pt;\r\nline-height:107%;font-family:Montserrat;mso-bidi-font-family:Arial\"><a href=\"mailto:support@ocbuyback.com\">support@ocbuyback.com</a></span></span><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:Arial;color:#212529\"></span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Telephone number: </span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">657-286-8274</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:107%;mso-bidi-font-family:\r\nArial;color:#212529\">Effective as of October 1, 2018</span></p>\r\n\r\n', '', 1, '2018-10-04 07:04:46', '2018-10-08 07:38:19');
INSERT INTO `blogs` (`id`, `post_type`, `title`, `slug`, `description`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 'page', 'Privacy Policy', 'privacy-policy', '', '<p><!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG></o:AllowPNG>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves></w:TrackMoves>\r\n  <w:TrackFormatting></w:TrackFormatting>\r\n  <w:PunctuationKerning></w:PunctuationKerning>\r\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables></w:BreakWrappedTables>\r\n   <w:SnapToGridInCell></w:SnapToGridInCell>\r\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\r\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\r\n   <w:DontGrowAutofit></w:DontGrowAutofit>\r\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\r\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\r\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\r\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\r\n   <m:brkBin m:val=\"before\"></m:brkBin>\r\n   <m:brkBinSub m:val=\"--\"></m:brkBinSub>\r\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\r\n   <m:dispDef></m:dispDef>\r\n   <m:lMargin m:val=\"0\"></m:lMargin>\r\n   <m:rMargin m:val=\"0\"></m:rMargin>\r\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\r\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\r\n   <m:intLim m:val=\"subSup\"></m:intLim>\r\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"371\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"></w:LsdException>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:center\" align=\"center\"><b style=\"mso-bidi-font-weight:\r\nnormal\"><span style=\"font-size:14.0pt;line-height:107%\">Privacy Policy</span></b></p>\r\n\r\n<p class=\"MsoNormal\">Protecting your private information is our priority. This\r\nStatement of Privacy applies to <span class=\"MsoHyperlink\"><a href=\"http://www.ocbuyback.com\">www.ocbuyback.com</a></span> and OCBuyBack. The\r\nOCBuyBack website is a service that lets consumers get an instant quote for\r\ntheir electronic device. Consumers can choose to ship the device or drop it off\r\nlocally. Then consumers are paid via Check (Cash for local drop offs only) or\r\nPaypal. By using the OCBuyBack website, you consent to the data practices\r\ndescribed in this statement. </p>\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Collection of your\r\nPersonal Information</b></p>\r\n\r\n<p class=\"MsoNormal\">In order to better provide you with products and services\r\noffered on our Site, OCBuyBack may collect personally identifiable information,\r\nsuch as your: </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">-First and Last Name</p>\r\n\r\n<p class=\"MsoNormal\">-Mailing Address</p>\r\n\r\n<p class=\"MsoNormal\">-E-mail Address</p>\r\n\r\n<p class=\"MsoNormal\">-Phone Number</p>\r\n\r\n<p class=\"MsoNormal\">-Electronic device information</p>\r\n\r\n<p class=\"MsoNormal\">-PayPal E-mail Address</p><p class=\"MsoNormal\">We do not collect any personal information about you unless\r\nyou voluntarily provide it to us. However, you may be required to provide\r\ncertain personal information to us when you elect to use certain products or\r\nservices available on the Site. These may include: (a) registering for an\r\naccount on our Site; (b) entering a sweepstakes or contest sponsored by us or\r\none of our partners; (c) signing up for special offers from selected third\r\nparties; (d) sending us an email message. To wit, we will use your information\r\nfor, but not limited to, communicating with you in relation to services and/or\r\nproducts you have requested from us. We also may gather additional personal or\r\nnon-personal information in the future.<span style=\"mso-spacerun:yes\">  </span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Use of your Personal\r\nInformation</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack collects and uses your personal information to\r\noperate its website(s) and deliver the services you have requested. To improve\r\nour website in order to better serve you. To ask for ratings and review of\r\nservices or products. Also, to follow up after correspondence (Facebook chat,\r\nemail, phone call or text message) </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">OCBuyBack may also use your personally identifiable\r\ninformation to inform you of other products or services available from\r\nOCBuyBack and its affiliates. </p>\r\n\r\n<p style=\"margin-top:0in;line-height:15.3pt;background:white\"><span style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;color:#212529\"=\"\">Our\r\nwebsite is scanned on a regular basis for security holes and known\r\nvulnerabilities in order to make your visit to our site as safe as possible.</span></p>\r\n\r\n<p style=\"margin-top:0in;line-height:15.3pt;background:white\"><span style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;color:#212529\"=\"\">We use\r\nregular Malware Scanning.</span></p>\r\n\r\n<p style=\"margin-top:0in;line-height:15.3pt;background:white\"><span style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;color:#212529\"=\"\">Your\r\npersonal information is contained behind secured networks and is only\r\naccessible by a limited number of persons who have special access rights to\r\nsuch systems, and are required to keep the information confidential. In\r\naddition, all sensitive/credit information you supply is encrypted via Secure\r\nSocket Layer (SSL) technology.</span></p>\r\n\r\n<p style=\"margin-top:0in;line-height:15.3pt;background:white\"><span style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;color:#212529\"=\"\">We\r\nimplement a variety of security measures when a user places an order enters,\r\nsubmits, or accesses their information to maintain the safety of your personal\r\ninformation.</span></p>\r\n\r\n<p style=\"margin-top:0in;line-height:15.3pt;background:white\"><span style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;color:#212529\"=\"\">All\r\ntransactions are processed through a gateway provider and are not stored or\r\nprocessed on our servers.</span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Sharing Information\r\nwith Third Parties</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack does not sell, rent or lease its customers lists\r\nto third parties. \r\n\r\n</p><p class=\"MsoNormal\">OCBuyBack may share data with trusted partners to help\r\nperform statistical analysis, send you email or postal mail, provide customer\r\nsupport, or arrange for deliveries. All such third parties are prohibited from\r\nusing your personal information except to provide these services to OCBuyBack,\r\nand they are required to maintain the confidentiality of your information. </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">OCBuyBack may disclose your personal information, without\r\nnotice, if required to do so by law or in the good faith belief that such\r\naction is necessary to: (a) conform to the edicts of the law of comply with\r\nlegal process served on OCBuyBack or the site; (b) protect and defend the\r\nrights or property of OCBuyBack; and/or (c) act under exigent circumstances to\r\nprotect the personal safety of users of OCBuyBack, or the public. \r\n\r\n</p><p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Tracking User\r\nBehavior</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyback may keep track of the websites and pages our users\r\nvisit within OCBuyBack, in order to determine what OCBuyBack services are the\r\nmost popular. This data is used to deliver customized content and advertising\r\nwith OCBuyBack to customers whose behavior indicates that they are interested\r\nin a particular subject area. </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Automatically\r\nCollected Information</b></p>\r\n\r\n<p class=\"MsoNormal\">Information about your computer hardware and software may be\r\nautomatically collected by OCBuyBack. This information can include; your IP\r\naddress, browser type, domain names, access times and referring website\r\naddresses. This information is used for the operation of the service, to\r\nmaintain quality of the service, and to provide general statistics regarding use\r\nof the OCBuyBack website. \r\n\r\n</p><p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Use of Cookies</b></p>\r\n\r\n<p class=\"MsoNormal\">The OCBuyBack website may use “cookies” to help you\r\npersonalize your online experience. A cookie is a text file that is placed on\r\nyour hard disk by a web page server. Coolies cannot be used to run programs or\r\ndeliver viruses to your computer. Cookies are uniquely assigned to you, and can\r\nonly be read by a web server in the domain that issued the cookie to you. </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">One of the primary purposes of cookies is to provide a\r\nconvenience feature to save you time. The purpose of a cookie is to tell the\r\nWeb server that you have returned to a specific page. For example, if you\r\npersonalize OCBuyBack pages, or register with OCBuyBack site or services, a\r\ncookie helps OCBuyBack to recall your specific information on subsequent visits.\r\nThis simplifies the process of recording your personal information, such as\r\nbilling addresses, shipping address, and so on. When you return to the same\r\nOCBuyBack website, the information you previously provided can be retrieved, so\r\nyou can easily use the OCBuyBack features that you customized. \r\n\r\n</p><p class=\"MsoNormal\">You have the ability to accept or decline cookies. Most Web\r\nbrowsers automatically accept cookies, but you can usually modify your browser\r\nsetting to decline cookies if you prefer. If you choose to decline cookies, you\r\nmay not be able to fully experience the interactive features of OCBuyBack\r\nservices or websites you visit. </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Links</b></p>\r\n\r\n<p class=\"MsoNormal\">This website contains links to other sites. Please be aware\r\nthat we are not responsible for the content or privacy practices of such other\r\nsites. We encourage our users to be aware when they leave our site and to read\r\nthe privacy statements of any to other site that collects personally\r\nidentifiable information. \r\n\r\n</p><p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Children Under\r\nThirteen</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack does not knowingly collect personally identifiable\r\ninformation from children under the age of thirteen. If you are under the age\r\nof thirteen, you must ask your parent or guardian for permission to use this\r\nwebsite. </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">E-mail/Text\r\nMessage/Chat Communications</b></p>\r\n\r\n<p class=\"MsoNormal\">From time to time, OCBuyBack may contact you via email, text\r\nmessage or chat for the purpose of providing announcement, promotional offers,\r\nalerts, confirmations, surveys, and/or other general communication. \r\n\r\n</p><p class=\"MsoNormal\">If you would like to stop receiving marketing or promotional\r\ncommunications via email, text message or chat from OCBuyBack, you may opt out\r\nof such communications by emailing us at <span class=\"MsoHyperlink\"><a href=\"mailto:support@ocbuyback.com\">support@ocbuyback.com</a></span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Changes to this\r\nStatement</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack reserves the right to change this Privacy Policy\r\nfrom time to time. We will notify you about significant changes in the way we\r\ntreat personal information by sending a notice to the primary email address\r\nspecified in your account, by placing a prominent notice on our site, and/or by\r\nupdating any privacy information on the page. Your continued use of the Site\r\nand/or Services available though this Site after such modifications will\r\nconstitute your; (a) acknowledgement of the modified Privacy Policy; and (b)\r\nagreement to abide and be bound by that Policy. \r\n\r\n</p><p class=\"MsoNormal\"><b style=\"mso-bidi-font-weight:normal\">Contact Information</b></p>\r\n\r\n<p class=\"MsoNormal\">OCBuyBack welcomes your questions or comments regarding this\r\nStatemnet of Privacy. If you believe that OCBuyBack has not adhered to this\r\nStatemnet, please contact OCBuyBack at: </p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">OCBuyBack</p>\r\n\r\n<p class=\"MsoNormal\">126 Viking Ave </p>\r\n\r\n<p class=\"MsoNormal\">Brea, California 92821 \r\n\r\n</p><p class=\"MsoNormal\">Email Address: </p>\r\n\r\n<p class=\"MsoNormal\"><span class=\"MsoHyperlink\"><a href=\"mailto:support@ocbuyback.com\">support@ocbuyback.com</a></span></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\">Telephone number: </p>\r\n\r\n<p class=\"MsoNormal\">657-286-8274 \r\n\r\n</p><p class=\"MsoNormal\">Effective as of October 3, 2018</p>\r\n\r\n', '', 1, '2018-10-04 07:48:12', '2018-11-07 01:28:51');
INSERT INTO `blogs` (`id`, `post_type`, `title`, `slug`, `description`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(13, 'blog', 'Turn Your Old Mobile Phone Into Cash', 'blog/turn-your-old-mobile-phone-into-cash', '', '<p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">TURN YOUR OLD MOBILE PHONE INTO CASH</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Old mobile phones are worth money</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">If you are like me, chances are you’ll have a few old mobile phones tucked away somewhere in your home. You may even have several old iPad tablets lying around.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Statista’s latest 2018 data showed that 95.36% of Americans aged 18 to 29 owned a mobile phone. They are followed closely by 30 to 49-year olds (92.65%) and 50 to 64-year olds (72.71%).</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">The life expectancy of a mobile phone or device usually is 2 years. That means there must be many old mobile devices in American homes. These devices are not likely to be used again as their owners move to newer and better models. They are locked away in cupboards or hidden inside boxes. These electronics have value. Owners can trade them for cash.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Cash? That’s right! Your old mobile phone, tablet or camera can all fetch money. Read on to find out how.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">What mobile devices can you sell?</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Smartphones, Androids, and Tablets have value in the resale market. So do iPods, digital cameras like GoPro, smart TVs, and smartwatches.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">If you have the original box, charger, cables, manual and software, the device could probably fetch a lot more cash.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Where to sell?</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Many resellers that will trade cash for your devices and gadgets. These include pawnbrokers, cash converters, second-hand stores, and others. If you do not have the time to visit one of these brick-and-mortar establishments, then you can consider selling the item online</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">To sell online, you can, do it yourself by posting an ad on eBay or you can use an online trader.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Online buyback traders are quite easy to find. Type in a keyword phrase like ‘sell old iPhone’ and a dozen or so websites will appear in the search engine.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Why sell online?</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">For a start, online is convenient. Most online buyback traders will also give instant quotes for your item so you will know how much you can make. They pay cash and buy both damaged and undamaged electronics.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Some of the things most businesses will buy include Samsung Androids, iPhones, iPads, iPods, Smart TVs, GoPro, and so forth.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">How to find the right buyback trader</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">When you are sourcing for the best trader, have a look at their website to see the list of items they want to buy. That way you will know that you have an item that has value to them and you’ll not be wasting your time.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Check out the transaction process. You want something that is uncomplicated. Most sites will have easy-to-use pull-down menus to automate the transaction. They may also have drop-off depots or free postage mailing options so you can easily dispense of the device.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">An important thing to do when choosing the right trader is to check the testimonials on their website. Word-of-mouth authentication is probably the best way for you to work out if you can trust the trader.</p><p style=\"margin-bottom: 1rem; line-height: 1.58; font-size: 21px; letter-spacing: -0.063px; color: rgb(33, 37, 41); font-family: \"Open Sans\", sans-serif;\">Now that you know your old mobile phone, tablet, smartwatch, TV or digital camera is worth cash, you may want to go through the house this weekend and see what treasures you can find. You never know. That old junk in the drawer may just be able to fetch you some cash.  </p>', '13-blog.jpg', 1, '2018-11-06 14:24:56', '2018-11-06 14:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', '1-iphone.jpg', 'iphone', 1, '2018-08-28 14:11:31', '2018-10-04 01:58:18'),
(2, 'Samsung', '2-samsung.jpg', 'samsung', 1, '2018-08-28 14:34:23', '2018-10-04 02:20:06'),
(3, 'iPad', '3-ipad.jpg', 'ipad', 1, '2018-09-03 08:14:40', '2018-10-04 02:20:33'),
(4, 'Google Phone', '4-google.jpg', 'google-phone', 1, '2018-09-03 08:14:49', '2018-11-08 03:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Brand New', 'brand-new', '<p><br></p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, Arial, &quot;Droid Sans&quot;, sans-serif; color: rgb(0, 0, 0);\">If ALL of the following are true:</h4><ul><li style=\"margin-left: 50px;\">Sealed in original box.</li><li style=\"margin-left: 50px;\">The device has never been activated or used.</li></ul>', 1, '2018-08-30 10:50:47', '2018-10-04 06:51:19'),
(2, 'Mint', 'mint', '<p><br></p><h4>If ALL of the following are true:</h4><ul><li style=\"margin-left: 50px;\">Like New with no signs of use.</li><li style=\"margin-left: 50px;\">Fully functional with no operational problems.</li><li style=\"margin-left: 50px;\">No cracks, scratches, dings or dents.</li><li style=\"margin-left: 50px;\">Battery health in good standing.</li></ul>', 1, '2018-08-30 10:58:23', '2018-10-04 06:52:15'),
(3, 'Good Condition', 'good-condition', '<p><br></p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, Arial, &quot;Droid Sans&quot;, sans-serif; color: rgb(0, 0, 0);\">If ALL of the following are true:</h4><ul><li style=\"margin-left: 50px;\">The device has signs of use but no major cosmetic damage.</li><li style=\"margin-left: 50px;\">Fully functional with no operational problems.</li><li style=\"margin-left: 50px;\">No chips or cracks in front or back glass.</li><li style=\"margin-left: 50px;\">Battery health in good standing.</li></ul>', 1, '2018-09-01 09:00:43', '2018-10-04 06:51:40'),
(4, 'Minor Damage', 'minor-damage', '<p><br></p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, Arial, &quot;Droid Sans&quot;, sans-serif; color: rgb(0, 0, 0);\">If ALL of the following are true:</h4><ul><li style=\"margin-left: 50px;\">Cracked front glass with no LCD damage.</li><li style=\"margin-left: 50px;\">Non-working buttons.</li><li style=\"margin-left: 50px;\">Non-working headphone jack.</li><li style=\"margin-left: 50px;\">Non-working speaker or microphone.</li><li style=\"margin-left: 50px;\">Poor battery life.</li></ul>', 1, '2018-09-01 09:01:21', '2018-10-04 06:51:50'),
(5, 'Broken', 'broken', '<p><br></p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, Arial, &quot;Droid Sans&quot;, sans-serif; color: rgb(0, 0, 0);\">If ALL of the following are true:</h4><table><tbody><tr><td><ul><li style=\"margin-left: 50px;\">Does not recognize a SIM card.</li><li style=\"margin-left: 50px;\">Does not connect to Wi-Fi.</li><li style=\"margin-left: 50px;\">Unable to make phone calls.</li><li style=\"margin-left: 50px;\">Non-working fingerprint sensor.</li><li style=\"margin-left: 50px;\">Non-working touchscreen.</li></ul></td><td><ul><li style=\"margin-left: 125px;\">Bad LCD (damage, burns, or no display).</li><li style=\"margin-left: 125px;\">Bent frame.</li><li style=\"margin-left: 125px;\">Passcode lock.</li><li style=\"margin-left: 125px;\">Water damage.</li><li style=\"margin-left: 125px;\">The phone does not power on.</li></ul></td></tr></tbody></table>', 1, '2018-09-01 09:01:43', '2018-10-04 06:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `email`, `subject`, `message`, `status`, `created_at`) VALUES
(1, 'QMerchant', 'test@yopmail.com', 'QMerchant', 'QMerchant', 0, '2018-10-05 07:00:34'),
(2, 'QMerchant', 'test@yopmail.com', 'QMerchant', 'fff', 0, '2018-10-05 07:04:54'),
(3, 'QMerchant', 'test@yopmail.com', 'QMerchant', 'fff', 0, '2018-10-05 07:05:05'),
(4, 'QMerchant', 'test@yopmail.com', 'QMerchant', 'jjj', 1, '2018-10-05 07:06:42'),
(5, 'QMerchant', 'test@yopmail.com', 'QMerchant', 'sss', 1, '2018-10-05 07:08:47'),
(9, 'dsfsdf', 'jimmyjames1@yopmail.com', 'sdfsdf', 'sdfsdff', 0, '2018-10-08 06:44:43'),
(10, 'dsafsdf', 'jimmyjames1@yopmail.com', 'sadsad', 'asdsad', 0, '2018-10-08 06:45:42'),
(11, 'd', 'developers@scrap.space', 'QMerchant', 'dsds', 0, '2018-10-08 09:00:43'),
(12, 'fsdf', 'jimmysjason@yopmail.com', 'sdfsdf', 'sdfsdf', 0, '2018-11-06 06:04:26'),
(13, 'fsdf', 'jimmysjason@yopmail.com', 'sdfsdf', 'sdfsdf', 0, '2018-11-06 06:04:48'),
(14, 'john', 'john@yokmail.com', 'ffff', 'fffffffffffffffffffffffffffffffffff', 0, '2018-11-06 22:56:28'),
(15, 'john', 'john@yokmail.com', 'ffff', 'fffffffffffffffffffffffffffffffffff', 0, '2018-11-06 22:57:33'),
(16, 'john', 'john@yokmail.com', 'ffff', 'fffffffffffffffffffffffffffffffffff', 0, '2018-11-06 22:57:35'),
(17, 'john', 'john@yokmail.com', 'ffff', 'fffffffffffffffffffffffffffffffffff', 0, '2018-11-06 22:57:48'),
(18, 'john', 'john@yokmail.com', 'rrrrrrrrrrrr', 'tttttttttttttttttttttttttttttttt', 0, '2018-11-06 22:58:21'),
(19, 'sdfsdf', 'jimmysjason@yopmail.com', 'sdfsdfsdf', 'sdfdsfdsf', 0, '2018-11-06 23:00:09'),
(20, 'qq qq', 'qmerchant@yopmail.com', 'QMerchant', 'hhhh', 0, '2018-11-07 06:32:44'),
(21, 'qq qq', 'qmerchant@yopmail.com', 'QMerchant', 'hhhh', 0, '2018-11-07 06:32:57'),
(22, 'qq qq', 'qmerchant@yopmail.com', 'QMerchant', 'sdsdsaadsds', 0, '2018-11-07 06:57:29'),
(23, 'qq qq', 'qmerchant@yopmail.com', 'ss', 'sss', 0, '2018-11-07 06:58:18'),
(24, 'Celi De Rosas', 'ocsupplystore@gmail.com', 'help', 'test', 0, '2018-11-07 12:03:59'),
(25, 'asdas', 'ssad@sada.com', 'asdasd', 'asdasd', 0, '2018-11-13 05:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `tag` enum('quotes-orders','iphones-ipads','shipping') NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `tag`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'quotes-orders', 'How do I get a quote? ', 'Click on the green button on the Home page that says, \"Get your offer\" or you may click on the green button near the top right corner of this website where it says \"Request a quote\".', 1, '2018-10-05 01:17:40', '2018-10-05 01:29:22'),
(2, 'quotes-orders', 'What if I\'m unsure about the condition of my device?', 'Select a condition that you feel is most accurate. During the quote process when you select the condition you will see a description of that condition. Once we receive your device(s), we will evaluate it and adjust the offer accordingly. Please note that the final offer price could end up being higher or lower. If it’s lower, we will email you about the adjustment and you have 3 days to accept the offer.', 1, '2018-10-05 01:30:35', NULL),
(3, 'quotes-orders', 'How long does the quoted price last?', 'We will honor our quoted price for 14 days after the order is placed. Past this date your device will be subject to a re-quote.', 1, '2018-10-05 01:30:57', NULL),
(4, 'quotes-orders', 'What if I have more than 1 device to sell?', 'No worries, just click on \"Add to cart and add another device\" during checkout. For bulk sales please email us with your name, phone number, email, model of devices and we will get back to you within 1 business day.', 1, '2018-10-05 01:31:14', NULL),
(5, 'quotes-orders', 'Am I obligated to sell if I get a quote?', 'No, you may contact us at any time via email, text message or FB chat and we can cancel or send back your device.', 1, '2018-10-05 01:31:30', '2018-10-05 01:33:12'),
(6, 'quotes-orders', 'How do I get paid?', 'We currently have 3 options for payment. During checkout, you may select a (1) E-Check via email (print at home, endorse the back and deposit as normal). (2) Mailed check - usually takes 3-5 business days to arrive after payment has been issued. (3) Paypal - receive funds directly to your account. (This is usually the fastest method)', 1, '2018-10-05 01:31:45', '2018-10-05 01:32:29'),
(7, 'quotes-orders', 'When do I get paid?', 'We issue payment within 1 business day of receiving your device(s)', 1, '2018-10-05 01:35:52', NULL),
(8, 'iphones-ipads', 'Where can I find my iPhone or iPad Model?', '<div>The first option is to use the iPhone’s distinct serial number. Each iPhone model has a set of unique serial numbers given to separate it from every other model. In order to find this serial number, here are a few simple steps you can follow.</div><div><br></div><div>If your iPhone is fully functional: Go into Settings &gt; General &gt; About &gt; scroll down to Serial Number. Type the serial number listed into Google to determine your type of device.</div><div><br></div><div>If the device is not fully functional: On the back of every iPhone, there is a section that says “Model” followed by the letter “A” with 4 consecutive numbers.</div><div><br></div><div>Here is a quick list of the model numbers:</div><div><br></div><div>A1732 – iPhone SE (Sprint)</div><div>A1662 – iPhone SE (ATT, T-Mobile, VERIZON)</div><div>A1634 – iPhone 6S+ (All Carriers)</div><div>A1633 – iPhone 6S (All Carriers)</div><div>A1524 – iPhone 6 Plus (Sprint)</div><div>A1522 – iPhone 6 Plus (ATT, T-Mobile, Verizon)</div><div>A1586 – iPhone 6 (Sprint)</div><div>A1549 – iPhone 6 (ATT, Verizon, T-Mobile)</div><div>A1533, A1457, A1530 – iPhone 5S (ATT, T-Mobile)</div><div>A1533, A1453 – iPhone 5S (Verizon, Sprint)</div><div>A1532, A1507, A1529 – iPhone 5C (ATT. T-Mobile)</div><div>A1532, A1456 – iPhone 5C (Verizon, Sprint)</div><div>A1428 – iPhone 5 (AT&amp;T, T-Mobile)</div><div>A1429 – iPhone 5 (Verizon, Sprint)</div><div>A1387 – iPhone 4S (All Carriers)</div><div>A1349 – iPhone 4 (Verizon, Sprint)</div><div>A1332 – iPhone 4 (ATT, T-Mobile)</div>', 1, '2018-10-05 01:36:10', '2018-10-05 03:33:07'),
(9, 'iphones-ipads', 'How do I find the GB or storage size of my device? ', '<div>On your device, tap Settings &gt; General &gt; About &gt; Capacity</div><div><br></div><div>The Capacity number will not be the exact amount of storage as each device comes standard with some apps already on the device.</div><div><br></div><div>Example: A capacity of 55.4GB means it is a 64GB device.</div>', 1, '2018-10-05 01:39:06', '2018-10-05 03:33:51'),
(10, 'iphones-ipads', 'What do I do with my Sim card?', 'We do not need your SIM card however, we do ask that you remove it prior to shipping. If for any case you forget to remove it don\'t worry, we will dispose of it during our inspection of the device.', 1, '2018-10-05 01:39:34', NULL),
(11, 'iphones-ipads', 'Do I need to clear the data on my iPhone or iPad?', 'Yes, please fully erase your device before sending it in. To erase all data, do the following:\r\nGo to Setting > General > Reset > Erase all content and settings.', 1, '2018-10-05 01:40:00', NULL),
(12, 'iphones-ipads', 'How do I remove my iCloud account?', '<div>1. Sign in to icloud.com/#find with your Apple ID (the one you use with iCloud). If you’re using another iCloud app, click the app’s name at the top of the iCloud.com window, then click “Find My iPhone”.</div><div><br></div><div>2. Click All Devices, then select the device.</div><div><br></div><div>3. Click “Erase Device”, then enter your Apple ID password. Because the device is not lost, do not enter a phone number or message. If the device is offline, the remote erase begins the next time it’s online. You will receive an email when the device is erased.</div><div><br></div><div>4. When the device is erased, click “Remove from Account.”</div><div><br></div><div>If you have trouble removing your iCloud due to damaged or broken phone please call or email us at <a href=\"mailto:support@ocbuyback.com\">support@ocbuyback.com</a></div>', 1, '2018-10-05 01:40:32', '2018-10-05 03:37:53'),
(13, 'shipping', '\r\n\r\nWhat are my shipping options?', 'Shipping is free! You have 2 options to select during checkout. 1. Prepaid shipping label via email. Simply print the label and put it on a box or padded envolope (This is the fastest way for us to receive your device). 2. Shipping kit - we will send you a box, prepaid label and necessary items to ship your device (This option does take the longest)', 1, '2018-10-05 01:45:41', NULL),
(14, 'shipping', 'Where can I drop off my device?', 'We are located at 126 Viking Ave Brea, CA 92821, Monday-Friday 9am-5pm (PT) You may drop off at this location.', 1, '2018-10-05 01:46:01', '2018-10-05 01:46:28'),
(15, 'shipping', 'How can I see the status of my order?', 'You may track your order by clicking on \"Track your order\" near the bottom of our website. All of our shipping labels come with a tracking number that can be tracked on USPS. \r\nIf you have any further questions you may contact us via text message (657) 286-8274 or email <a href=\"mailto:support@ocbuyback.com\">support@ocbuyback.com</a>.', 1, '2018-10-05 01:46:15', '2018-10-05 03:39:29'),
(16, 'shipping', 'Do I send a charger and/or accessories with my device?', 'No, we only need phone or iPad. Please note that we will discard any accessories you forget to take off.', 1, '2018-10-05 01:47:02', NULL),
(17, 'shipping', 'What if my package weighs more than the weight shown on the shipping label?', 'No problem. USPS will charge us the difference in weight.', 1, '2018-10-05 01:47:18', NULL),
(18, 'shipping', 'What if my device is damaged during shipping?', 'It is your responsibility to make sure that your device(s) are fully secure when you ship it. If a package is received and looks to have been damaged due to mishandling, we return the package without opening it. However, if the box is secure and does not look as though anything happened during transit and the item inside was not secure, we will offer you an amount based off the condition we receive the phone in.', 1, '2018-10-05 01:47:33', NULL),
(19, 'shipping', 'Does my package come with insurance?', 'No, if you require insurance you will need to purchase your own shipping directly from USPS. Please note that OCBuyBack will not be held liable for any damages incurred due to inadequate packaging.', 1, '2018-10-05 01:47:49', '2018-10-05 01:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `category_id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 6S Plus', 'iphone-6s-plus', '', 1, '2018-08-29 07:50:56', '2018-09-03 09:00:03'),
(4, 2, 'Galaxy Note 8', 'galaxy-note-8', '4-galaxynote8.jpg', 1, '2018-08-31 09:59:51', '2018-08-31 10:04:09'),
(5, 1, 'iPhone SE', 'iphone-se', '', 1, '2018-09-03 09:03:02', NULL),
(6, 1, 'iPhone X', 'iphone-x', '', 1, '2018-09-03 09:03:27', NULL),
(7, 1, 'iPhone 8 Plus', 'iphone-8-plus', '', 1, '2018-09-03 09:03:39', NULL),
(8, 1, 'iPhone 8', 'iphone-8', '', 1, '2018-09-03 09:03:48', NULL),
(9, 1, 'iPhone 10', 'iphone-10', '', 1, '2018-09-17 05:25:59', NULL),
(10, 1, 'iPhone 7', 'iphone-7', '', 1, '2018-09-18 11:34:31', NULL),
(11, 1, 'iPhone 7 Plus', 'iphone-7-plus', '', 1, '2018-09-18 12:22:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `pay_type` int(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `check_type` varchar(16) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `trade_details` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(99) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `label_url` text DEFAULT NULL,
  `tracking_url` text DEFAULT NULL,
  `status` varchar(25) DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `pay_type`, `email`, `paypal_email`, `check_type`, `first_name`, `last_name`, `trade_details`, `address`, `city`, `zip`, `phone`, `amount`, `label_url`, `tracking_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'oc-98111', 1, 'qmerchant@yopmail.com', '', NULL, 'Q', 'Merchant', 'Local Drop Off (18th Oct 2018 at 12:00 PM)', '5773, North Lincoln Avenue, IL, ', 'Chicago', '60659', '111-111-1111', 140.00, NULL, NULL, 'paid', '2018-10-16 00:13:18', NULL),
(2, 'oc-21452', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Shipping Kit with Prepaid Label', '784, Massachusetts Avenue, MA, ', 'Boston', '02118', '111-111-1111', 140.00, NULL, NULL, 'received', '2018-10-26 07:54:38', NULL),
(3, 'oc-11053', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '765, Madison Avenue, FORT WORTH, ', '76123', 'TX', '817-370-5630', 77.00, NULL, NULL, 'received', '2018-10-27 07:15:00', NULL),
(4, 'oc-68144', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '817-370-5630', 140.00, NULL, NULL, 'recycled', '2018-10-27 07:16:12', NULL),
(5, 'oc-38805', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (2nd Nov 2018 at 11:00 AM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '817-370-5630', 122.00, NULL, NULL, 'received', '2018-11-01 07:12:32', NULL),
(6, 'oc-74966', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (2nd Nov 2018 at 11:00 AM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '817-370-5630', 40.00, NULL, NULL, 'received', '2018-11-01 07:27:25', NULL),
(7, 'oc-78497', 2, 'alexjames@yopmail.com', '', NULL, 'Alex', 'James', 'Shipping Kit with Prepaid Label', '123, 123 Testing, California, ', 'Newyork', '12345', '123-456-7890', 140.00, NULL, NULL, 'returned', '2018-11-05 04:27:06', NULL),
(8, 'oc-17688', 2, 'alexjames@yopmail.com', '', NULL, 'Alex', 'James', 'Shipping Kit with Prepaid Label', '123, 123 Testing, California, ', 'Newyork', '12345', '123-456-7890', 302.00, NULL, NULL, 'paid', '2018-11-05 04:50:15', NULL),
(9, 'oc-82729', 2, 'john@yokmail.com', '', NULL, 'john', 'danail', 'Shipping Kit with Prepaid Label', '123, California Street, CA, ', 'San Francisco', '31000', '777-555-8888', 1820.00, NULL, NULL, 'received', '2018-11-05 05:08:29', NULL),
(10, 'oc-102610', 2, 'john@yokmail.com', '', NULL, 'john', 'danail', 'Shipping Kit with Prepaid Label', '123, California Street, CA, ', 'San Francisco', '31000', '777-555-8888', 140.00, NULL, NULL, '', '2018-11-05 06:30:55', NULL),
(11, 'oc-352911', 1, 'bravo@yopmail.com', '', NULL, 'john', 'bravo', 'Shipping Kit with Prepaid Label', '1234567, daisy street, CA, ', 'USA', '12345', '777-555-8888', 122.00, NULL, NULL, 'paid', '2018-11-05 22:58:35', NULL),
(12, 'oc-684012', 1, 'bravo@yopmail.com', '', NULL, 'john', 'bravo', 'Shipping Kit with Prepaid Label', '1234567, daisy street, CA, ', 'USA', '12345', '777-555-8888', 122.00, NULL, NULL, 'received', '2018-11-05 23:13:22', NULL),
(13, 'oc-775713', 1, 'bravo@yopmail.com', '', NULL, 'john', 'bravo', 'Shipping Kit with Prepaid Label', '1234567, daisy street, CA, ', 'USA', '12345', '777-555-8888', 122.00, NULL, NULL, 'received', '2018-11-05 23:22:54', NULL),
(14, 'oc-700814', 1, 'bravo@yopmail.com', '', NULL, 'john', 'bravo', 'Shipping Kit with Prepaid Label', '1234567, daisy street, CA, ', 'USA', '12345', '777-555-8888', 222.00, NULL, NULL, 'returned', '2018-11-06 00:38:10', NULL),
(15, 'oc-396515', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (8th Nov 2018 at 04:00 PM)', '577, 1st Avenue, NY, ', 'New York', '10016', '111-111-1111', 442.00, NULL, NULL, 'recycled', '2018-11-07 03:46:10', NULL),
(16, 'oc-528716', 1, 'alexkarthik@yopmail.com', '', NULL, 'Alexa', 'Karthik', 'Local Drop Off (8th Nov 2018 at 10:00 AM)', '1234, Massachusetts Avenue, MA, ', 'Cambridge', '12345', '123-456-7890', 244.00, NULL, NULL, 'returned', '2018-11-07 04:06:03', NULL),
(17, 'oc-935717', 1, 'alexkarthik@yopmail.com', '', NULL, 'Alexa', 'Karthik', 'Local Drop Off (8th Nov 2018 at 10:00 AM)', '1234, Massachusetts Avenue, MA, ', 'Cambridge', '12345', '123-456-7890', 222.00, NULL, NULL, 'received', '2018-11-07 04:39:38', NULL),
(18, 'oc-140518', 1, 'alexkarthik@yopmail.com', '', NULL, 'Alexa', 'Karthik', 'Local Drop Off (8th Nov 2018 at 10:00 AM)', '1234, Massachusetts Avenue, MA, ', 'Cambridge', '12345', '123-456-7890', 0.00, NULL, NULL, 'paid', '2018-11-07 04:53:16', NULL),
(19, 'oc-561919', 2, 'cely@ocbuyback.com', '', NULL, 'Araceli', 'De Rosas', 'Prepaid Label', '8, 2560 Associated Rd, CA, ', 'Fullerton', '92835', '714-248-4468', 111.00, NULL, NULL, '', '2018-11-07 11:11:48', NULL),
(20, 'oc-132920', 1, 'cely@ocbuyback.com', '', NULL, 'Araceli', 'De Rosas', 'Shipping Kit with Prepaid Label', '8, 2560 Associated Rd, CA, ', 'Fullerton', '92835', '714-248-4468', 111.00, NULL, NULL, 'received', '2018-11-07 11:35:06', NULL),
(21, 'oc-544421', 2, 'cely@ocbuyback.com', '', NULL, 'Araceli', 'De Rosas', 'Local Drop Off (8th Nov 2018 at 10:00 AM)', '8, 2560 Associated Rd, CA, ', 'Fullerton', '92835', '714-248-4468', 111.00, NULL, NULL, '', '2018-11-07 11:44:41', NULL),
(22, 'oc-945822', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', ', , , ', '', '', '111-111-1111', 140.00, NULL, NULL, '', '2018-11-08 05:29:50', NULL),
(23, 'oc-924123', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (9th Nov 2018 at 05:00 PM)', ', , , ', '', '', '111-111-1111', 222.00, NULL, NULL, '', '2018-11-08 05:50:49', NULL),
(24, 'oc-785124', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (9th Nov 2018 at 05:00 PM)', ', , , ', '', '', '111-111-1111', 800.00, NULL, NULL, '', '2018-11-08 07:41:48', NULL),
(25, 'oc-548425', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '2560, Associated Road, CA, ', 'Fullerton', '92835', '111-111-1111', 444.00, NULL, NULL, '', '2018-11-08 07:44:05', NULL),
(26, 'oc-683026', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Local Drop Off (13th Nov 2018 at 04:00 PM)', ', , , ', '', '', '111-111-1111', 140.00, NULL, NULL, '', '2018-11-12 02:06:46', NULL),
(27, 'oc-577227', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '575, Madison Avenue, NY, ', 'New York', '10022', '111-111-1111', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/e82114065f1e41e7afac9520ee22e4cc.png', 'https://track.easypost.com/djE6dHJrXzVhMjg5YzU5NmU1ZTRmMGFiZjFjMGIyYWY1NjZhNzEz', '', '2018-11-12 02:07:47', NULL),
(28, 'oc-825928', 1, 'marley@gmailcom', '', NULL, 'marley', 'dsouza', 'Shipping Kit with Prepaid Label', '12344567, california, CA, ', 'San Francisco', '12345', '222-888-9999', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/ca0904f9dad541d89ad88d23dd5608cf.png', 'https://track.easypost.com/djE6dHJrXzJiMWJlZjY3YzM2YTRhOWU4Njc3NDM0ODZhNjc1N2Ni', '', '2018-11-12 05:21:55', NULL),
(29, 'oc-823529', 1, 'robert@yopmail.com', '', NULL, 'robert', 'bravo', 'Prepaid Label', 'dfffff, ffffffffffffffff, CA, ', 'San Francisco', '12345', '666-777-8888', 122.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/5c6bed5f46dc4e549b22caa0992bb604.png', 'https://track.easypost.com/djE6dHJrX2UzOTRkN2U0MTFkYTRhZTRiMWMxNzY1MDJmZmNjYTk5', '', '2018-11-12 05:35:07', NULL),
(30, 'oc-322030', 1, 'robert@yopmail.com', '', NULL, 'robert', 'bravo', 'Prepaid Label', 'dfffff, ffffffffffffffff, CA, ', 'San Francisco', '12345', '666-777-8888', 233.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/53295bb292c244468332e564041f32d6.png', 'https://track.easypost.com/djE6dHJrXzE0Y2Y0OWEyNzhiMzQwY2E4OGExYmNiNjQ2MDRjMDMz', '', '2018-11-12 05:37:33', NULL),
(31, 'oc-124831', 1, 'marley@gmailcom', '', NULL, 'marley', 'dsouza', 'Shipping Kit with Prepaid Label', '12344567, california, CA, ', 'San Francisco', '12345', '222-888-9999', 362.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/26eff3d6000844ad88c5279e35673977.png', 'https://track.easypost.com/djE6dHJrX2E2MzVhOTg4ZGEwNTRkNTM4OTQyODQzMWFkNTVhZGJm', '', '2018-11-12 05:47:31', NULL),
(32, 'oc-917532', 1, 'marley@gmailcom', '', NULL, 'marley', 'dsouza', 'Shipping Kit with Prepaid Label', '12344567, california, CA, ', 'San Francisco', '12345', '222-888-9999', 122.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/88a73760f7c845dbb2be5acb01cb4e64.png', 'https://track.easypost.com/djE6dHJrXzNhMDU1ZWEyY2VjYzQzZDQ5YjEzMjY4NzIzYmM1NjU4', '', '2018-11-12 05:58:12', NULL),
(33, 'oc-886033', 1, 'marley@gmailcom', '', NULL, 'marley', 'dsouza', 'Shipping Kit with Prepaid Label', '12344567, california, CA, ', 'San Francisco', '12345', '222-888-9999', 122.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/5743a76ddeb348f0b260e5dfbeaa0c6e.png', 'https://track.easypost.com/djE6dHJrXzc5ZjNlMTRkMDlhZTRhZmE4ZjdjNTk2YTY5YzliNTU4', '', '2018-11-12 06:00:50', NULL),
(34, 'oc-475134', 1, 'robert@yopmail.com', '', NULL, 'robert', 'bravo', 'Prepaid Label', 'dfffff, ffffffffffffffff, CA, ', 'San Francisco', '12345', '666-777-8888', 646.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/1c9974828a444df98265f69d45f0e175.png', 'https://track.easypost.com/djE6dHJrXzYyMmEzNmE1ZTU5MTRjYTE4MDczOGE4MzUyNmE2Zjc5', 'received', '2018-11-12 06:16:53', NULL),
(35, 'oc-513635', 1, 'robert@yopmail.com', '', NULL, 'robert', 'bravo', 'Prepaid Label', 'dfffff, ffffffffffffffff, CA, ', 'San Francisco', '12345', '666-777-8888', 111.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181112/27adfd69a0864c3dadbea8af229f92b7.png', 'https://track.easypost.com/djE6dHJrXzg5NTY4MTUzMDQ2ODQxNjJiZmQ0MmI0NDhiN2EwNDM2', '', '2018-11-12 06:33:46', NULL),
(36, 'oc-517336', 1, 'cathysara@yopmail.com', '', NULL, 'Cathy', 'Sara', 'Local Drop Off (14th Nov 2018 at 03:00 PM)', ', , , ', '', '', '123-456-7890', 140.00, NULL, NULL, '', '2018-11-13 04:41:56', NULL),
(37, 'oc-780837', 1, 'alanwalker@yopmail.com', '', NULL, 'Alex', 'Jason', 'Shipping Kit with Prepaid Label', '465, Massachusetts Avenue, MA, ', 'Lexington', '02420', '123-456-7890', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181113/b4db447284ec42a6a8dc22540d6d30f1.png', 'https://track.easypost.com/djE6dHJrXzI5YTBkMWViMTFjZDRjMjZhNDVkYTAyNjJjYzkyODBh', '', '2018-11-13 05:14:16', NULL),
(38, 'oc-420938', 2, 'galeanohenry12@yahoo.com', '', NULL, 'Henry', 'Galeano', 'Local Drop Off (14th Nov 2018 at 10:00 AM)', ', , , ', '', '', '714-770-7883', 140.00, NULL, NULL, '', '2018-11-13 11:54:33', NULL),
(39, 'oc-552439', 2, 'galeanohenry12@yahoo.com', '', NULL, 'Henry', 'Galeano', 'Prepaid Label', '126, Viking Avenue, CA, ', 'Brea', '92821', '714-770-7883', 222.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181113/db012e1355324fa89bc11b126ba9576f.png', 'https://track.easypost.com/djE6dHJrX2IxMmEyYzI1NjlkODRlMWU5ZTEzNmI3YmNmNTRkY2Iw', '', '2018-11-13 11:56:42', NULL),
(40, 'oc-180840', 1, 'cely@ocbuyback.com', '', NULL, 'Araceli', 'De Rosas', 'Local Drop Off (14th Nov 2018 at 9:00 AM)', ', , , ', '', '', '714-248-4468', 111.00, NULL, NULL, '', '2018-11-13 12:40:05', NULL),
(41, 'oc-847541', 2, 'cely714@gmail.com', '', NULL, 'Araceli', 'De Rosas', 'Prepaid Label', '8, Associated Road, CA, ', 'Fullerton', '92835', '714-248-4468', 111.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181113/278778217c2d470fac93526f2152ca32.png', 'https://track.easypost.com/djE6dHJrX2VhOWY4ZTk2YzUzYjQ5NWFhZDExNmU1NjE3NWYwOTEx', '', '2018-11-13 13:00:12', NULL),
(42, 'oc-913742', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '5773 Apt 657, Poppy Tree Lane, GA, ', 'Tucker', '30084', '817-370-5630', 200.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181114/d301dda146f546ecb0c2af33bf0037e2.png', 'https://track.easypost.com/djE6dHJrXzBlY2ZkMWU0OTMyMjQ1OTRhYjU0MDg2Y2NlYTI0OGI4', '', '2018-11-14 00:57:37', NULL),
(43, 'oc-431943', 1, 'qmerchant@yopmail.com', '', NULL, 'Aaron', 'Rudy', 'Prepaid Label', '5773 APT 567, Poppy Tree Lane, GA, ', 'Tucker', '30084', '801-391-8126', 40.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181114/c94ed6a831ca4eaabbbe295f182c3ec9.png', 'https://track.easypost.com/djE6dHJrX2Y5MTdmMDI5MjAyYzRhZWJiMDI5MGViMGQ1YmU0MDE2', '', '2018-11-14 01:51:16', NULL),
(44, 'oc-363044', 2, 'cely@ocbuyback.com', '', NULL, 'celi', 'De Rosas', 'Prepaid Label', '8, Associated Road, CA, ', 'Fullerton', '92835', '714-248-4468', 0.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181114/9bcc7981c85a47b58d4227f7bc0415b4.png', 'https://track.easypost.com/djE6dHJrXzgwODlkZjZmMGU4ZTRlN2ViY2M4Y2VmYzZkZGFjZDcy', 'received', '2018-11-14 11:46:47', NULL),
(45, 'oc-895045', 1, 'nick.norris@jxcreations.com', '', NULL, 'Nick', 'Norris', 'Prepaid Label', '2301, abc, cc, kk, ', 'Houston', '12345', '111-111-1111', 111.00, NULL, NULL, '', '2018-11-15 06:25:25', NULL),
(46, 'oc-380646', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '67 Apt 32, Poppy Tree Lane123, GA, ', 'Tucker', '30084', '817-370-5630', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/c38680fe5c6a4ec3adfe9b7d3d493c85.png', 'https://track.easypost.com/djE6dHJrXzA2YzQ2NGRhN2E0ZDQ4MWQ5NzJhOGRlZTIwMmVhNGJj', '', '2018-11-15 06:28:10', NULL),
(47, 'oc-441347', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '2301, qq, qq, NY, ', 'qq', '10016', '817-370-5630', 111.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/ba6a9bb5667646a6b5780506d1aa4ecd.png', 'https://track.easypost.com/djE6dHJrXzg1Yzk0NTc0ZWRiZDQzZWM5NWJkNmI4NGI5N2ZmMjM1', '', '2018-11-15 06:29:50', NULL),
(48, 'oc-653548', 1, 'nick.norris@jxcreations.com', '', NULL, 'Nick', 'Norris', 'Prepaid Label', '2301, gfh, kk, ', 'khi', '12345', '111-111-1111', 222.00, NULL, NULL, '', '2018-11-15 06:38:26', NULL),
(49, 'oc-786949', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '2301, qq, qq, NY, ', 'qq', '10016', '817-370-5630', 222.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/22eb489a5b5746cba26acc2d1eca51d4.png', 'https://track.easypost.com/djE6dHJrXzNlZGY0ZDc3YmE5MjQzMzY4NjgzOTllNzViNDk2MTAy', '', '2018-11-15 06:40:48', NULL),
(50, 'oc-665250', 1, 'nick.norris@jxcreations.com', '', NULL, 'Nick', 'Norris', 'Prepaid Label', '2301, gfh, kk, ', 'khi', '12345', '111-111-1111', 222.00, NULL, NULL, '', '2018-11-15 06:42:51', NULL),
(51, 'oc-141751', 1, 'nick.norris@jxcreations.com', '', NULL, 'Noman', 'Nadeem', 'Prepaid Label', 'cc, abc, cc, TX, ', 'NY', '12345', '111-111-1111', 222.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/b8055e5c75cb4b5f916edd2931bfe741.png', 'https://track.easypost.com/djE6dHJrXzYyN2FkMjVhYmQ5MTRlOTQ4YTNkZjlhZDM2OTc5MWUy', '', '2018-11-15 06:44:30', NULL),
(52, 'oc-706552', 1, 'nick.norris@jxcreations.com', '', NULL, 'Noman', 'Nadeem', 'Prepaid Label', '2301, fdwefwef, NY, ', 'fregtregt', '12345', '111-111-1111', 222.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/bc10f13d1c4342c38ef14978b17d5846.png', 'https://track.easypost.com/djE6dHJrXzA1MzllNjVhM2Q1YjQ1ZTY5MjFiMTkwYzJiYTgxNThl', '', '2018-11-15 06:49:24', NULL),
(53, 'oc-455253', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '9200, 5773 Poppy Tree Lane, Tucker, TX, ', '76123', 'TX', '817-370-5630', 122.00, NULL, NULL, '', '2018-11-15 07:07:29', NULL),
(54, 'oc-358654', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '9200 aijei 33, Poynter Streetdddddd, TX, ', 'Fort Worth', '76123', '817-370-5630', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/edc9e68debcf47d7b92a7f5697ca5605.png', 'https://track.easypost.com/djE6dHJrX2UxNjhmYjVmNjU3YjQyMjk5MTAxMTE4MjE5NWQ1MmZk', '', '2018-11-15 07:08:48', NULL),
(55, 'oc-682155', 1, 'qmerchant@yopmail.com', '', NULL, 'qq', 'qq', 'Prepaid Label', '9200 APT 56, Poynter Street 22, TX, ', 'Fort Worth', '76123', '111-111-1111', 140.00, 'https://easypost-files.s3-us-west-2.amazonaws.com/files/postage_label/20181115/1c7adbeb8f65433982d44513163a30be.png', 'https://track.easypost.com/djE6dHJrXzBlZGQ2ZmY4MWZhMzQ3NGM4MzJkYWY1OTExYzg2Yzk5', '', '2018-11-15 07:12:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `offer` float(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float(11,2) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT 'Passed=1, Failed=2,Requote=3,Seller =4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `provider`, `device`, `condition`, `storage`, `offer`, `quantity`, `subtotal`, `action`) VALUES
(1, 1, 'Sprint', 'iPhone 6S Plus', 'Mint', '32GB', 140.00, 1, 140.00, '3'),
(2, 1, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, '1'),
(3, 3, 'T-Mobile', 'iPhone 6S Plus', 'Mint', '16GB', 77.00, 1, 77.00, '1'),
(4, 4, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, '1'),
(5, 5, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 122.00, 1, 122.00, '1'),
(6, 6, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 40.00, 1, 40.00, '1'),
(7, 7, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, '1'),
(8, 8, 'Sprint', 'iPhone 6S Plus', 'Broken', '16GB', 40.00, 2, 80.00, '1'),
(9, 8, 'Sprint', 'iPhone SE', 'Broken', '256GB', 222.00, 1, 222.00, '2'),
(10, 9, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 4, 488.00, '1'),
(11, 9, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 6, 1332.00, ''),
(12, 10, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(13, 11, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(14, 12, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, '1'),
(15, 13, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, '1'),
(16, 14, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(17, 15, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 2, 280.00, ''),
(18, 15, 'Sprint', 'iPhone 6S Plus', 'Broken', '16GB', 40.00, 1, 40.00, ''),
(19, 15, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(20, 16, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 2, 244.00, ''),
(21, 17, 'Sprint', 'iPhone SE', 'Broken', '256GB', 222.00, 1, 222.00, '1'),
(22, 18, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 0.00, 1, 0.00, '4'),
(23, 19, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(24, 20, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, '1'),
(25, 21, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(26, 22, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(27, 23, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(28, 24, 'Verizon', 'iPhone 6S Plus', 'Brand New', '16GB', 200.00, 4, 800.00, ''),
(29, 25, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 4, 444.00, ''),
(30, 26, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(31, 27, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(32, 28, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(33, 29, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(34, 30, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(35, 30, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(36, 31, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(37, 31, 'Sprint', 'iPhone SE', 'Broken', '256GB', 222.00, 1, 222.00, ''),
(38, 32, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(39, 33, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(40, 34, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 3, 366.00, ''),
(41, 34, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 2, 280.00, ''),
(42, 35, 'Sprint', 'iPhone 6S Plus', 'Minor Damage', '16GB', 111.00, 1, 111.00, ''),
(43, 36, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(44, 37, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(45, 38, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(46, 39, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(47, 40, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(48, 41, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(49, 42, 'Verizon', 'iPhone 6S Plus', 'Brand New', '16GB', 200.00, 1, 200.00, ''),
(50, 43, 'Sprint', 'iPhone 6S Plus', 'Broken', '16GB', 40.00, 1, 40.00, ''),
(51, 44, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 0.00, 1, 0.00, '4'),
(52, 45, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(53, 46, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(54, 47, 'T-Mobile', 'iPhone 6S Plus', 'Broken', '16GB', 111.00, 1, 111.00, ''),
(55, 48, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(56, 49, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(57, 50, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(58, 51, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(59, 52, 'T-Mobile', 'Galaxy Note 8', 'Mint', '16GB', 222.00, 1, 222.00, ''),
(60, 53, 'Sprint', 'iPhone 6S Plus', 'Good Condition', '16GB', 122.00, 1, 122.00, ''),
(61, 54, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, ''),
(62, 55, 'Sprint', 'iPhone 6S Plus', 'Mint', '16GB', 140.00, 1, 140.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_requote`
--

CREATE TABLE `order_requote` (
  `id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `new_price` varchar(255) DEFAULT NULL,
  `condition_received` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `guid` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0= Pending, 1 =Accepted , 2 =Rejected',
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_requote`
--

INSERT INTO `order_requote` (`id`, `order_detail_id`, `reason`, `new_price`, `condition_received`, `description`, `guid`, `status`, `date_added`) VALUES
(1, 3, 'Wrong Condition', NULL, 'Good Condition', 'lm;\'', 'OC425243', 2, '2018-11-01 08:29:56'),
(3, 6, 'Wrong Condition', '40.00', 'Broken', 'lkjh', 'OC787176', 2, '2018-11-02 04:01:09'),
(4, 5, 'Wrong Condition', '122.00', 'Good Condition', 'eee', 'OC539145', 1, '2018-11-02 04:46:48'),
(5, 15, 'Wrong Condition', '40.00', 'Broken', 'gghfffffffffffffffffffff', 'OC5590715', 0, '2018-11-06 00:50:25'),
(6, 22, 'Wrong Condition', NULL, 'Brand New', 'Testing reason description.', 'OC1305022', 1, '2018-11-07 06:06:19'),
(7, 51, 'Wrong Condition', NULL, 'Mint', '', 'OC1935751', 2, '2018-11-14 12:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_seller_issue`
--

CREATE TABLE `order_seller_issue` (
  `id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `device_esn` varchar(255) DEFAULT NULL,
  `guid` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=resolved , 2=deviceback ',
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_seller_issue`
--

INSERT INTO `order_seller_issue` (`id`, `order_detail_id`, `issue`, `device_esn`, `guid`, `status`, `date_added`) VALUES
(1, 3, '3', '', 'OC506863', 1, '2018-11-02 05:33:12'),
(2, 6, '3', '', 'OC511676', 1, '2018-11-05 00:55:40'),
(3, 15, '3', NULL, 'OC4355715', 0, '2018-11-06 00:55:40'),
(4, 22, '3', NULL, 'OC1991122', 0, '2018-11-07 06:22:23'),
(5, 51, '2', NULL, 'OC7705051', 1, '2018-11-14 13:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `category_id`, `condition_id`, `model_id`, `provider_id`, `storage_id`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 1, 1, 40.00, 1, '2018-09-01 08:48:59', '2018-10-05 08:36:11'),
(2, 1, 2, 1, 1, 1, 140.00, 1, '2018-09-01 08:48:59', '2018-10-05 08:35:59'),
(3, 1, 5, 1, 2, 1, 111.00, 1, '2018-09-01 12:03:00', '2018-09-17 05:48:42'),
(4, 1, 0, 0, 0, 0, 0.00, 1, '2018-09-24 08:07:00', NULL),
(5, 1, 5, 5, 1, 5, 222.00, 1, '2018-09-24 08:09:40', '2018-09-24 08:23:38'),
(6, 1, 3, 1, 1, 1, 122.00, 1, '2018-10-27 01:18:30', NULL),
(7, 1, 4, 1, 1, 1, 111.00, 1, '2018-10-27 01:18:30', NULL),
(8, 2, 2, 4, 2, 1, 222.00, 1, '2018-10-27 01:19:47', NULL),
(9, 1, 1, 1, 5, 1, 200.00, 1, '2018-11-06 14:55:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `title`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sprint', 'sprint', '1-sprint.png', 1, '2018-09-01 08:58:24', '2018-09-03 09:19:13'),
(2, 'T-Mobile', 't-mobile', '2-t-mobile.png', 1, '2018-09-01 08:58:42', '2018-09-03 09:19:23'),
(3, 'Factory Unlocked', 'factory-unlocked', '3-factoryunlocked.png', 1, '2018-09-01 08:58:52', '2018-09-03 09:19:29'),
(4, 'AT&T', 'at-t', '4-att.png', 1, '2018-09-01 08:59:02', '2018-09-03 09:19:34'),
(5, 'Verizon', 'verizon', '5-verizon.png', 1, '2018-09-01 08:59:32', '2018-09-03 09:19:40'),
(6, 'Other', 'other', '', 1, '2018-09-01 09:05:50', '2018-09-03 09:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `ID` int(11) NOT NULL,
  `Site_Title` varchar(100) NOT NULL,
  `Admin_Title` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `Facebook` varchar(50) NOT NULL,
  `Twitter` varchar(50) NOT NULL,
  `Linkedin` varchar(50) NOT NULL,
  `Timezone` varchar(50) NOT NULL,
  `SMTP_Host` varchar(50) NOT NULL,
  `SMTP_Email` varchar(100) NOT NULL,
  `SMTP_Pass` varchar(50) NOT NULL,
  `SMTP_Port` int(4) NOT NULL,
  `LastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ID`, `Site_Title`, `Admin_Title`, `Email`, `Address`, `Phone`, `Website`, `Facebook`, `Twitter`, `Linkedin`, `Timezone`, `SMTP_Host`, `SMTP_Email`, `SMTP_Pass`, `SMTP_Port`, `LastUpdated`) VALUES
(1, 'OCBuyBack', 'OC Buyback | Admin', 'support@ocbuyback.com', '126 Viking Ave, Brea, CA, 92821', '657-286-8274', 'www.ocbuyback.com', '', '', '', 'America/Chicago', 'mail.ocbuyback.tk', 'support@ocbuyback.tk', 'Devs@321$', 465, '2017-02-23 11:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '16GB', '16gb', 1, '2018-08-30 08:49:05', '2018-09-03 09:45:20'),
(2, '32GB', '32gb', 1, '2018-08-30 08:49:13', '2018-09-03 09:45:25'),
(3, '64GB', '64gb', 1, '2018-08-30 08:49:27', '2018-09-03 09:45:30'),
(4, '128GB', '128gb', 1, '2018-08-30 08:49:45', '2018-09-03 09:45:34'),
(5, '256GB', '256gb', 1, '2018-08-30 08:49:52', '2018-09-03 09:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` text DEFAULT NULL,
  `reset_token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `user_name`, `password`, `email`, `reset_token`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ocbuyback@yopmail.com', '9wxcUf7AMNbQSaKO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_requote`
--
ALTER TABLE `order_requote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_seller_issue`
--
ALTER TABLE `order_seller_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UserName` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order_requote`
--
ALTER TABLE `order_requote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_seller_issue`
--
ALTER TABLE `order_seller_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
