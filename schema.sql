CREATE TABLE host (
	id INT PRIMARY KEY,
	host_name_desc TEXT
);

CREATE TABLE room_type (
	id INT PRIMARY KEY,
	room_type TEXT
);

CREATE TABLE borough (
	id INT PRIMARY KEY,
	neighbourhood_group TEXT
);

CREATE TABLE neighbourhood (
	id INT PRIMARY KEY,
	neighbourhood TEXT,
	neighbourhood_group_id INT
	FOREIGN KEY (neighbourhood_group_id) REFERENCES neighbourhood_group(id)
);

CREATE TABLE listing (
	id INT PRIMARY KEY,
	listing_name TEXT,
	latitude DECIMAL,
	longitude DECIMAL,
	price DECIMAL,
	minimum_nights INT,
	number_of_reviews INT,
	last_review DATE,
    reviews_per_month DECIMAL,
    availability_365 INT,
    borough_id INT,
    neighborhood_id INT,
    room_type_id INT
    FOREIGN KEY (borough_id) REFERENCES borough(id)
    FOREIGN KEY (neighbourhood_id) REFERENCES neighbourhood(id)
    FOREIGN KEY (room_type_id) REFERENCES room_type(id)
	)
 