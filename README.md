## Steps to run project

- Run `composer update` command on root of the project folder to get `vendor` folder in project
- Import sql file in your phpmyadmin from task_management.sql file which is available on root of project
- Rename `.env.example` with `.env` and configure with database configuration.
- Import postman collection from this link to in your postman:
https://www.getpostman.com/collections/010e8f4d4ee95cf1bc65
- Run laravel project with `php artisan serve`
- Use postman collection  to test Restful apis.




