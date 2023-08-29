
# Real Estate API

## Table of Contents

- [Introduction](#introduction)
- [Prototype](#Project-Prototype)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)


## Introduction

The **Real Estate API** is a Laravel-based RESTful API designed to provide real estate data and services. It serves as a backend solution for managing properties, locations where they are situated, Agents, and more, making it easier for developers to create real estate applications.

## Project-Prototype
https://www.figma.com/file/4Oi7GWnAY3trISplIUsZ6a/Real-Estate-Webflow-Website-Template-(Community)?type=design&node-id=1-4466&mode=design&t=Vg8J9BJsjEi1PVdQ-0

## Features

- Create property.
- Create Location
- Create Agent
- Search and Filters: Search for properties.
- Search for Agent Properties
- Search for Property in a particular location
- Property count in a Location
- Create a Blog Post
- Search all Blog Posts and view single blog post
- Integration-Ready: Easily integrate with frontend applications.

## Getting Started

Follow these instructions to set up and run the **Real Estate API** on your local development environment.

### Prerequisites

Before you begin, make sure you have the following installed:

- [PHP](https://www.php.net/) (>= 8.0)
- [Composer](https://getcomposer.org/)
- [Laravel](https://laravel.com/) (>= 8)
- [MySQL](https://www.mysql.com/) or another database system of your choice
- [Git](https://git-scm.com/)

### Installation

1. Clone the repository:

  
   git clone https://github.com/JsmediaGP/LARAVEL-REALESTATEAPI-DOCKER.git
 

2. Navigate to the project directory:

  
   cd LARAVEL-REALESTATEAPI-DOCKER
   

3. Install the project dependencies using Composer:


   composer install


4. Create a copy of the `.env.example` file and rename it to `.env`. Update the database and other configuration settings as needed.

5. Generate a new application key:

  
   php artisan key:generate


6. Migrate the database and seed it with sample data:

 
   php artisan migrate --seed


7. Start the development server:

  
   php artisan serve
  

You can now access the API at `http://localhost:8000`.

## Usage

To use the Real Estate API in your application, you can make HTTP requests to the provided endpoints. Refer to the API Documentation for detailed information on available endpoints and their usage.

## API Documentation

Detailed API documentation can be found here https://documenter.getpostman.com/view/28132890/2s9Y5U1kUP

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow the [Contributing Guidelines](CONTRIBUTING.md).


