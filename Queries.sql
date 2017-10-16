SEL * FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event 
where recipient_address_id = 323144097 ;


Sel * FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
inner join EDW_SCVER_CODA_DIM_VIEWS.v_dim_address da
ON fpe.recipient_address_id = da.address_id
where da.postcode like 'WC%'
;


Sel * FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
inner join EDW_SCVER_CODA_DIM_VIEWS.v_dim_address_ops_hierarchy daop
ON fpe.recipient_address_id = daop.address_id
where da.delivery_office = 'Welwyn Garden City DO'
;



Sel 
count(*), count (distinct piece_id) FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
where postal_event_type_id = 12
and data_source_type_id in ('1','5')
and event_actual_date between date '2017-01-01' and date '2017-01-05'
;


Sel 
count(*), count (distinct piece_id) FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
where postal_event_type_id = 12
and data_source_type_id in ('1','5')
and event_actual_date between date '2017-01-01' and date '2017-01-05'
;



SEL piece_id, count(*) as countz from
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event
where postal_event_type_id = 12
and data_source_type_id in ('1','5')
and event_actual_date between date '2017-01-01' and date '2017-01-05'
having count (*) > 1
group by 1;




Sel top 1000 * from
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
where postal_event_type_id = 12
and data_source_type_id in ('1','5')
and event_actual_date between date '2017-01-01' and date '2017-01-05'
and piece_id IN 
(2081438937,
149624803,
2084920694,
149625466,
2086862976,
149598505,
149542618,
149624827,
2086564156,
149623525,
2086807752,
2086565506
)
order by piece_id asc
;



Sel 
data_source_type_id, count(*), count (distinct piece_id) FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
where postal_event_type_id = 12
and data_source_type_id in ('1','5')
and event_actual_date between date '2017-01-01' and date '2017-01-05'
group by 1
;




Sel 
top 200 * FROM
--count(*), count (distinct piece_id), count(distinct poise_consignment_id) FROM 
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event fpe
--where postal_event_type_id = 1
where data_source_type_id in ('1','5')
and poise_consignment_id is not null
and event_actual_date between date '2017-01-01' and date '2017-01-05'
;

sel top 100 * from
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event
where data_source_type_id = 10
and event_actual_date between date '2017-01-01' and date '2017-01-05';



sel top 100 * from
EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event
where data_source_type_id = 10
and event_actual_date between date '2017-01-01' and date '2017-01-05';