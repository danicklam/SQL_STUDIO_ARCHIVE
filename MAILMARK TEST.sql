/* MEARS */

SEL top 1000 * FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_mears_shipper_piece
where tag_creation_date = date '2017-02-08'
and MEARS_MAIL_DATA_MARK IS NOT NULL
;

SEL  
Piece_Id,	Mears_Event_Id,	Mears_Event_Timestamp,	MEARS_MAIL_DATA_MARK,	EIB_BC_OCR_Addr_Result,	EIB_BC_CBC_Addr_Result,	EIB_BC_Addr_Result

FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_mears_shipper_piece
where tag_creation_date = date '2017-02-08'
and EIB_BC_Info_Type_ID=11
and MEARS_MAIL_DATA_MARK IS NOT NULL
;

