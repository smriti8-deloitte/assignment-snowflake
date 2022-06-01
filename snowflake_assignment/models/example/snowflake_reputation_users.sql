{{ config(materialized='table') }}

SELECT
	src:"@AccountId"::INTEGER AS AccountId,
	src:"@DisplayName"::string AS DisplayName,
	src:"@Reputation"::INTEGER AS Reputation
FROM "ASSIGNMENT"."PUBLIC"."USERS" 
ORDER BY Reputation DESC LIMIT 10