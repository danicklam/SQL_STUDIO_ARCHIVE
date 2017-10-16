
SEL COUNT (*) FROM (

select event_id, event_actual_dttm from EDW_SCVER_CODA_ACCS_VIEWS.v_delivery
	--where (event_actual_date BETWEEN '2016-09-01' and '2016-09-30' OR event_actual_date = '2016-09-30')
	WHERE (event_actual_date BETWEEN '2016-09-01' and '2016-12-14')	
	and source_system = 'TODS'
	and event_actual_dttm IS NOT NULL
	
	)test;
	
	
	SEL DATA_SOURCE_TYPE_ID, COUNT (*)
	FROM EDW_SCVER_CODA_ACCS_VIEWS.v_event_party
	WHERE DATA_SOURCE_TYPE_ID < 3
	AND (EVENT_ACTUAL_DT BETWEEN '2016-09-01' and '2016-12-14')
	GROUP BY 1;
	
	sel count (*) from
	EDW_SCVER_BO_VIEWS.v_bo_base_track_data
	where (scan_date between '2016-09-01' AND '2016-12-14'
	AND TRACK_NUMBER ='TRACK7');
	
	
	
	
	
	--SELECT event_id, postal_event_type_id 
	SEL COUNT (*)
	FROM EDW_SCVER_BO_VIEWS.v_postal_event 
	WHERE (event_actual_date BETWEEN  '2016-09-13' and '2016-09-13' OR event_actual_date = '2016-09-13')
	AND POSTAL_EVENT_TYPE_ID IN(0,12);
	
	
	
	
	SEL data_source_type_id, COUNT (*), min(event_actual_dt), max(event_actual_dt)
	FROM EDW_SCVER_coda_accs_VIEWS.v_event_party
	where data_source_type_id IN(1,2)
	and (event_actual_dt between '2016-01-01' and '2016-12-14')
	GROUP BY 1;
	
	
	
	
	
	SEL SOURCE_SYSTEM, COUNT (*) FROM
	EDW_SCVER_CODA_ACCS_VIEWS.v_delivery
	where (event_actual_date BETWEEN '2016-01-01' and '2016-12-14')
	and source_system IN( 'RMGTT', 'TODS')
	and event_actual_dttm IS NOT NULL
	GROUP BY 1
	;