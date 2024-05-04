FROM perl

RUN cpanm Perl::LanguageServer
# RUN echo "RUNはbuild時に実行"
# # RUN yum -y install \
# #     epel-release \
# #     java-11-openjdk-devel \

# RUN yum -y install \
#      sudo
# RUN echo '%wheel        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers

# ARG UID
# ARG GID
# RUN useradd -m -u ${UID} -U web
# RUN groupmod -g ${GID} web
# RUN gpasswd -a web wheel
# USER web

# RUN keytool -genkey -alias tomcat -keyalg RSA -keystore /usr/local/tomcat/conf/localhost-rsa.jks -noprompt -storepass changeit -dname "CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown" -validity 36500
# RUN keytool -genkeypair -alias localhost -keyalg RSA -keysize 2048 -validity 36500 -ext SAN=DNS:localhost -keystore /usr/local/tomcat/conf/localhost-rsa.jks -storepass changeit -keypass changeit -dname "CN=localhost, OU=SSL_TEST, O=SSL_TEST, L=SSL_TEST, ST=SSL_TEST, C=SSL_TEST"

# keytool -export -alias tomcat -keystore /usr/local/tomcat/conf/localhost-rsa.jks -storepass changeit -file local_tomcat.cer

# CMD echo "CMDはrun時に実行(一つだけ。複数ある場合は最後のものだけが実行される。"