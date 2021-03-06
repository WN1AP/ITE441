DROP SCHEMA IF EXISTS LIBRARY;
CREATE SCHEMA IF NOT EXISTS LIBRARY;
USE LIBRARY;

CREATE TABLE IF NOT EXISTS BOOK (
          BOOK_ID    CHAR(15)     NOT NULL,
          TITLE     VARCHAR(50)     NOT NULL,
          PUBLISHER_NAME     VARCHAR(70)     NOT NULL,
          PRIMARY KEY(BOOK_ID),
          FOREIGN KEY(PUBLISHER_NAME) REFERENCES PUBLISHER(P_NAME)
);
CREATE TABLE IF NOT EXISTS BOOK_AUTHORS (
          BOOK_ID     CHAR(15)    NOT NULL,
          AUTHOR_NAME     VARCHAR(40)     NOT NULL,
          PRIMARY KEY(BOOK_ID, AUTHOR_NAME),
          FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID)
);
CREATE TABLE IF NOT EXISTS PUBLISHER (
          P_NAME     VARCHAR(70)     NOT NULL,
          P_ADDRESS     VARCHAR(300)     NOT NULL,
          P_PHONE     CHAR(10)     NOT NULL,
          PRIMARY KEY(PNAME)
);
CREATE TABLE IF NOT EXISTS BOOK_COPIES (
          BOOK_ID     CHAR(15)     NOT NULL,
          BRANCH_ID     CHAR(15)     NOT NULL,
          NO_OF_COPIES     INT,
          PRIMARY KEY(BOOK_ID, BRANCH_ID),
          FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID),
          FOREIGN KEY(BRANCH_ID) REFERENCES LIBRARY_BRANCH(BRANCH_ID)
);
CREATE TABLE IF NOT EXISTS BOOK_LOANS (
          BOOK_ID     CHAR(15)     NOT NULL,
          BRANCH_ID     CHAR(15)     NOT NULL,
          CARD_NO     CHAR(20)     NOT NULL,
          DATE_OUT     DATE     NOT NULL,
          DUE_DATE     DATE     NOT NULL,
          PRIMARY KEY(BOOK_ID, BRANCH_ID, CARD_ID),
          FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID),
          FOREIGN KEY(BRANCH_ID) REFERENCES LIBRARY_BRANCH(BRANCH_ID),
          FOREIGN KEY(CARD_NO) REFERENCES BORROWER(CARD_NO)
);
CREATE TABLE IF NOT EXISTS LIBRARY_BRANCH (
          BRANCH_ID     CHAR(15)     NOT NULL,
          BRANCH_NAME     VARCHAR(30)     NOT NULL,
          B_ADDRESS     VARCHAR(300)     NOT NULL,
          PRIMARY KEY(BRANCH_ID)
);
CREATE TABLE IF NOT EXISTS BORROWER (
           CARD_NO     CHAR(20)     NOT NULL,
           BORROWER_NAME     VARCHAR(50)     NOT NULL,
           ADDRESS     VARCHAR(300)     NOT NULL,
           PHONE     CHAR(10)     NOT NULL,
           PRIMARY KEY(CARD_NO)
);









