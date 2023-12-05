CREATE OR REPLACE FUNCTION user_register_secure(
    v_user_name varchar, 
	v_password varchar
)
	RETURNS INTEGER
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM german_misc 
						WHERE password_name = v_password) THEN
			IF password_is_valid(v_password) THEN 
				INSERT INTO users (user_name, password_hash) 
						VALUES (v_user_name,
							md5(v_password));
				RETURN 1;
			ELSE
				RAISE NOTICE 'Incorrect content of password';
				RETURN -1;
			END IF;
	ELSE 
		RAISE NOTICE 'Passname = % is bad passname', v_password;
		RETURN -1;
	END IF;
	RETURN 1;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION password_is_valid(password varchar)
    RETURNS boolean
AS $$
BEGIN
	RETURN password ~ '(?=\S{10,})(?=.*[0-9])(?=.*[a-z]{2,})(?=.*[A-Z]{2,})(?=.*[!@#$%^&*]{4,})';
END;
$$ LANGUAGE plpgsql;