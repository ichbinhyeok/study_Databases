CREATE TABLE Writers
(
    Writer_ID   VARCHAR(20) NOT NULL,
    Writer_Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (Writer_ID)
);

CREATE TABLE Notice
(
    Notice_ID    VARCHAR(20)  NOT NULL,
    Writer_ID    VARCHAR(20)  NOT NULL,
    Notice_Title VARCHAR(100) NOT NULL,
    PRIMARY KEY (Notice_ID),
    FOREIGN KEY (Writer_ID) REFERENCES Writers (Writer_ID)
);


CREATE TABLE Visitors
(
    Visitor_ID   VARCHAR(20) NOT NULL,
    Notice_ID    VARCHAR(20) NOT NULL,
    Writer_ID    VARCHAR(20) NOT NULL,
    Visitor_Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (Visitor_ID),
    FOREIGN KEY (Notice_ID) REFERENCES Notice (Notice_ID),
    FOREIGN KEY (Writer_ID) REFERENCES Writers (Writer_ID)
);
