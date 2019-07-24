# Docker Build - WooGraphQL App
Pre-configured WordPress installation w/ WooGraphQL and all necessary dependencies.
*This image is hosted on [Docker Hub](https://cloud.docker.com/repository/docker/kidunot89/woographql-app)*

## Required Environment Variables.
- *DB_HOST* - Database host
- *DB_NAME* - Database name
- *DB_USER* - Database user
- *DB_PASSWORD* - Database password
- *WP_TABLE_PREFIX* - WordPress table prefix
- *WP_URL* - WordPress site url
- *ADMIN_USERNAME* - WordPress admin username
- *ADMIN_PASSWORD* - WordPress admin password
- *ADMIN_EMAIL* - WordPress admin email
## Optional Environment Variables.
- *INCLUDE_WPGRAPHIQL* - Whether or not to install and activate the [WPGraphiQL](https://github.com/wp-graphql/wp-graphiql) plugin.