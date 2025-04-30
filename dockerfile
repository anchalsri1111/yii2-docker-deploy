FROM yiisoftware/yii2-php:7.4-apache

# Copy the Yii2 application to the Apache web root
COPY . /app

# Expose Apache port
EXPOSE 80
