/** 
   Procédure pour enregistrer les MAJ de la table de stagging dans la
   table de log  

**/

create procedure metadata.create_metadata_log_table 
@pipeline_id varchar(255),
@table_name varchar(255),
@processed_date DATETIME2
as 
insert into metadata.processing_log
select 
    @pipeline_id as pipeline_run_id,
    @table_name as table_processed, 
    count(*) as rows_processed,
    max(tpep_pickup_datetime) as latest_processed_pickup,
    @processed_date as processed_datetime
    from stagging_schema.nyctaxi_yellow;


/*** 
 
Procédure pour garder uniquement les dates dans un intervalle précis

***/
CREATE procedure stagging_schema.stg_process_dates 
@end_date DATETIME2,
@start_date datetime2
as 
delete from stagging_schema.nyctaxi_yellow 
where  tpep_pickup_datetime <@start_date or tpep_pickup_datetime >@end_date




/***

Procédure pour enregistrer les MAJ dans la bronze/presentation layer

 ***/

CREATE procedure metadata.log_bronze_layer 
@pipeline_id varchar(255),
@table_name varchar(255),
@processed_date DATETIME2
as 
insert into metadata.processing_log
select 
    @pipeline_id as pipeline_run_id,
    @table_name as table_processed, 
    count(*) as rows_processed,
    max(tpep_pickup_datetime) as latest_processed_pickup,
    @processed_date as processed_datetime
    from bronze.nyc_taxi_yellow;
