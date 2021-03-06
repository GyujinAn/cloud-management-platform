drop table cloud_member;
drop table oauth_client_details;
drop table oauth_client_token;
# drop table oauth_access_token;
# drop table oauth_refresh_token;
# drop table oauth_code;
# drop table oauth_approvals;

create table cloud_member
(
      id            bigint not null auto_increment,
      username      varchar(255),
      password      varchar(255),
      name          varchar(255),
      role          varchar(255),
      status        varchar(255),
      updatedAt     datetime,
      createdAt     datetime,
      primary key (id)
);

create table oauth_client_details
(
    client_id               VARCHAR(256) PRIMARY KEY,
    resource_ids            VARCHAR(256),
    client_secret           VARCHAR(256),
    scope                   VARCHAR(256),
    authorized_grant_types  VARCHAR(256),
    web_server_redirect_uri VARCHAR(256),
    authorities             VARCHAR(256),
    access_token_validity   INTEGER,
    refresh_token_validity  INTEGER,
    additional_information  VARCHAR(4096),
    autoapprove             VARCHAR(256)
);

create table oauth_client_token (
    token_id VARCHAR(256),
    token BLOB,
    authentication_id VARCHAR(256) PRIMARY KEY,
    user_name VARCHAR(256),
    client_id VARCHAR(256)
);

# create table oauth_access_token (
#     token_id VARCHAR(256),
#     token BLOB,
#     authentication_id VARCHAR(256) PRIMARY KEY,
#     user_name VARCHAR(256),
#     client_id VARCHAR(256),
#     authentication BLOB,
#     refresh_token VARCHAR(256)
# );
#
# create table oauth_refresh_token (
#     token_id VARCHAR(256),
#     token BLOB,
#     authentication BLOB
# );
#
# create table oauth_code (
#     code VARCHAR(256), authentication BLOB
# );
#
# create table oauth_approvals (
#     userId VARCHAR(256),
#     clientId VARCHAR(256),
#     scope VARCHAR(256),
#     status VARCHAR(10),
#     expiresAt TIMESTAMP,
#     lastModifiedAt TIMESTAMP
# );

