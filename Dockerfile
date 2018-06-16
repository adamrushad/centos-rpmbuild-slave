FROM adamrushad/centos-jnlp-slave:6
MAINTAINER AdamRushad <2429990+adamrushad@users.noreply.github.com>

#Install
RUN yum -y install autoconf automake bison byacc cscope ctags diffstat \
  doxygen elfutils flex gcc gcc-c++ gcc-gfortran indent intltool libtool \
  patch patchutils redhat-rpm-config rcs rpm-build subversion git \
  mercurial swig systemtap make yum-utils gcc-objc gcc-objc++ nasm cmake \
  imake && yum clean all

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.name="CentOS RPMBuild Jenkins Slave" \
  org.label-schema.description="CentOS Jenkins JNLP Slave for building RPMs" \
  org.label-schema.url="https://github.com/adamrushad/centos-rpmbuild-slave/" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/adamrushad/centos-rpmbuild-slave" \
  org.label-schema.version=$VERSION \
  org.label-schema.schema-version="1.0"
