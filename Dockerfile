FROM jlwestbps/centos72-oracle-jre8:1.0.0
MAINTAINER rafalcabaj

RUN yum install -y --enablerepo=centosplus libselinux-devel httpd epel-release && \
    yum -y install ipython python-psutil python-pycurl && \
    yum clean all

# Add install utility for AEM
ADD aemInstaller.py /aem/aemInstaller.py
