 
 SELECT 
 ac.Address_Id, ac.Indiv_Cluster_Id, ac.Party_Id, ac.Name_Prefix, ac.Forename, ac.Lastname
 FROM EDW_SCVER_CODA_ACCS_VIEWS.v_address_cluster ac
 where ac.party_id = 322977608;
 
 
 sel * from
 EDW_SCVER_CODA_DIM_VIEWS.v_fct_piece_event
 where recipient_address_id = 1000010
 ;

 
  SELECT 
 ac.Address_Id, ac.Indiv_Cluster_Id, ac.Party_Id, ac.Name_Prefix, ac.Forename, ac.Lastname
 FROM EDW_SCVER_CODA_ACCS_VIEWS.v_address_cluster ac
 where ac.address_id = 322977608;


 SELECT 
 ac.Address_Id, ac.Indiv_Cluster_Id, ac.Party_Id, ac.Name_Prefix, ac.Forename, ac.Lastname
 FROM EDW_SCVER_CODA_ACCS_VIEWS.v_address_cluster ac
 INNER JOIN
 EDW_SCVER_CODA_ACCS_VIEWS.v_party_address pa
 ON ac.PARTY_ID = pa.PARTY_ID
 and pa.Address_Id = 322977608
 and ac.address_id = 322977608
 and pa.address_type_id = 1
;
 

 SELECT *
 FROM EDW_SCVER_CODA_ACCS_VIEWS.v_party_address ac
 where ac.address_id = 322977608;


 
        --        ('312168826','213168823','326120098','306528777','314864207','329396757','331689727')
        --('308532987', '315856195', '308398938')

 
 
 
 sel min(party_id) , max (party_id)
  FROM EDW_SCVER_CODA_ACCS_VIEWS.v_address_cluster;
 