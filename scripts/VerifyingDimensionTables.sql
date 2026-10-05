/*
Verifying all description values from staging table are contained in dim_description
*/

select
    dd."description",
    dd."description_id"
from "stage_cwwos" s
left join "dim_description" dd
    on dd."description" = s."description"
where dd."description_id" is null;

/*
Verifying all status values from staging table are contained in dim_status
*/

select
    ds."status",
    ds."status_id"
from "stage_cwwos" s
left join "dim_status" ds
    on ds."status" = s."status"
where ds."status_id" is null;

/*
Verifying all submit_to values from staging table are contained in dim_submit_to
*/

select
    dst."submit_to",
    dst."submit_to_id"
from "stage_cwwos" s
left join "dim_submit_to" dst
    on dst."submit_to" = s."submit_to"
where dst."submit_to_id" is null;

/*
Verifying all category values from staging table are contained in dim_category
*/

select
    dcat."category",
    dcat."category_id"
from "stage_cwwos" s
left join "dim_category" dcat
    on dcat."category" = s."category"
where dcat."category_id" is null;

/*
Verifying all project values from staging table are contained in dim_project
*/

select
    dproj."project",
    dproj."project_id"
from "stage_cwwos" s
left join "dim_project" dproj
    on dproj."project" = s."project"
where dproj."project_id" is null;

/*
Verifying all zone values from staging table are contained in dim_zone
*/

select
    dz."zone",
    dz."zone_id"
from "stage_cwwos" s
left join "dim_zone" dz
    on dz."zone" = s."zone"
where dz."zone_id" is null;

/*
Verifying all resolution values from staging table are contained in dim_resolution
*/

select
    dres."resolution",
    dres."resolution_id"
from "stage_cwwos" s
left join "dim_resolution" dres
    on dres."resolution" = s."resolution"
where dres."resolution_id" is null;

/*
Verifying all sr_problem_code values from staging table are contained in dim_sr_problem_code
*/

select
    dspc."sr_problem_code",
    dspc."sr_problem_code_id"
from "stage_cwwos" s
left join "dim_sr_problem_code" dspc
    on dspc."sr_problem_code" = s."sr_problem_code"
where dspc."sr_problem_code_id" is null;

/*
Verifying all sr_description values from staging table are contained in dim_sr_description
*/

select
    dsd."sr_description",
    dsd."sr_description_id"
from "stage_cwwos" s
left join "dim_sr_description" dsd
    on dsd."sr_description" = s."sr_description"
where dsd."sr_description_id" is null;

/*
Verifying all sr_priority values from staging table are contained in dim_sr_priority
*/

select
    dsp."sr_priority",
    dsp."sr_priority_id"
from "stage_cwwos" s
left join "dim_sr_priority" dsp
    on dsp."sr_priority" = s."sr_priority"::text
where dsp."sr_priority_id" is null;

/*
Verifying all contractor values from staging table are contained in dim_contractor
*/

select
    dc."contractor",
    dc."contractor_id"
from "stage_cwwos" s
left join "dim_contractor" dc
    on dc."contractor" = s."contractor"
where dc."contractor_id" is null;

/*
Verifying all shop values from staging table are contained in dim_shop
*/

select
    dsh."shop",
    dsh."shop_id"
from "stage_cwwos" s
left join "dim_shop" dsh
    on dsh."shop" = s."shop"
where dsh."shop_id" is null;

/*
Verifying all priority values from staging table are contained in dim_priority
*/

select
    dp."priority",
    dp."priority_id"
from "stage_cwwos" s
left join "dim_priority" dp
    on dp."priority" = s."priority"::text
where dp."priority_id" is null;


