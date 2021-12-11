CREATE TABLE Info (
	info SERIAL,
	url varchar(50) NOT NULL,
    vertical_segment varchar(20) NOT NULL,
	PRIMARY KEY (info)
);

CREATE TABLE Specifications (
	processor_id SERIAL,
	cores SERIAL,
    threads SERIAL
    base_frequency SERIAL
	PRIMARY KEY (period_id)
);

CREATE TABLE Processors (
	product_line VARCHAR(40),
	name VARCHAR(40) NOT NULL,
	launch_date VARCHAR(10) NOT NULL,
	info INT NOT NULL,
	processor_id INT NOT NULL,
	PRIMARY KEY (processor_id),
	CONSTRAINT FK_Specifications
		FOREIGN KEY (processor_id)
			REFERENCES Specifications (processor_id) ON DELETE CASCADE,
	CONSTRAINT FK_info
		FOREIGN KEY (info)
	  		REFERENCES info (info) ON DELETE CASCADE
);
