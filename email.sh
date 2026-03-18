cd /var/www/pterodactyl
git clone https://github.com/nobita329/adon.git
cd adon
cd Email




COMPOSER_ALLOW_SUPERUSER=1 composer install --no-dev --optimize-autoloader
php artisan migrate --seed --force
php artisan view:clear
php artisan cache:clear
php artisan queue:restart
chown -R www-data:www-data /var/www/pterodactyl/*
