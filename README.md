# imgi-image-hosting
imgi is free image hosting and image sharing script. imgi scrip allows you to run your very onw image hosting site and host images for web uses.

CF Image Hosting script clone script.

# Server Requirements
You will need to make sure your server meets the following requirements. Most of the web hosting providers (PHP version & others...) give the ability to change or you can ask them.

PHP >= 7.2.5<br>
BCMath PHP Extension<br>
Ctype PHP Extension<br>
Fileinfo PHP extension<br>
JSON PHP Extension<br>
Mbstring PHP Extension<br>
OpenSSL PHP Extension<br>
PDO PHP Extension<br>
Tokenizer PHP Extension<br>
XML PHP Extension<br>

# Installation
Follow the below steps to get strated.

Unzip the source package.<br>
Move files from the Public folder in the root. (Means under the public_html folder)<br>
Put the other files in separate folder.<br>
When the uploading is done you have to make sure the index.php file point to the correct folder/directory.<br>
For database settings, you have to open .env file. Which is a hidden file. Go to FTP settings to see hidden files.<br>
And then enter the required details according to your host.<br>
Before running your site you need to seed your database. Files are already provided run it or just use the SQL file to fill the database.<br>

1. CreateAdminUserSeeder, 2. QuestionSeeder, 3. SiteSeeder, 4. TermSeeder

Keep the sequence, otherwise you will face issues.

CreateAdminUserSeeder will make one admin account so you can login with Email: admin@gmail.com and Password: 12345678

QuestionSeeder will fill the basic FAQs. SiteSeeder with basic site settings and TermSeeder with term page.
