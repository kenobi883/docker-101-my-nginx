# Docker 101 Custom Nginx Image

The image installs nginx via a package manager, configures a default site, and copies a custom index page into the 
public web directory. Build the image by running the following in this directory:

    docker build -t my-nginx .

You can now start a container from the image by running:

    docker run -d -p 80:80 --rm --name my-nginx my-nginx
