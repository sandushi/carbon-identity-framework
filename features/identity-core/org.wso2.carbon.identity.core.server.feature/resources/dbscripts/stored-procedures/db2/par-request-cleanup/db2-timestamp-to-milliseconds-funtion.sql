CREATE OR REPLACE FUNCTION TIMESTAMP_TO_MILLIS(t timestamp) RETURNS BIGINT
RETURN (
 (
  (BIGINT(DAYS(t) - DAYS('1970-01-01')) * BIGINT(86400000)) +
  (BIGINT(MIDNIGHT_SECONDS(t) * 1000)) +
  (BIGINT(MICROSECOND(t) / 1000))
 )
)