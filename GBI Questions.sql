  SEL top 100 * FROM
 
 EDW_SCVER_CODA_ACCS_VIEWS.v_mears_shipper_piece
 ;
 
 
 SEL * FROM
 EDW_SCVER_CODA_ACCS_VIEWS.v_individual ind
 inner join 
  EDW_SCVER_CODA_ACCS_VIEWS.v_party_agreement pa
  on ind.party_id = pa.party_id
  and ind.party_id = 240062460
  inner join
 EDW_SCVER_CODA_DIM_VIEWS.v_dim_agreement da
 on da.agreement_id = pa.agreement_id
;