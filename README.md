Postgress SQL Code
# CrowdFundlingETL2

--Create Contacts table
Create table contacts (
	contact_id int NOT NULL,
	name varchar(50) NOT NULL,
	surname varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	PRIMARY KEY(contact_id)
);

--Create Category table
Create table category (
	category_id varchar(10) NOT NULL,
	category varchar(50) NOT NULL,
	PRIMARY KEY (category_id)
);

-- Create Sub-Category table
Create table subcategory (
	subcategory_id varchar(10) NOT NULL,
	subcategory varchar(50) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

--Create Campaign table
Create table campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company varchar(100) NOT NULL,
	description varchar(100) NOT NULL, 
	goal float NOT NULL,
	pledge float NOT NULL,
	outcome varchar(20) NOT NULL,
	backers int NOT NULL,
	country varchar(20) NOT NULL,
	currency varchar(10) NOT NULL,
	launch_date varchar(20) NOT NULL,
	end_date varchar(20) NOT NULL,
	category_id varchar(10) NOT NULL,
	subcategory_id varchar(10) NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY(category_id) REFERENCES Category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES sub_category (subcategory_id)
);

All successfully uploaded to Prostgress but not sure how to present the data for marking?




