CREATE OR REPLACE FUNCTION add_activity(in_title varchar(200), in_description text, in_owner_id bigint) RETURNS activity AS $$

	BEGIN 
	INSERT INTO activity (id, title, description, owner_id, creation_date, modification_date)
	VALUES (nextval('id_generator'), in_title, in_description, in_owner_id, now(), now());
	
	SELECT * FROM activity WHERE title = in_title AND description = in_description AND owner_id = in_owner_id;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION find_all_activities(find_all_activities refcursor) RETURNS refcursor AS $$

$$ LANGUAGE plpgsql;	