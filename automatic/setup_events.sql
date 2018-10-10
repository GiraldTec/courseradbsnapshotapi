DROP TABLE IF EXISTS clickstream_events;

CREATE TABLE clickstream_events (
  hashed_user_id varchar,
  hashed_session_cookie_id varchar,
  server_timestamp timestamp,
  hashed_ip varchar,
  user_agent varchar,
  url varchar,
  initial_referrer_url varchar,
  browser_language varchar,
  course_id varchar,
  country_cd varchar,
  region_cd varchar,
  timezone varchar,
  os varchar,
  browser varchar,
  key varchar,
  value varchar
);
