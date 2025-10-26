CREATE TABLE Authors (
       author_id INT PRIMARY KEY,
       author_name VARCHAR(215) NOT NULL
);
CREATE TABLE Books (
	book-_id INT PRIMARY KEY,
	title VARCHAR(30) NOT NULL,
	author_id INT NOT NULL,
	price DOUBLE NOT NULL,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215) NOT NULL,
	email VARCHAR(215) NOT NULL,
	address TEXT
);

CREATE TABLE Orders (
	order_id INT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_details (
	orderdetailid INT PRIMARY KEY,
	order_id INT NOT NULL,
	book_id INT NOT NULL,
	quantity DOUBLE,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

