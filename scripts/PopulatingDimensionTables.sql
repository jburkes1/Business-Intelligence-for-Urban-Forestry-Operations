/*
Inserting values into dim_description dimension table
*/

insert into "dim_description" ("description")
select distinct "description"
from "stage_cwwos"
where "description" is not null
and trim("description") <> ''
on conflict ("description") do nothing;

/*
Inserting values into dim_status dimension table 
*/

insert into "dim_status" ("status")
select distinct "status"
from "stage_cwwos"
where "status" is not null
and trim("status") <> ''
on conflict ("status") do nothing;

/*
Inserting values into dim_submit_to dimension table
*/

insert into "dim_submit_to" ("submit_to")
select distinct "submit_to"
from "stage_cwwos"
where "submit_to" is not null
and trim("submit_to") <> ''
on conflict ("submit_to") do nothing;

/*
Inserting values into dim_map_page dimension table
*/

insert into "dim_map_page" ("map_page")
select distinct "map_page"
from "stage_cwwos"
where "map_page" is not null
and trim("map_page") <> ''
on conflict ("map_page") do nothing;

/*
Inserting values into dim_category dimension table
*/

insert into "dim_category" ("category")
select distinct "category"
from "stage_cwwos"
where "category" is not null
and trim("category") <> ''
on conflict ("category") do nothing;

/*
Inserting values into dim_project dimension table
*/

insert into "dim_project" ("project")
select distinct "project"
from "stage_cwwos"
where "project" is not null
and trim("project") <> ''
on conflict ("project") do nothing;

/*
Inserting values into dim_zone dimension table
*/

insert into "dim_zone" ("zone")
select distinct "zone"
from "stage_cwwos"
where "zone" is not null
and trim("zone") <> ''
on conflict ("zone") do nothing;

/*
Inserting values into dim_resolution dimension table
*/

insert into "dim_resolution" ("resolution")
select distinct "resolution"
from "stage_cwwos"
where "resolution" is not null
and trim("resolution") <> ''
on conflict ("resolution") do nothing;

/*
Inserting values into dim_sr_problem_code dimension table
*/

insert into "dim_sr_problem_code" ("sr_problem_code")
select distinct "sr_problem_code"
from "stage_cwwos"
where "sr_problem_code" is not null
and trim("sr_problem_code") <> ''
on conflict ("sr_problem_code") do nothing;

/*
Inserting values into dim_sr_description dimension table
*/

insert into "dim_sr_description" ("sr_description")
select distinct "sr_description"
from "stage_cwwos"
where "sr_description" is not null
and trim("sr_description") <> ''
on conflict ("sr_description") do nothing;

/*
Inserting values into dim_sr_priority dimension table
*/

insert into "dim_sr_priority" ("sr_priority")
select distinct "sr_priority"
from "stage_cwwos"
where "sr_priority" is not null
and trim("sr_priority"::text) <> ''
on conflict ("sr_priority") do nothing;

/*
Inserting values into dim_contractor dimension table
*/

insert into "dim_contractor" ("contractor")
select distinct "contractor"
from "stage_cwwos"
where "contractor" is not null
and trim("contractor") <> ''
on conflict ("contractor") do nothing;

/*
Inserting values into dim_sr_shop dimension table
*/

insert into "dim_shop" ("shop")
select distinct "shop"
from "stage_cwwos"
where "shop" is not null
and trim("shop"::text) <> ''
on conflict ("shop") do nothing;

/*
Inserting values into dim_sr_priority dimension table
*/

insert into "dim_priority" ("priority")
select distinct "priority"
from "stage_cwwos"
where "priority" is not null
and trim("priority"::text) <> ''
on conflict ("priority") do nothing;

/*
Inserting values into dim_date dimension table. Populating dim_date independently of the staging table so all dates from 2020 to 2025 are included.
*/

insert into "dim_date" (
	"date_key",
	"full_date",
	"year",
	"quarter",
	"month",
	"month_name",
	"day_of_week",
	"day_name",
	"week_of_year"
)
overriding system value
select
	to_char(d, 'YYYYMMDD')::integer as date_key, d::date as full_date,
	extract(year from d)::integer as year,
	extract(quarter from d)::integer as quarter,
	extract(month from d)::integer as month,
	trim(to_char(d, 'Month')) as month_name,
	extract(isodow from d)::integer as day_of_week,
	trim (to_char(d, 'Day')) as day_name,
	extract(week from d)::integer as week_of_year
from generate_series(
	'2020-01-01'::date,
	'2025-12-31'::date,
	'1 day'::interval
	) as d
on conflict ("date_key") do nothing;

