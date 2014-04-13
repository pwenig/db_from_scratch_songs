db_from_scratch_songs
=====================
DEVELOPMENT

run bundle install
Create a test and development database from command line: createdb -U username databasename_development
Run the migrations in the development database using sequel -m migrations $DATABASE_URL_DEVELOPMENT
Run the migrations in the test database using sequel -m migrations $DATABASE_URL_TEST
rerun rackup
running rerun will reload app when file changes are detected
Run tests using rspec.
