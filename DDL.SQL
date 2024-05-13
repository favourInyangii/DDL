CREATE TABLE PRODUCT(
    product_id VARCHAR2(20),
    Product_name VARCHAR2(20)  NOT NULL,
    price NUMBER,
    PRIMARY KEY(product_id)
);
CREATE TABLE CUSTOMER(
customer_id VARCHAR2(20),
customer_name VARCHAR2(20) NULL,
customer_Tel NUMBER,
PRIMARY KEY(customer_id)
);
CREATE TABLE ORDERs(
customer_id VARCHAR2(20),
product_id VARCHAR2(20),
Quantity NUMBER,
Total_amount NUMBER,
  CONSTRAINT fk_customer
FOREIGN KEY(customer_id)
 REFERENCES CUSTOMER (customer_id),
CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES PRODUCT (product_id)
),
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;
