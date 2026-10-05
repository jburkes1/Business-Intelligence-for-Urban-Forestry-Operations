/*
Creating a dimension table to store repeating description values 
*/

create table dim_description
	(
	 description_id int generated always as identity primary key,
	 description text unique not null
	);

/*
Creating a dimension table to store repeating status values
*/

create table dim_status
	(
	 status_id int generated always as identity primary key,
	 status text unique not null
	);

/*
Creating a dimension table to store repeating submit_to values
*/

create table dim_submit_to
	(
	 submit_to_id int generated always as identity primary key,
	 submit_to text unique not null
	);

/*
Creating a dimension table to store repeating map_page values
*/

create table dim_map_page
	(
	 map_page_id int generated always as identity primary key,
	 map_page text unique not null
	);

/*
Creating a dimension table to store repeating category values
*/

create table dim_category
	(
	 category_id int generated always as identity primary key,
	 category text unique not null
	);

/*
Creating a dimension table to store repeating project values
*/

create table dim_project
	(
	 project_id int generated always as identity primary key,
	 project text unique not null
	);

/*
Creating a dimension table to store repeating zone values
*/

create table dim_zone
	(
	 zone_id int generated always as identity primary key,
	 zone text unique not null
	);

/*
Creating a dimension table to store repeating resolution values
*/

create table dim_resolution
	(
	 resolution_id int generated always as identity primary key,
	 resolution text unique not null
	);

/*
Creating a dimension table to store repeating sr_problem_code values
*/

create table dim_sr_problem_code
	(
	 sr_problem_code_id int generated always as identity primary key,
	 sr_problem_code text unique not null
	);

/*
Creating a dimension table to store repeating sr_description values
*/

create table dim_sr_description
	(
	 sr_description_id int generated always as identity primary key,
	 sr_description text unique not null
	);

/*
Creating a dimension table to store repeating sr_priority values
*/

create table dim_sr_priority
	(
	 sr_priority_id int generated always as identity primary key,
	 sr_priority text unique not null
	);

/*
Creating a dimension table to store repeating contractor values
*/

create table dim_contractor
	(
	 contractor_id int generated always as identity primary key,
	 contractor text unique not null
	);

/*
Creating a dimension table to store repeating shop values
*/

create table dim_shop
	(
	 shop_id int generated always as identity primary key,
	 shop text unique not null
	);

/*
Creating a dimension table to store repeating priority values
*/

create table dim_priority
	(
	 priority_id int generated always as identity primary key,
	 priority text unique not null
	);

/*
Creating a dimension table to store date values
*/

create table dim_date
	(
	 date_key int generated always as identity primary key,
	 full_date date unique not null,
	 year int,
	 quarter int,
	 month int,
	 month_name text,
	 day_of_week int,
	 day_name text,
	 week_of_year int
	);
	