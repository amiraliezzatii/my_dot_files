# my_dot_files
#### Standalone

These instructions should work on any distribution where `apt-get` has been
used to install Apache.

1. Open up a terminal and type the following command. Enter your password when
   prompted.

    ```shell
    sudo a2enmod setenvif headers deflate filter expires rewrite include
    ```

2. Restart apache by using the following command, so the new configuration takes
   effect.

    ```shell
    sudo /etc/init.d/apache2 restart
    ```
