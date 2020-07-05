CREATE TABLE COUPON_TRADE(
	TRADE_COUPON NUMBER(10) NOT NULL,
	TRADE_BUYER VARCHAR2(50) NOT NULL,
	TRADE_DATE DATE DEFAULT SYSDATE,
	CONSTRAINT TRADE_PK PRIMARY KEY(TRADE_COUPON),
	CONSTRAINT TRADE_TO_BUYER FOREIGN KEY(TRADE_BUYER) REFERENCES HR.COUPON_USER,
	CONSTRAINT TRADE_TO_COUPON FOREIGN KEY(TRADE_COUPON) REFERENCES HR.COUPON_COUPON
);

CREATE SEQUENCE COUPON_TRADE_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999999
MINVALUE 1
NOCYCLE;
