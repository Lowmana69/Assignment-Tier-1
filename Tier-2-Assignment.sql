/*
 * Tier 2
 * 
 * Problem Set:
 * 
 * 	A.) Write a query that will find all user info related to users with a role of BASIC_USER
			Value: 10 points

	B.) Write a statement that will insert a new user into the APP_USER table with a role of PREMIUM_USER
			Value: 20 points

	C.) Write a query that will find all user and study set info related to the user with an id of 4
			Value: 30 points
	
	D.) Write a query that will obtain the owner’s username and role name, as well as the category name, 
		questions, and answers of flashcard contained within the study set with and id of 1.
			Value: 40 points
 * 
*/

/* -------------------------------------------------------- */
SELECT * FROM app_user WHERE role_id = 3;
SELECT * FROM app_user LEFT JOIN user_role ON app_user.role_id = user_role.role_id WHERE user_role.role_id = 3;

/* -------------------------------------------------------- */

INSERT INTO app_user (username, "password", first_name, last_name, role_id)
	VALUES('LongClaw', 'ghost23&^', 'Jon', 'Snow', 4);


/* -------------------------------------------------------- */

SELECT * FROM app_user LEFT JOIN study_set ON app_user.user_id = study_set.owner_id WHERE app_user.user_id = 4;

/* -------------------------------------------------------- */



