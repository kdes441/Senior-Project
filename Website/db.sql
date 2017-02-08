CREATE TABLE `UserInfo` (
	`ID` int(11) NOT NULL,
	`FirstName` varchar(25) NOT NULL,
	`LastName` varchar(25) NOT NULL,
	`Email` varchar(25) NOT NULL,
	`Username` varchar(25) NOT NULL,
	`Password` varchar(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `FriendsList_001` (
	`ID` int(11) NOT NULL,
	`FriendID` int NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `OnlineStatus` (
	`ID` int(11) NOT NULL,
	`UserID` int NOT NULL,
	`Online` bool NOT NULL,
	PRIMARY KEY (`ID`)
);

ALTER TABLE `FriendsList_001` ADD CONSTRAINT `FriendsList_001_fk0` FOREIGN KEY (`FriendID`) REFERENCES `UserInfo`(`ID`);

ALTER TABLE `OnlineStatus` ADD CONSTRAINT `OnlineStatus_fk0` FOREIGN KEY (`UserID`) REFERENCES `UserInfo`(`ID`);
