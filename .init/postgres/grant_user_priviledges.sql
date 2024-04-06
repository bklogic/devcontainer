-- grants are done after all objects are created
\c pagila;
GRANT CREATE, USAGE ON SCHEMA public TO sample;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO sample;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO sample;
GRANT EXECUTE ON ALL ROUTINES IN SCHEMA public TO sample;
