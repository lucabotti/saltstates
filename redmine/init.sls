apache:
  pkg:
    - installed
    - name: httpd
  service:
    - name: httpd
    - running
    - require:
      - pkg: httpd

#yum install make gcc gcc-c++ zlib-devel ruby-devel rubygems ruby-libs apr-devel apr-util-devel httpd-devel mysql-devel mysql-server automake autoconf ImageMagick ImageMagick-devel curl-devel
make:
  pkg.installed
gcc:
  pkg.installed
zlib-devel:
  pkg.installed
ruby-devel:  
  pkg.installed
ruby:
  pkg.installed
rubygems:
  pkg.installed
ruby-libs:
  pkg.installed
apr-devel:
  pkg.installed
apr-util-devel:
  pkg.installed
httpd-devel:
  pkg.installed
mysql-devel:
  pkg.installed
mysql-server:
  pkg.installed
automake:
  pkg.installed
autoconf:
  pkg.installed
ImageMagick:
  pkg.installed
ImageMagick-devel:
  pkg.installed
curl-devel:
  pkg.installed




