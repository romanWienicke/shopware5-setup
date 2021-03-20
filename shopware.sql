CREATE DATABASE shopware;
CREATE USER 'shopware'@'localhost' IDENTIFIED BY 'shopware$2020!1';
GRANT ALL ON shopware.* TO 'shopware'@'localhost' IDENTIFIED BY 'shopware$2020!1' WITH GRANT OPTION;
FLUSH PRIVILEGES;