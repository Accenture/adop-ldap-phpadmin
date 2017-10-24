#Supported tags and respective Dockerfile links

- [`0.1.0`, `0.1.0` (*0.1.0/Dockerfile*)](https://github.com/Accenture/adop-phpldapadmin/blob/master/Dockerfile)

# What is adop-phpldapadmin?

adop-phpldapadmin is a web application for administering Lightweight Directory Access Protocol (LDAP) servers. 

# How to use this image

The easiest for to run ldap-ltb image is as follow:
```
      $ docker run --name=<your-container-name> -dt \
        --net=<your-network-name> \
        accenture/adop-ldap-admin:VERSION
```        
after the above adop-phpldapadmin will be available at: http://ldap-phpadmin
        
## Configuration

The service configuration is externalised and stored the 'files' directory.

Runtime configuration can be provided using environment variables:

* LDAP_SERVER_NAME, the LDAP server name, i.e. "ADOP LDAP"
* LDAP_SERVER_BASE_DN, the LDAP BASE_DN
* LDAP_SERVER_BIND_ID, the LDAP admin bind ID
* LDAP_SERVER_HOST, the LDAP server host, i.e. "ldap"
* LDAP_SERVER_PORT, the LDAP server port, i.e. "389"

# License
Please view [licence information](LICENCE.md) for the software contained on this image.

#Supported Docker versions

This image is officially supported on Docker version 1.9.1.

# User feedback

## Documentation
Documentation for this image is available in the [PHP LDAP Admin page](http://phpldapadmin.sourceforge.net/wiki/index.php/Main_Page). 
Additional documentaion can be found under the [`docker-library/docs` GitHub repo](https://github.com/docker-library/docs). Be sure to familiarize yourself with the [repository's `README.md` file](https://github.com/docker-library/docs/blob/master/README.md) before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/Accenture/adop-phpldapadmin/issues).

## Contribute
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/Accenture/adop-phpldapadmin/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
