CREATE DATABASE `quiz4`;
use `quiz4`;

CREATE TABLE `question` (
  `QuestionID` int NOT NULL AUTO_INCREMENT,
  `Content` varchar(45) DEFAULT NULL,
  `Category` int NOT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `answer` (
  `AnswerID` int NOT NULL AUTO_INCREMENT,
  `Content` varchar(45) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Correct` int NOT NULL,
  PRIMARY KEY (`ANSWERID`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `questionanswer` (
  `Question_Answer_ID` int NOT NULL AUTO_INCREMENT,
  `AnswerID` int NOT NULL,
  `QuestionID` int NOT NULL,
  PRIMARY KEY (`Question_Answer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1;
