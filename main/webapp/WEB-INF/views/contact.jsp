<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Restudent</title>
    <link rel="stylesheet" href="resources/css/styles2.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
</head>
<body>
    <header>
        <h1>Contact Restudent</h1>
        <nav>
            <ul>
                <li><a href="index">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="contact">Contact</a></li>
            </ul>
            <div class="search">
                <input type="text" placeholder="Search here">
                <button class="btn">Search</button>
            </div>
            
        </nav>
    </header>

    <section class="banner contact-banner">
        <div class="banner-content">
            <h2>Get in Touch</h2>
            <p>We'd love to hear from you</p>
        </div>
    </section>

    <main>
        <div class="container">
            <section class="contact-content">
                <h2>Contact Us</h2>
                <p>If you have any questions or comments, please feel free to reach out to us. You can fill out the form below, and we will get back to you as soon as possible.</p>

                <form action="submitContactForm" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" 
                        		id="name" 
                        		name="name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" 
                        		id="email" 
                        		name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" 
                        		  name="message" 
                        		  rows="5" required>
                        </textarea>
                    </div>

                    <button type="submit" class="btn">Submit</button>
                </form>
            </section>
        </div>
    </main>

    <footer class="flex-all-center">
        <p>&copy; 2024 Restudent. All rights reserved.</p>
    </footer>
</body>
</html>
