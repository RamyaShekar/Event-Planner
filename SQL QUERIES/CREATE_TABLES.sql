SET SCHEMA EVENT_PLANNER;

DROP TABLE "EVENT_PLANNER"."ADMIN";

CREATE TABLE "EVENT_PLANNER"."ADMIN"(
		UNIQUE_ID DOUBLE,
		CONTENT NVARCHAR(1000)
		);

DROP TABLE "EVENT_PLANNER"."FINANCE";

CREATE COLUMN TABLE "EVENT_PLANNER"."FINANCE"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		COST_CENTER DOUBLE,
		INVOICE BLOB,
		PURCHASE_ORDER_NUMBER DOUBLE,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."DL_LIST";

CREATE COLUMN TABLE "EVENT_PLANNER"."DL_LIST"(
		PERSON_RESP NVARCHAR(1000),
		CATEGORY NVARCHAR(1000)	
);

DROP TABLE "EVENT_PLANNER"."GFM";

CREATE COLUMN TABLE "EVENT_PLANNER"."GFM"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		CATEGORY VARCHAR(1000),
		ITEM NVARCHAR(1000),
		QUANTITY INTEGER,
		START_DATE DATE,
		END_DATE DATE,
		START_TYM TIME,
		END_TYM TIME,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."IT";

CREATE COLUMN TABLE "EVENT_PLANNER"."IT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		ITEM NVARCHAR(1000),
		QUANTITY INTEGER,
		NUM_OF_IT_PROFESSIONAL INTEGER,
		START_DATE DATE,
		END_DATE DATE,
		START_TYM TIME,
		END_TYM TIME,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."CAFETERIA";

CREATE COLUMN TABLE "EVENT_PLANNER"."CAFETERIA"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		NUM_OF_PEOPLE INTEGER,
		START_DATE DATE,
		END_DATE DATE,
		START_TYM TIME,
		END_TYM TIME,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."ROOM_BOOKING";

CREATE COLUMN TABLE "EVENT_PLANNER"."ROOM_BOOKING"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		ROOM_NUMBER NVARCHAR(1000),
		START_DATE DATE,
		END_DATE DATE,
		START_TYM TIME,
		END_TYM TIME,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."PARKING";

CREATE COLUMN TABLE "EVENT_PLANNER"."PARKING"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		NUM_OF_PARKING_SPACES INTEGER,
		START_DATE DATE,
		END_DATE DATE,
		START_TYM TIME,
		END_TYM TIME,
		STATUS NVARCHAR(1000),
		REJECT_REASON NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."GFM_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."GFM_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."FINANCE_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."FINANCE_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."IT_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."IT_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."CAFETERIA_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."CAFETERIA_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."ROOM_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."ROOM_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);

DROP TABLE "EVENT_PLANNER"."PARKING_CHAT";

CREATE COLUMN TABLE "EVENT_PLANNER"."PARKING_CHAT"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		SENDER NVARCHAR(1000),
		RECEIVER NVARCHAR(1000),
		TIME_MSG TIMESTAMP,
		MESSAGE NVARCHAR(5000),
		FOREIGN KEY(USER_ID,EVENT_ID) REFERENCES REQUEST(USER_ID,EVENT_ID)
);


DROP TABLE "EVENT_PLANNER"."REQUEST" CASCADE;

CREATE COLUMN TABLE "EVENT_PLANNER"."REQUEST"(
		USER_ID DOUBLE,
		EVENT_ID NVARCHAR(5000),
		NUM_OF_PEOPLE INTEGER,
		FROM_DATE DATE,
		TO_DATE DATE,
		FROM_TIME TIME,
		TO_TIME TIME,
		STATUS NVARCHAR(1000),
		PRIMARY KEY(USER_ID,EVENT_ID)
);



