CREATE TABLE host (
	host_number INT PRIMARY KEY,
	host_title TEXT
);

CREATE TABLE room_type (
	room_type_id INT PRIMARY KEY,
	room_type TEXT
);

CREATE TABLE borough (
	borough_id INT PRIMARY KEY,
	borough TEXT
);

CREATE TABLE neighbourhood (
	neighbourhood_id INT PRIMARY KEY,
	neighbourhood TEXT,
	borough_id INT,
	FOREIGN KEY (borough_id) REFERENCES borough(borough_id)
);

CREATE TABLE listing (
	id INT PRIMARY KEY,
	name TEXT,
    host_number INT,
	latitude DECIMAL,
	longitude DECIMAL,
	price DECIMAL,
	minimum_nights INT,
	number_of_reviews INT,
	last_review DATE,
    reviews_per_month DECIMAL,
    availability_365 INT,
    neighbourhood_id INT,
    room_type_id INT,
    FOREIGN KEY (neighbourhood_id) REFERENCES neighbourhood(neighbourhood_id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(room_type_id),
    FOREIGN KEY (host_number) REFERENCES host(host_number)
	)
 