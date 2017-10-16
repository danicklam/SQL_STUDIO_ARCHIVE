SELECT top 10
"Piece_Id", "Mail_Piece_Id", "Country_Id", "Source_System", 
"Event_Actual_Date", "SCVER_Load_Dttm", "SCVER_Upd_Dttm"
FROM "EDW_SCVER_CODA_ACCS_VIEWS"."v_SHIPPER_PIECE"

WHERE Source_System like any ('TODS','RMGTT')
AND EVENT_ACTUAL_DATE > date '2016-10-01'
AND EVENT_ACTUAL_DATE < current_date
;