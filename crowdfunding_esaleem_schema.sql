
-- Create the categories table
CREATE TABLE categories (
    category_id VARCHAR(50),
    category VARCHAR(50) NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY (
		"category_id"
	)
);

-- Create the subcategories table
CREATE TABLE subcategories (
    subcategory_id VARCHAR(50),
    subcategory VARCHAR(50) NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY (
		"subcategory_id"
	)
);

-- Create the contacts table
CREATE TABLE contacts (
    contact_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
	CONSTRAINT "pk_contacts" PRIMARY KEY (
		"contact_id"
	)
);

-- Create the crowdfunding table with foreign keys
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL REFERENCES categories(category_id),
	subcategory_id VARCHAR(50) NOT NULL REFERENCES subcategories(subcategory_id)
);