Technology-specific shared content for Mobile Services

* Put the mobile-specific shared files in this folder (AWSSharedContentMobile/src/mobile-shared)

* Add 'AWSSharedContentMobile = 2.0;' as a build-tools dependency in the documentation package's Config file.

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
            AWSSharedContentMobile = 2.0;
        };
    };
};
--------[ END Example Config File ]--------

* Access mobile-specific shared content files by prefixing the filename with 'file://AWSShared/mobile-shared/'
