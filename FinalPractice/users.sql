DROP SCHEMA IF EXISTS CONGLOMERATE;
CREATE SCHEMA IF NOT EXISTS CONGLOMERATE;
USE CONGLOMERATE;

CREATE TABLE IF NOT EXISTS USERS (
    ID    INT AUTO_INCREMENT,
    USERNAME    VARCHAR(100)    NOT NULL,
    PASSWORD    VARCHAR(200),
    FIRSTNAME    VARCHAR(200),
    UNIQUE(USERNAME),
    PRIMARY KEY(ID)
);

