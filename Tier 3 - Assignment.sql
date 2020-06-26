/* 
 * Create Tables for:
 * 		- app_user
 * 		- user_role
 * 		- study_set_card
 * 		- study_set
 * 		- flashcard
 * 		- category
 * 
*/

/* Category */

CREATE TABLE category (
	category_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	"name" VARCHAR(50) UNIQUE NOT NULL
);

/* Study Set Card */

CREATE TABLE study_set_card (
	study_set_id INTEGER NOT NULL REFERENCES study_set (study_set_id),
	flashcard_id INTEGER NOT NULL REFERENCES flashcard (flashcard_id),
	PRIMARY KEY (study_set_id, flashcard_id)
);

/* User Role */

CREATE TABLE user_role (
	role_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	"name" VARCHAR(50) UNIQUE NOT NULL
);

/* Study Set */

CREATE TABLE study_set (
	study_set_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	"name" VARCHAR(50) UNIQUE NOT NULL,
	owner_id INTEGER REFERENCES app_user (user_id)
);

/* Flashcard */

CREATE TABLE flashcard (
	flashcard_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	question VARCHAR(255) UNIQUE NOT NULL,
	answer VARCHAR(255) NOT NULL,
	category_id INTEGER NOT NULL REFERENCES category (category_id)
);

/* App User */

CREATE TABLE app_user (
	user_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	username VARCHAR(60) UNIQUE NOT NULL,
	"password" VARCHAR(255) UNIQUE NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	role_id INTEGER REFERENCES user_role (role_id)
	
);