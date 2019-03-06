CREATE OR REPLACE FUNCTION find_all_activities_for_owner(username varchar(500)) RETURNS SETOF activity AS $$
	SELECT activity.*
	FROM "user"
	JOIN activity
	ON "user".id = activity.owner_id
	WHERE  find_all_activities_for_owner.username = "user".username
$$ LANGUAGE SQL;