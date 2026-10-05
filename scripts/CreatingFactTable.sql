/*
Creating fact table 
*/

create table "fact_cwwos" (
    "workorder_id" bigserial primary key,
    "description_id" integer,
    "priority_id" integer,
    "status_id" integer,
    "submit_to_id" integer,
    "proj_start_date" timestamp,
    "proj_finish_date" timestamp,
    "actual_start" timestamp,
    "actual_finish" timestamp,
    "shop_id" integer,
    "map_page_id" integer,
    "address" text,
    "location" text,
    "category_id" integer,
    "date_initiated" timestamp,
    "date_key" integer,
    "project_id" integer,
    "total_cost" float4,
    "comments" text,
    "zone_id" integer,
    "request_ids" text,
    "resolution_id" integer,
    "sr_problem_code_id" integer,
    "sr_description_id" integer,
    "sr_priority_id" integer,
    "contractor_id" integer
);

/*
Adding foreign key relationships to fact table 
*/

alter table "fact_cwwos"
add constraint "fk_fact_date"
foreign key ("date_key")
references "dim_date" ("date_key");

alter table "fact_cwwos"
add constraint "fk_fact_description"
foreign key ("description_id")
references "dim_description" ("description_id");

alter table "fact_cwwos"
add constraint "fk_fact_priority"
foreign key ("priority_id")
references "dim_priority" ("priority_id");

alter table "fact_cwwos"
add constraint "fk_fact_status"
foreign key ("status_id")
references "dim_status" ("status_id");

alter table "fact_cwwos"
add constraint "fk_fact_submit_to"
foreign key ("submit_to_id")
references "dim_submit_to" ("submit_to_id");

alter table "fact_cwwos"
add constraint "fk_fact_shop"
foreign key ("shop_id")
references "dim_shop" ("shop_id");

alter table "fact_cwwos"
add constraint "fk_fact_map_page"
foreign key ("map_page_id")
references "dim_map_page" ("map_page_id");

alter table "fact_cwwos"
add constraint "fk_fact_category"
foreign key ("category_id")
references "dim_category" ("category_id");

alter table "fact_cwwos"
add constraint "fk_fact_project"
foreign key ("project_id")
references "dim_project" ("project_id");

alter table "fact_cwwos"
add constraint "fk_fact_zone"
foreign key ("zone_id")
references "dim_zone" ("zone_id");

alter table "fact_cwwos"
add constraint "fk_fact_resolution"
foreign key ("resolution_id")
references "dim_resolution" ("resolution_id");

alter table "fact_cwwos"
add constraint "fk_fact_sr_problem_code"
foreign key ("sr_problem_code_id")
references "dim_sr_problem_code" ("sr_problem_code_id");

alter table "fact_cwwos"
add constraint "fk_fact_sr_description"
foreign key ("sr_description_id")
references "dim_sr_description" ("sr_description_id");

alter table "fact_cwwos"
add constraint "fk_fact_sr_priority"
foreign key ("sr_priority_id")
references "dim_sr_priority" ("sr_priority_id");

alter table "fact_cwwos"
add constraint "fk_fact_contractor"
foreign key ("contractor_id")
references "dim_contractor" ("contractor_id");

/*
Populating fact table
*/

insert into "fact_cwwos" (
    "workorder_id",
    "description_id",
    "priority_id",
    "status_id",
    "submit_to_id",
    "proj_start_date",
    "proj_finish_date",
    "actual_start",
    "actual_finish",
    "shop_id",
    "map_page_id",
    "address",
    "location",
    "category_id",
    "date_initiated",
    "date_key",
    "project_id",
    "total_cost",
    "comments",
    "zone_id",
    "request_ids",
    "resolution_id",
    "sr_problem_code_id",
    "sr_description_id",
    "sr_priority_id",
    "contractor_id"
)
select
    s."workorderid",
    dd."description_id",
	dp."priority_id",
    ds."status_id",
    dst."submit_to_id",
    s."proj_start_date"::timestamp,
    s."proj_finish_date"::timestamp,
    s."actual_start"::timestamp,
    s."actual_finish"::timestamp,
    dsh."shop_id",
    dmp."map_page_id",
    s."address",
    s."location",
    dcat."category_id",
    s."date_initiated"::timestamp,
    ddt."date_key",
    dproj."project_id",
    s."total_cost",
    s."comments",
    dz."zone_id",
    s."request_ids"::text,
    dres."resolution_id",
    dspc."sr_problem_code_id",
    dsd."sr_description_id",
    dsp."sr_priority_id",
	dc."contractor_id"
    from "stage_cwwos" s
left join "dim_date" ddt
    on ddt."full_date" = s."date_initiated"::date
left join "dim_description" dd
    on dd."description" = s."description"
left join "dim_priority" dp
    on dp."priority" = s."priority"::text
left join "dim_status" ds
    on ds."status" = s."status"
left join "dim_submit_to" dst
    on dst."submit_to" = s."submit_to"
left join "dim_shop" dsh
	on dsh."shop" = s."shop"
left join "dim_map_page" dmp
	on dmp."map_page" = s."map_page"
left join "dim_category" dcat
	on dcat."category" = s."category"
left join "dim_project" dproj
	on dproj."project" = s."project"
left join "dim_zone" dz
	on dz."zone" = s."zone"
left join "dim_resolution" dres
	on dres."resolution" = s."resolution"	
left join "dim_sr_problem_code" dspc
	on dspc."sr_problem_code" = s."sr_problem_code"
left join "dim_sr_description" dsd
	on dsd."sr_description" = s."sr_description"
left join "dim_sr_priority" dsp
	on dsp."sr_priority" = s."sr_priority"::text
left join "dim_contractor" dc
	on dc."contractor" = s."contractor"
;



