FROM docker.bluelight.limited:5000/bluelightltd/microkube-ruby-image


# ENV RUBY_VER=2.5.3
ENV RUBY_VER=ruby-2.6.0

   
# # # Installing bundler
RUN     echo "Ok, this is from the new" && \
        export && \
        export PATH="$PATH:/usr/local/rvm/bin/" && \
        export PATH="/usr/local/rvm/rubies/$RUBY_VER/bin:$PATH" && \
        rvm use $RUBY_VER && \
        export SSL_CERT_DIR=/etc/ssl/certs/ && \
        gem sources --add https://nexus.bluelight.limited/repository/gems-proxy/ && \
        gem sources --remove https://rubygems.org/ && \
        rm -f /usr/local/rvm/rubies/$RUBY_VER/bin/bundle && \
        gem install bundler



#CMD ["/bin/bash", "-c", "top"]