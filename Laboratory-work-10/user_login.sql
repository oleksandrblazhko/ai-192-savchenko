CREATE OR REPLACE FUNCTION user_login(
     v_user_name varchar, 
	 v_password varchar
)
	RETURNS VARCHAR
AS $$
DECLARE
	v_token VARCHAR;
	v_user_id INTEGER;
BEGIN
	SELECT user_id INTO v_user_id 
	FROM users
	WHERE 	user_name = v_user_name
			AND password_hash = md5(v_password);
	IF NOT FOUND THEN 
		RAISE NOTICE 'User not found';
		RETURN -1;
	ELSE 
		SELECT md5(inet_client_addr()::varchar || inet_client_port() || 
			pg_backend_pid()) INTO v_token;
		INSERT INTO sso_tokens (user_id,token) VALUES (v_user_id,v_token);
		INSERT INTO sso_tokens (user_id,token) VALUES (v_user_id,v_token);
		RETURN v_token;
	END IF;
END;
$$ LANGUAGE plpgsql;