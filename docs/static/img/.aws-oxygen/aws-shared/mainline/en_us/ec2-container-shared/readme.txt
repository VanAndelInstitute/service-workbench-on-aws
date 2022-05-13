Technology-specific shared content for Amazon EC2 Container *

* Put the mobile-specific shared files in this folder (AWSEC2ContainerSharedContent/src/ec2-container-shared)

* Add 'AWSEC2ContainerSharedContent = 2.0;' as a build-tools dependency in the documentation package's Config file.

--------[ START Example Config File ]--------
# -*-perl-*-
package.REPLACE-THIS-WITH-DOCUMENTATION-PACKAGE-NAME= {
 interfaces = (3.0);
 deploy = {
     generic = true;
 };
    build-system = happytrails;
    build-environment = {
        chroot = basic;
        network-access = blocked;
    };    
    build-tools = {
        3.0 = {
            HappyTrails = 3.2;
            JDK8 = 1.0;
            ZonBook = 4.0;
            AWSSharedContent = 2.0;
            AWSEC2ContainerSharedContent = 2.0;
        };
    };
};
--------[ END Example Config File ]--------

* Access container-specific shared content files by prefixing the filename with 'file://AWSShared/ec2-container-shared/'
