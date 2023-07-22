CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(50)   NOT NULL,
    description text   NOT NULL,
    goal numeric   NOT NULL,
    pledged numeric   NOT NULL,
    outcome varchar(50)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(50)   NOT NULL,
    currency varchar(50)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(50)   NOT NULL,
    subcategory_id varchar(50)   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id,contact_id,backers_count
     )
);

CREATE TABLE Contacts (
    contact_id int   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE Catagory (
    catagory_id varchar(50)   NOT NULL,
    category varchar(50)   NOT NULL,
    CONSTRAINT pk_Catagory PRIMARY KEY (
        catagory_id
     )
);

CREATE TABLE Subcatagory (
    subcategory_id varchar(50)   NOT NULL,
    subcategory varchar(50)   NOT NULL,
    CONSTRAINT pk_Subcatagory PRIMARY KEY (
        subcategory_id
     )
);


