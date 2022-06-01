

      create or replace transient table assignment.public.snowflake_reputation_users  as
      (

SELECT
	src:"@AccountId"::INTEGER AS AccountId,
	src:"@DisplayName"::string AS DisplayName,
	src:"@Reputation"::INTEGER AS Reputation
FROM "ASSIGNMENT"."PUBLIC"."USERS" 
ORDER BY Reputation DESC LIMIT 10
      );
    