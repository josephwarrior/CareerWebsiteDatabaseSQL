-- Creating the Database and putting it into use
CREATE DATABASE TEAM4_CAREER_WEBSITE_DB
GO
USE TEAM4_CAREER_WEBSITE_DB;


---- Creating and populating the tables -----------------------------------------------------------
CREATE TABLE Users(
  UserID VARCHAR(12) PRIMARY KEY,
  FirstName VARCHAR(20),
  LastName VARCHAR(20),
  CurrentTitle VARCHAR(40),
  Location VARCHAR(60)
);

INSERT Users VALUES ('A0000001','Frank','Pearl','Business Inteligence Analyst','North America');
INSERT Users VALUES ('A0000002','Carl','Simpson','Marketing Strategist','Asia');
INSERT Users VALUES ('A0000003','Daryl','Pratt','Product Manager','Europe');
INSERT Users VALUES ('A0000004','Patrick','Thompson','Project Director','Asia');
INSERT Users VALUES ('A0000005','Maurice','Branson','Business Development Director','South Ameria');
INSERT Users VALUES ('A0000006','Sara','Williams','Software Development Engineer','North America');
INSERT Users VALUES ('A0000007','Melanie','Coutillard','Financial Risk Assessment Analyst','North America');
INSERT Users VALUES ('A0000008','John','Blackwood','Quality Assurance Planner','Africa');
INSERT Users VALUES ('A0000009','Albert','Peterson','Chain Supply Division Analyst','Central America');
INSERT Users VALUES ('A0000010','Robert','Brown','Full Stack Developer','Europe');

INSERT Users VALUES ('C0000001','Margaret','Black','HHRR Analyst','North America');
INSERT Users VALUES ('C0000002','Charles','Jackson','HHRR Analyst','North America');
INSERT Users VALUES ('C0000003','Benjamin','Newton','HHRR Analyst','North America');
INSERT Users VALUES ('C0000004','Simon','Stone','HHRR Analyst','North America');
INSERT Users VALUES ('C0000005','Steven','Watson','HHRR Analyst','North America');
INSERT Users VALUES ('C0000006','Kevin','White','HHRR Analyst','North America');
INSERT Users VALUES ('C0000007','Lenard','Hamilton','HHRR Analyst','North America');
INSERT Users VALUES ('C0000008','Angela','Clarkson','HHRR Analyst','North America');
INSERT Users VALUES ('C0000009','Martha','Davidson','HHRR Analyst','North America');
INSERT Users VALUES ('C0000010','Anthony','Hudson','HHRR Analyst','North America');


CREATE TABLE JobSeekerAccount (
  UserID VARCHAR(12) REFERENCES Users(UserID),
  Description VARCHAR(60),
  Skills VARCHAR(200)
  PRIMARY KEY(UserID),
);

INSERT JobSeekerAccount VALUES ('A0000001','Detail oriented individual','Java');
INSERT JobSeekerAccount VALUES ('A0000002','Team player','SQL');
INSERT JobSeekerAccount VALUES ('A0000003','Self-Motivated','Python');
INSERT JobSeekerAccount VALUES ('A0000004','Innovator','C#');
INSERT JobSeekerAccount VALUES ('A0000005','Goal driven','MongoDB');
INSERT JobSeekerAccount VALUES ('A0000006','Hard worker','HTML');
INSERT JobSeekerAccount VALUES ('A0000007','Honest and ethical','JavaScript');
INSERT JobSeekerAccount VALUES ('A0000008','Disciplined and punctual','CSS');
INSERT JobSeekerAccount VALUES ('A0000009','Communicator','Adobe');
INSERT JobSeekerAccount VALUES ('A0000010','Adaptable and effective learner','MSOffice');


CREATE TABLE ContactInformation (
  UserID VARCHAR(12) REFERENCES Users(UserID),
  Email VARCHAR(50),
  phoneNum VARCHAR(50),
  Address VARCHAR(50),
  PRIMARY KEY (UserID)
);

INSERT ContactInformation VALUES ('A0000001','FrankPearl@outlook.com','254 645 9585','North America');
INSERT ContactInformation VALUES ('A0000002','CarlSimpson@yahoo.com','456 582 6548','Asia');
INSERT ContactInformation VALUES ('A0000003','DarylPratt@hotmail.com','159 658 6584','Europe');
INSERT ContactInformation VALUES ('A0000004','PatrickThompson@yahoo.com','485 658 2544','Asia');
INSERT ContactInformation VALUES ('A0000005','MauriceBranson@hotmail.com','568 668 1548','South Ameria');
INSERT ContactInformation VALUES ('A0000006','SaraWilliams@outlook.com','854 865 9878','North America');
INSERT ContactInformation VALUES ('A0000007','MelanieCoutillard@yahoo.com','354 855 1548','North America');
INSERT ContactInformation VALUES ('A0000008','JohnBlackwood@hotmail.com','456 258 8549','Africa');
INSERT ContactInformation VALUES ('A0000009','AlbertPeterson@outlook.com','847 986 8569','Central America');
INSERT ContactInformation VALUES ('A0000010','RobertBrown@outlook.com','145 325 6547','Europe');

INSERT ContactInformation VALUES ('C0000001','MargaretBlack@outlook.com','555 655 8521','North America');
INSERT ContactInformation VALUES ('C0000002','CharlesJackson@yahoo.com','425 666 5221','North America');
INSERT ContactInformation VALUES ('C0000003','BenjaminNewton@hotmail.com','444 652 1548','North America');
INSERT ContactInformation VALUES ('C0000004','SimonStone@outlook.com','852 963 7452','North America');
INSERT ContactInformation VALUES ('C0000005','StevenWatson@yahoo.com','445 665 8822','North America');
INSERT ContactInformation VALUES ('C0000006','KevinWhite@hotmail.com','885 421 3577','North America');
INSERT ContactInformation VALUES ('C0000007','LenardHamilton@outlook.com','233 331 1586','North America');
INSERT ContactInformation VALUES ('C0000008','AngelaClarkson@yahoo.com','664 448 7533','North America');
INSERT ContactInformation VALUES ('C0000009','MarthaDavidson@hotmail.com','777 668 6542','North America');
INSERT ContactInformation VALUES ('C0000010','AnthonyHudson@yahoo.com','994 668 6854','North America');


CREATE TABLE JobSeekerAccount (
  UserID VARCHAR(12) REFERENCES Users(UserID),
  Description VARCHAR(60),
  Skills VARCHAR(200)
  PRIMARY KEY(UserID),
);

INSERT JobSeekerAccount VALUES ('A0000001','Detail oriented individual','Java');
INSERT JobSeekerAccount VALUES ('A0000002','Team player','SQL');
INSERT JobSeekerAccount VALUES ('A0000003','Self-Motivated','Python');
INSERT JobSeekerAccount VALUES ('A0000004','Innovator','C#');
INSERT JobSeekerAccount VALUES ('A0000005','Goal driven','MongoDB');
INSERT JobSeekerAccount VALUES ('A0000006','Hard worker','HTML');
INSERT JobSeekerAccount VALUES ('A0000007','Honest and ethical','JavaScript');
INSERT JobSeekerAccount VALUES ('A0000008','Disciplined and punctual','CSS');
INSERT JobSeekerAccount VALUES ('A0000009','Communicator','Adobe');
INSERT JobSeekerAccount VALUES ('A0000010','Adaptable and effective learner','MSOffice');


CREATE TABLE Resume (
  ResumeID VARCHAR(12),
  UserID VARCHAR(12) REFERENCES JobSeekerAccount(UserID),
  uploadDate DATE,
  PRIMARY KEY(ResumeID,UserID),
);

INSERT Resume VALUES ('RES000000001','A0000001','03/23/2008');
INSERT Resume VALUES ('RES000000002','A0000002','04/23/2008');
INSERT Resume VALUES ('RES000000003','A0000003','05/23/2008');
INSERT Resume VALUES ('RES000000004','A0000004','02/23/2008');
INSERT Resume VALUES ('RES000000005','A0000005','06/23/2008');
INSERT Resume VALUES ('RES000000006','A0000006','01/23/2008');
INSERT Resume VALUES ('RES000000007','A0000007','07/23/2008');
INSERT Resume VALUES ('RES000000008','A0000008','08/23/2008');
INSERT Resume VALUES ('RES000000009','A0000009','07/23/2008');
INSERT Resume VALUES ('RES000000010','A0000010','06/23/2008');


CREATE TABLE WorkExperience (
  WorkExpID VARCHAR(12),
  UserID VARCHAR(12) REFERENCES JobSeekerAccount(UserID),
  Title VARCHAR(30),
  CompanyName VARCHAR(40),
  Location VARCHAR(50),
  StartDate DATE,
  EndDate DATE,
  Description VARCHAR(100),
  PRIMARY KEY (WorkExpID, UserID)
);

INSERT WorkExperience VALUES ('WE000000001','A0000001','Planner','Borstrom Co','South America','02/25/1995','02/25/1997','Elaborated plans to achieve KPIs')
INSERT WorkExperience VALUES ('WE000000002','A0000002','Analyst','Quaremsi Inc','Asia','01/23/1995','01/23/1997','Introduced innovative reports to assess business health')
INSERT WorkExperience VALUES ('WE000000003','A0000003','Manager','Pertulsec Ltd','North America','12/15/1995','12/15/1997','Opened new product lines that increased profit for the company')
INSERT WorkExperience VALUES ('WE000000004','A0000004','Supervisor','Avantired Co','Central America','02/12/1995','02/12/1997','Created new approach to staff motivation that increased productivity in 20%')
INSERT WorkExperience VALUES ('WE000000005','A0000005','Director','Zarth Ltd','Africa','04/20/1995','04/20/1997','Adopted diverse cost saving methods that led to 10% saving in resources')
INSERT WorkExperience VALUES ('WE000000006','A0000006','Chief','Yental Inc','Europe','07/19/1995','07/19/1997','Changed the management structure increasing flexibility and productivity')
INSERT WorkExperience VALUES ('WE000000007','A0000007','Analyst','Kettel Co','South America','01/09/1995','01/09/1997','Generated plans that caused positive remarks from main customers')
INSERT WorkExperience VALUES ('WE000000008','A0000008','Planner','Sortem Analytics Ltd','Asia','05/02/1995','05/02/1997','Implemented new planning techniques that reduced waste in 15%')
INSERT WorkExperience VALUES ('WE000000009','A0000009','Director','Wortek Co','North America','03/01/1995','03/01/1997','Renovated the information system infrastructure increasing productivity in 25%')
INSERT WorkExperience VALUES ('WE000000010','A0000010','Manager','Omperuz Inc','South America','02/18/1995','02/18/1997','Increased sales agent positions that ultimately caused an increase in profit of 15%')

CREATE TABLE Education (
  EducationID VARCHAR(12),
  UserID VARCHAR(12) REFERENCES JobSeekerAccount(UserID),
  Degree VARCHAR(50),
  Major VARCHAR(50),
  Institution VARCHAR(50),
  StartDate DATE,
  EndDate DATE,
  PRIMARY KEY (EducationID, UserID)
);

INSERT Education VALUES ('ED000000001','A0000001','Master','Data Science','Northeastern University','01/07/1990','06/04/1991')
INSERT Education VALUES ('ED000000002','A0000002','Master','Information Systems Management','Boston University','01/07/1991','06/04/1992')
INSERT Education VALUES ('ED000000003','A0000003','Master','Information Systems Management','University of Notre Damme','01/07/1990','06/04/1991')
INSERT Education VALUES ('ED000000004','A0000004','Master','Data Science','University of South Florida','01/07/1991','06/04/1992')
INSERT Education VALUES ('ED000000005','A0000005','Master','Data Science','University of Texas at Austin','01/07/1990','06/04/1991')
INSERT Education VALUES ('ED000000006','A0000006','Master','Information Systems Management','University of Washington','01/07/1991','06/04/1992')
INSERT Education VALUES ('ED000000007','A0000007','Master','Information Systems Management','Northwestern University','01/07/1990','06/04/1991')
INSERT Education VALUES ('ED000000008','A0000008','Master','Information Systems Management','University of New York','01/07/1991','06/04/1992')
INSERT Education VALUES ('ED000000009','A0000009','Master','Data Science','Princeton University','01/07/1990','06/04/1991')
INSERT Education VALUES ('ED000000010','A0000010','Master','Data Science','University of Massachussets','01/07/1991','06/04/1992')

INSERT Education VALUES ('ED000000011','A0000001','Bachelor','Data Science','Northeastern University','01/15/1985','11/20/1989')
INSERT Education VALUES ('ED000000012','A0000002','Bachelor','Data Science','Boston University','01/07/1991','06/04/1992')
INSERT Education VALUES ('ED000000013','A0000003','Bachelor','Data Science','University of Notre Damme','01/17/1985','11/26/1989')


CREATE TABLE Company (
  CompanyID VARCHAR(12) PRIMARY KEY,
  CompanyName VARCHAR(40),
  HeadquaterLocation VARCHAR(50),
  FoundedDate DATE,
  FoundedTime_Years AS DATEDIFF(hour,FoundedDate,GETDATE())/8766,     --<--- Using 'age type' column
  Revenue MONEY,
  EmployeeSize INT
);

INSERT INTO Company (CompanyID,CompanyName,HeadquaterLocation,FoundedDate,Revenue,EmployeeSize) 
             VALUES  ('COMP0000001','Preston Inc','Seattle','01/08/1980',50987000,80)
                    ,('COMP0000002','Brikal Co','Houston','11/11/1978',30987000,20)
                    ,('COMP0000003','Artunsi Inc','Miami','09/15/1985',20987000,40)
					,('COMP0000004','Zertukel Ltd','Los Angeles','02/16/1989',60987000,100)
					,('COMP0000005','Konstanti Inc','Chicago','07/21/1983',50987000,40)
					,('COMP0000006','Terrenio Co','New York','05/19/1984',70987000,50)
					,('COMP0000007','Lottene Inc','San Francisco','01/18/1982',80987000,80)
					,('COMP0000008','Kobalta Ltd','Denver','02/22/1981',90987000,60)
					,('COMP0000009','Honne Inc','New Orleans','07/11/1988',30987000,80)
					,('COMP0000010','Dulke Co','Atlanta','04/04/1987',70987000,60)

					
CREATE TABLE HRAccount (
  UserID VARCHAR(12) REFERENCES Users(UserID),
  CompanyID VARCHAR(12) REFERENCES Company(CompanyID),
  PRIMARY KEY (UserID, CompanyID)
);

INSERT HRAccount VALUES ('C0000001','COMP0000001')
INSERT HRAccount VALUES ('C0000002','COMP0000002')
INSERT HRAccount VALUES ('C0000003','COMP0000003')
INSERT HRAccount VALUES ('C0000004','COMP0000004')
INSERT HRAccount VALUES ('C0000005','COMP0000005')
INSERT HRAccount VALUES ('C0000006','COMP0000006')
INSERT HRAccount VALUES ('C0000007','COMP0000007')
INSERT HRAccount VALUES ('C0000008','COMP0000008')
INSERT HRAccount VALUES ('C0000009','COMP0000009')
INSERT HRAccount VALUES ('C0000010','COMP0000010')


CREATE TABLE JobPosting (
  PostingID VARCHAR(14) PRIMARY KEY,
  Title VARCHAR(50),
  JobType VARCHAR(50),
  Location VARCHAR(50),
  DatePosted DATE,
  ApplyDeadDate DATE,
  CompanyID VARCHAR(12) REFERENCES Company(CompanyID),
  CompanyName VARCHAR(40),
  Salary MONEY,
  Duration VARCHAR(12)
);

INSERT JobPosting VALUES ('POST000000001','Software Developer','Full Time','North America','11/05/2007','12/30/2008','COMP0000001','Preston Inc',90000,'Temporary')
INSERT JobPosting VALUES ('POST000000002','Software Developer','Full Time','North America','11/05/2007','12/30/2008','COMP0000002','Brikal Co',100000,'Temporary')
INSERT JobPosting VALUES ('POST000000003','Software Developer','Part Time','North America','11/05/2007','12/30/2008','COMP0000003','Artunsi Inc',90000,'Permanent')
INSERT JobPosting VALUES ('POST000000004','Data Engineer','Part Time','North America','11/05/2007','12/30/2008','COMP0000004','Zertukel Ltd',90000,'Temporary')
INSERT JobPosting VALUES ('POST000000005','Software Developer','Full Time','North America','11/05/2007','12/30/2008','COMP0000005','Konstanti Inc',100000,'Permanent')
INSERT JobPosting VALUES ('POST000000006','Data Engineer','Full Time','North America','11/05/2007','12/30/2008','COMP0000006','Terrenio Co',90000,'Temporary')
INSERT JobPosting VALUES ('POST000000007','Data Engineer','Part Time','North America','11/05/2007','12/30/2008','COMP0000007','Lottene Inc',100000,'Temporary')
INSERT JobPosting VALUES ('POST000000008','Software Developer','Part Time','North America','11/05/2007','12/30/2008','COMP0000008','Kobalta Ltd',90000,'Permanent')
INSERT JobPosting VALUES ('POST000000009','Data Engineer','Full Time','North America','11/05/2007','12/30/2008','COMP0000009','Honne Inc',100000,'Temporary')
INSERT JobPosting VALUES ('POST000000010','Software Developer','Part Time','North America','11/05/2007','12/30/2008','COMP0000010','Dulke Co',90000,'Permanent')



CREATE TABLE Application (
  UserID VARCHAR(12) REFERENCES JobSeekerAccount(UserID),
  PostingID VARCHAR(14) REFERENCES JobPosting(PostingID),
  ApplicationDate DATE,
  ApplicationStatus VARCHAR(20),
  PRIMARY KEY (UserID, PostingID)
);

INSERT Application VALUES ('A0000001','POST000000001','03/13/2008','Submitted')
INSERT Application VALUES ('A0000002','POST000000002','04/13/2008','Finished')
INSERT Application VALUES ('A0000003','POST000000003','05/13/2008','Finished')
INSERT Application VALUES ('A0000004','POST000000004','02/13/2008','In Documentation')
INSERT Application VALUES ('A0000005','POST000000005','06/13/2008','Finished')
INSERT Application VALUES ('A0000006','POST000000006','01/13/2008','Submitted')
INSERT Application VALUES ('A0000007','POST000000007','07/13/2008','Submitted')
INSERT Application VALUES ('A0000008','POST000000008','08/13/2008','In Documentation')
INSERT Application VALUES ('A0000009','POST000000009','07/13/2008','Finished')

INSERT Application VALUES ('A0000010','POST000000010','06/13/2008','Submitted')   -- this user (A0000010) applied to
INSERT Application VALUES ('A0000010','POST000000009','06/13/2008','Submitted')   -- two postings



CREATE TABLE Salary (
  CompanyID VARCHAR(12) REFERENCES Company(CompanyID),
  JobTitle VARCHAR(50),
  LowRange MONEY,
  HighRange MONEY,
  PRIMARY KEY (CompanyID,JobTitle),
);

INSERT Salary VALUES ('COMP0000001','Software Developer',80000,120000)
INSERT Salary VALUES ('COMP0000002','Software Developer',90000,110000)
INSERT Salary VALUES ('COMP0000003','Software Developer',95000,120000)
INSERT Salary VALUES ('COMP0000004','Data Engineer',100000,115000)
INSERT Salary VALUES ('COMP0000005','Software Developer',85000,120000)
INSERT Salary VALUES ('COMP0000006','Data Engineer',80000,125000)
INSERT Salary VALUES ('COMP0000007','Data Engineer',90000,100000)
INSERT Salary VALUES ('COMP0000008','Software Developer',95000,120000)
INSERT Salary VALUES ('COMP0000009','Data Engineer',80000,11000)
INSERT Salary VALUES ('COMP0000010','Software Developer',90000,130000)



CREATE TABLE Review (
  ReviewID VARCHAR(12) UNIQUE,
  CompanyID VARCHAR(12) REFERENCES Company(CompanyID),
  UserID VARCHAR(12) REFERENCES Users(UserID),
  UserRole VARCHAR(50),
  OverallComments VARCHAR(50),
  PRIMARY KEY (ReviewID,CompanyID, UserID),
);

INSERT Review VALUES ('REV0000001','COMP0000001','A0000003','Applicant','Excellent company')
INSERT Review VALUES ('REV0000002','COMP0000002','A0000003','Applicant','Good products')
INSERT Review VALUES ('REV0000003','COMP0000003','A0000003','Applicant','Innovative business')
INSERT Review VALUES ('REV0000004','COMP0000004','A0000003','Applicant','Widely known and trusted')
INSERT Review VALUES ('REV0000005','COMP0000005','C0000005','Staff','Nice Place to Work at')
INSERT Review VALUES ('REV0000006','COMP0000006','A0000005','Applicant','Well paid employees')
INSERT Review VALUES ('REV0000007','COMP0000007','A0000005','Applicant','Great location')
INSERT Review VALUES ('REV0000008','COMP0000008','C0000008','Staff','Friendly work environment')
INSERT Review VALUES ('REV0000009','COMP0000009','A0000005','Applicant','Outstanding facilities')
INSERT Review VALUES ('REV0000010','COMP0000010','A0000005','Applicant','Interesting growth opportunities')


CREATE TABLE Ratings (
  RatingsID VARCHAR(14) PRIMARY KEY,
  ReviewID VARCHAR(12) REFERENCES Review(ReviewID),
  CompAndBenefitsRate INT,
  CultureAndValueRate INT,
  CareerOppertunityRate INT,
  WorkLifeBalanceRate INT,
  SeniorManagementRate INT,
);

INSERT Ratings VALUES ('RATI000000001','REV0000001',5,4,5,3,5)
INSERT Ratings VALUES ('RATI000000002','REV0000002',4,5,3,5,4)
INSERT Ratings VALUES ('RATI000000003','REV0000003',3,4,3,5,4)
INSERT Ratings VALUES ('RATI000000004','REV0000004',3,5,4,3,5)
INSERT Ratings VALUES ('RATI000000005','REV0000005',5,5,4,4,3)
INSERT Ratings VALUES ('RATI000000006','REV0000006',5,4,3,4,3)
INSERT Ratings VALUES ('RATI000000007','REV0000007',4,5,4,3,5)
INSERT Ratings VALUES ('RATI000000008','REV0000008',5,3,4,4,4)
INSERT Ratings VALUES ('RATI000000009','REV0000009',3,3,5,4,4)
INSERT Ratings VALUES ('RATI000000010','REV0000010',4,4,3,3,3)



---------------- COMPUTED COLUMN BASED ON A FUNCTION ------------------------------------
---------- Creating function that will be used to add a computed column to the 'Company' table--
---------- This new column will indicate the quantity of applicants per company ----------------   
	 CREATE FUNCTION fn_CalculateQtyOfApplicants(@CompanyID VARCHAR(12))
	 RETURNS INT
	 AS
	 BEGIN
	      DECLARE @QtyOfApplicants INT=
		          (
				    SELECT COUNT(UserID)
					FROM Company c
					LEFT JOIN JobPosting jp
					ON c.CompanyID=jp.CompanyID
					JOIN Application a
					ON jp.PostingID=a.PostingID
					WHERE c.CompanyID=@CompanyID
				  )
				   SET @QtyOfApplicants= ISNULL(@QtyOfApplicants,0);
		  RETURN @QtyOfApplicants
	 END
	 GO

	 ALTER TABLE Company
	 ADD QtyOfApplicants AS dbo.fn_CalculateQtyOfApplicants(CompanyID)



SELECT * FROM Company


-----------------------------TABLE LEVEL CONSTRAINT-----------------------------------------------
-- Create a function to check if the Job Posting deadline has passed.
-- the function will return a negative number if the deadline has passed and zero or more if it is not
-- Through a constraint the 'Application table' will not allow to register if the deadline has passed
CREATE FUNCTION CheckPostingDeadLine (@ApplicationDate DATE)
RETURNS INT
AS
BEGIN
   DECLARE @RemainingDays INT=0;
   SELECT @RemainingDays = DATEDIFF(hour,@ApplicationDate,ApplyDeadDate)/24 
          FROM JobPosting
   RETURN @RemainingDays;
END;

ALTER TABLE Application ADD CONSTRAINT EnforceDeadline CHECK (dbo.CheckPostingDeadLine(ApplicationDate) >= 0);

-- Now some data to test the operation of the constraint. The deadline for posting POST000000006 
-- is 12/30/2008:
INSERT Application VALUES ('A0000001','POST000000006','01/01/2009','Submitted')  --<--- this should not be allowed
INSERT Application VALUES ('A0000001','POST000000006','12/10/2008','Submitted')  --<--- this should be allowed



-- Creation and display of VIEW 1-----------

CREATE VIEW vwApplicantsPerCompany
AS
SELECT c.CompanyName, (u.FirstName + ' ' + u.LastName) AS FullName, a.ApplicationDate
FROM Application a
JOIN JobPosting jp
ON a.PostingID=jp.PostingID
JOIN Company c
ON jp.CompanyID=c.CompanyID
JOIN Users u
ON a.UserID=u.UserID

GO

SELECT * FROM vwApplicantsPerCompany


-- Creation and display of VIEW showing the emails and phones of HR staff for each company-----------

CREATE VIEW vwHRContactInfo
AS
SELECT c.CompanyName, (u.FirstName + ' ' + u.LastName) AS Recruiter_FullName, ci.Email, ci.phoneNum
FROM HRAccount hra
JOIN Company c
ON hra.CompanyID=c.CompanyID
JOIN Users u
ON hra.UserID=u.UserID
JOIN ContactInformation ci
ON hra.UserID=ci.UserID

GO

SELECT * FROM vwHRContactInfo


-- Creation and display of VIEW 2 showing info on the applicant per each company-----------

CREATE VIEW vwApplicantsPerCompany
AS
SELECT c.CompanyName, (u.FirstName + ' ' + u.LastName) AS FullName, a.ApplicationDate
FROM Application a
JOIN JobPosting jp
ON a.PostingID=jp.PostingID
JOIN Company c
ON jp.CompanyID=c.CompanyID
JOIN Users u
ON a.UserID=u.UserID

GO

SELECT * FROM vwApplicantsPerCompany


/*
--Scripts available for database cleaning:

DROP VIEW vwHRContactInfo
DROP VIEW vwApplicantsPerCompany

DROP TABLE Resume
DROP TABLE Application
DROP TABLE WorkExperience
DROP TABLE Subscription
DROP TABLE Salary
DROP TABLE Ratings
DROP TABLE Review
DROP TABLE ContactInformation
DROP TABLE JobPosting
DROP TABLE HRAccount
DROP TABLE Education
DROP TABLE JobSeekerAccount
DROP TABLE Company
DROP TABLE Users
*/




