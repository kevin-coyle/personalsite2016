FROM drupal:8.1.0-apache

# Drush installation
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget http://files.drush.org/drush-unstable.phar
RUN chmod +x drush-unstable.phar
RUN mv drush-unstable.phar /usr/local/bin/drush

# Composer
RUN wget https://getcomposer.org/composer.phar
RUN chmod +x composer.phar
RUN mv composer.phar /usr/local/bin/composer
# Drupal Console
RUN curl https://drupalconsole.com/installer -L -o drupal.phar
RUN mv drupal.phar /usr/local/bin/drupal
RUN chmod +x /usr/local/bin/drupal

RUN apt-get install netcat -y
