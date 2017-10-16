create volatile table vt_5  as 
(
sel party_id
FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_party
where party_id IN
(
46498790,
55128528,
84165140,
89828388,
90192593,
90273279,
90333109,
90625301,
90815407,
91147828
)
) WITH DATA
PRIMARY INDEX (party_id)
ON COMMIT PRESERVE ROWS
;

--sel * from vt_5;
--drop table vt_5;

SELECT 
    a.*, 
    b.event_id, 
    b.event_actual_date, 
    b.scver_upd_dttm, 
    b.data_source_type_id
FROM vt_5 AS a
INNER JOIN EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event AS b
ON a.party_id = b.recipient_party_id
WHERE b.postal_event_type_id = 12 -- only include deliveries
AND b.data_source_type_id IN (1,5) -- and only include POISE/RMGTT for now
and b.event_actual_date between date '2017-01-01' and date '2017-01-10'
QUALIFY ROW_NUMBER() OVER(PARTITION BY b.event_id ORDER BY b.scver_upd_dttm DESC) = 1
UNION SELECT
    a.*, 
    b.event_id, 
    b.event_actual_date, 
    b.scver_upd_dttm, 
    b.data_source_type_id
FROM vt_5 AS a
INNER JOIN EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event AS b
ON a.party_id = b.recipient_party_id
WHERE b.postal_event_type_id = 12 -- only include deliveries
AND b.data_source_type_id IN (1,5) -- and only include POISE/RMGTT for now
and b.event_actual_date between date '2017-01-11' and date '2017-01-20'
QUALIFY ROW_NUMBER() OVER(PARTITION BY b.event_id ORDER BY b.scver_upd_dttm DESC) = 1

UNION SELECT
    a.*, 
    b.event_id, 
    b.event_actual_date, 
    b.scver_upd_dttm, 
    b.data_source_type_id
FROM vt_5 AS a
INNER JOIN EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event AS b
ON a.party_id = b.recipient_party_id
WHERE b.postal_event_type_id = 12 -- only include deliveries
AND b.data_source_type_id IN (1,5) -- and only include POISE/RMGTT for now
and b.event_actual_date between date '2017-01-21' and date '2017-01-30'
QUALIFY ROW_NUMBER() OVER(PARTITION BY b.event_id ORDER BY b.scver_upd_dttm DESC) = 1
;







SELECT top 100tera
    --a.*, 
    b.recipient_party_id,
    b.event_id, 
    b.event_actual_date, 
    b.scver_upd_dttm, 
    b.data_source_type_id
--FROM vt_5 AS a
--INNER JOIN 
FROM EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event AS b
--ON a.party_id = b.recipient_party_id
WHERE b.postal_event_type_id = 12 -- only include deliveries
AND b.data_source_type_id IN (1,5) -- and only include POISE/RMGTT for now
and b.event_actual_date between date '2017-01-01' and date '2017-01-10'
--QUALIFY ROW_NUMBER() OVER(PARTITION BY b.event_id ORDER BY b.scver_upd_dttm DESC) = 1
;
