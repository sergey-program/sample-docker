FROM valkey/valkey:8.1.0 as prod

ARG default_password
ARG user_name
ARG user_password

COPY valkey.conf /usr/local/etc/valkey/valkey.conf
COPY acl.conf /usr/local/etc/valkey/acl.conf

RUN sed -i "s/DEFAULT_PASSWORD/${default_password}/g" /usr/local/etc/valkey/valkey.conf 

RUN sed -i "s/USER_NAME/${user_name}/g" /usr/local/etc/valkey/acl.conf 
RUN sed -i "s/USER_PASSWORD/${user_password}/g" /usr/local/etc/valkey/acl.conf 

CMD [ "valkey-server", "/usr/local/etc/valkey/valkey.conf", "--aclfile", "/usr/local/etc/valkey/acl.conf" ]
