# Problems that needs to be solve

At present, there is no similar marketplace that exist specifically for buying and selling of brand new or pre-loved shoes. There is a big community of people who are interested in shoe collection but are struggling to get the desired shoes because of unavailability. 

# 
This will cater to the following: 

* People who are having a hard time disposing their pre-loved shoes can use this application to make their listings.
* People who are looking for affordable brand new or pre-loved shoes.
* People who are searching for specific type of shoes which is unavailable at any shoe retailer.


# Links to Zhus Marketplace

Webiste Link

* Website : https://zhus-marketplace.herokuapp.com

Github Links

* (Docs, Readme, Zhus-Marketplace application) Repository : https://github.com/Kenneth-Rimorin/Zhus_Marketplace

* Zhus-Marketplace-Application Repository : https://github.com/Kenneth-Rimorin/Zhus-Marketplace-Application


# Description of Zhus Marketplace
## Purpose
The purpose of Zhus marketplace is to provide buyers and sellers with one easy, convenient destination to explore and exchange a wide variety of shoes. This marketplace platform will allow all users to buy and sell shoes based on their styles, needs, wants and price. 
## Functionality &  Features
Funtionality
* User can sign up to create a Zhus account.
* User can log-in using the account created.
* Logged-in user can create listing.
* Logged-in user will not have the authority to edit and delete created listing.
* Logged-in user can buy a listed item. 
* Other Logged-in user will not be able to edit or delete other listing.
* Image uploading Capability.

Features
* Zhus Marketplace has a working search feature.
* Zhus Marketplace handles online payment system.
* Zhuz Marketplace uses Amazon S3 for all image storage.
* Zhus Marketplace Web application is responsive to all media types
* Website provides easy navigation.
* Trendy, intuitive design and user experience.
* Uses reputable database
* Uses live google maps



# Zhuz-Marketplace Sitemap
![](./Docs/Images/Sitemap.png)  
## Screenshots
Homepage
![](./Docs/Images/Screenshots/home.jpg)

Listings
![](./Docs/Images/Screenshots/ss2.jpg)

Log-in Page
![](./Docs/Images/Screenshots/ss3.jpg)

Sign-up Page
![](./Docs/Images/Screenshots/ss4.jpg)

Creating Listing Page
![](./Docs/Images/Screenshots/list.jpg)

View Listing Page
![](./Docs/Images/Screenshots/ss6.jpg)

User Logged-in View Listing Page
![](./Docs/Images/Screenshots/ss7.jpg)

Payment Page
![](./Docs/Images/Screenshots/ss8.jpg)
## Target Audience

The target audience of Zhus Marketplace are people who are looking for a cheap brand new or used pairs of shoes. Sneaker heads or shoes enthusiast who are having a hard time looking for a pair of shoes that they wanted to collect. 

## Tech Stack

The Tech Stack that Zhus Marketplace used are the following :

Frontend

* CSS
* HTML
* Bootstrap
* JavaScript
* Photoshop

Backend

* Windows Subsystem for Linux(Ubuntu)
* Ruby on Rails Framework
* Postgresql
* Heroku
* Ruby Programming Language
* Amazon S3
* Git Version control
* Dbeaver
* Visual Studio Code

# User Stories
* As a user, i want to be able to sell my shoes online.
* As a user, i want to shop shoes online.
* As a user, i want to check and browse available shoes online.
* As a user, im want to buy a pre-loved shoes online.
* As a user, i want to buy cheaper and branded pair of shoes. 

# Wireframes / Mockup of Zhus Marketplace

Mobile Homepage Wireframe Design

![](./Docs/Images/Mockups/Wireframe_2.png)

![](./Docs/Images/Mockups/Wireframe_3.png)


## Mockup Design
Mobile view Homepage

![](./Docs/Images/Mockups/Mobile.jpg)
![](./Docs/Images/Mockups/Mobile_3.jpg)

 Desktop view Homepage
![](./Docs/Images/Mockups/Zhuz_Template.jpg)
![](./Docs/Images/Mockups/Zhuz_Template_2.jpg)
![](./Docs/Images/Mockups/Zhuz_Template_3.jpg)

# Zhus Database Structure 

## ERD of Zhus Marketplace
![](./Docs/Images/Zhus_ERD.png)

## High level components
* User - This component allows the application to sign-up and store a registered user which will be then validated by the application for authentication and authorization.If the log-in credentials matches the user table, then the user has the authority to log-in and do things within its approved scope like performing Create, Read, Update and Delete(CRUD) operation on a listing which the user will create or created, be able to buy a listing created by other user.

* Listing - This component provides the details of all the listings on the application such as name, color, size, price, description, category and brand. also, it tracks the user which created the listing. In order to allow a user to create a listing for sale, a user must register an account and sign-in in the application.

* Brands - This component refers to the listings component. All listings must have its own brand. Brand is where the buyer looks after for a shoes.

* Places - This component is used mainly for generating google maps for the application. 

* Payments - This component is where the user finalizes his/her order and proceed with the purchased. The application uses Stripe for its payment system.


## Third party services
* Devise - Devise is Ruby gem which handles authentication of the user for the application. It provides forms for sign-in, sign-up and updating user 
information.

* Ransack - Ransack is another Ruby gem that is mainly for sorting and searching a specific list or item depending on the parameters defined by the user. 

* Bootsrap - Bootstrap is a CSS framework which made the application responsive in all media types especially for mobile devices. It is more effecient for front-end web development. The application is equipped with bootstrap so it can be viewed nicely on mobile devices. 

* Amazon S3 - Amazon AWS S3 is an Amazon service which provides an online storage for all the images that will be uploaded by the user on the application.

* Google Maps API - Google Maps is a web mapping service created by Google. The 
Application uses the Google Maps API to locate the application's office location for the user's aid.

* Postgresql - Postgresql is an advanced object-relational database management software. Data sharing and retrieval are much faster and it is safer.

* Stripe - Stripe is an online payment method that the application uses.

* Heroku - Heroku is a cloud platform that serves web applications. The application is currenytl deployed and manage in Heroku.

## 

