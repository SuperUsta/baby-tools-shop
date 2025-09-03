# E-Commerce Project For Baby Tools

## Introduction 
This is a Readme Description of our Baby-Tools-Project. The Baby-Tools-Project is an Onlineshop for Babytools and Baby Clothes.

### PREREQUISITIES

- Python 3.9
- Venv

## Table of Contents
1. [Introduction](#Introduction)
2. [Prerequisites](#Prerequisites)
3. [Quickstart](#Quickstart)  
   - [Clone GitHub Repository](#Clone-github-Respository)  
   - [Build Docker Image](#Build-Dockerimage)  
4. [Usage](#Usage)
   - [Creating-Superuser](#Creating-Superuser)  
   - [Hints](#Hints)
   - [Photos](#Photos)

## Quickstart

### Clone-github-Repository  
1. Clone the following Github Repository on your VServer. 
    ```
    git clone git@github.com:SuperUsta/baby-tools-shop.git
    ```
### Build-Dockerimage 

1. Be sure to add your ip at babyshop_app/settings.py
    ```
    ALLOWED_HOSTS = ['<your-server-ip>', 'localhost']
    ```

2.  Build your Docker Image
    ```
    docker build -t babytool-shop -f Dockerfile .  
    ```

3.  Run your Build Docker image
    ```
    docker run -it -p 5002:8025 -v babytool_data:/app babytool-shop
    ```
## Usage

### Creating-Superuser
1. Navigate in your babyshop_shop folder 
    ```
        BABY-TOOLS-SHOP/babyshop_app
    ```
2. Create a new Superuser for Django Admin Panel: 
    ```
    python manage.py createsuperuser
    ```
    Added a username and a safty password and safe. 

3. Navigate to Django Admin Panel and log in with your created superuser account. 
    ```
    <localhost>/admin
    ```

### Hints

This section will cover some hot tips when trying to interacting with this repository:

- Settings & Configuration for Django can be found in `babyshop_app/babyshop/settings.py`
- Routing: Routing information, such as available routes can be found from any `urls.py` file in `babyshop_app` and corresponding subdirectories

### Photos

##### Home Page with login

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080815407.jpg"></img>
##### Home Page with filter
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080840305.jpg"></img>
##### Product Detail Page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080934541.jpg"></img>

##### Home Page with no login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080953570.jpg"></img>


##### Register Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081016022.jpg"></img>


##### Login Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081044867.jpg"></img>
