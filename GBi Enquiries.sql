/*   DATA MAPPING

edw_Scver_coda_dim_views.v_fct_piece_event

SEL TOP 10* from 
edw_Scver_coda_dim_views.v_DimAddress

EDW_SCVER_CODA_ACCS_VIEWS.v_Individual
EDW_SCVER_CODA_ACCS_VIEWS.v_Mears_ShipperPiece  (we only need fields eib_bc_type , Tag_Id , Tag_Creation_Date)
EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address
EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address
EDW_SCVER_CODA_ACCS_VIEWS.v_base_pre_adv_item_detail

v_Organisation
v_delivery_point_address
V_Agreement
V_Agmt_Rdrctn_dtl
V_Agmt_Term
V_Agreement_Related
V_Agreement_StatusType
V_Party_Agreement

*/
 


/* query example for ED YOXALL
CREATE MULTISET VOLATILE TABLE vt_tmp
AS ( 
SELECT top 100 address_id
FROM EDW_SCVER_CODA_DIM_VIEWS.v_dim_address
)
WITH DATA NO PRIMARY INDEX
ON COMMIT PRESERVE ROWs;



select *
from 
EDW_SCVER_CODA_ACCS_VIEWS.v_individual i
INNER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address pa 
ON pa.party_id = i.party_id 
INNER JOIN 
vt_tmp
ON vt_tmp.address_id = pa.address_id
;

*/
