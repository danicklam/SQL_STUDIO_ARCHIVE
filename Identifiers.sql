/* 2 Billion items  */
SEL COUNT(*) FROM

(SELECT * FROM 
EDW_SCVER_CODA_ACCS_VIEWS.v_individual) ind

INNER JOIN

(SEL * FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address
where address_type_id in (2,3)) pa

ON ind.party_id = pa.Party_id
;





SEL TOP 1000 * FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_dim_address;


SEL 
COUNT(*)
--TOP 1000 * 
FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address;


SEL 
COUNT(*)
--TOP 1000 * 
FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address;


SEL TOP 1000 * FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address;

SEL address_type_id , count(1) FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_party_address
where address_type_id in (2,3)
GROUP BY 1;



Sel count (Address_ID) From
(SEL * FROM
(
SEL Telephonic_Address_Id as Address_Id, Msisdn_Number as Phone_Number, SCVER_Load_Dttm, SCVER_Upd_Dttm
FROM EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address
)tele
FULL OUTER JOIN
(
SEL Electronic_Address_Id as Address_Id, Electronic_Address, SCVER_Load_Dttm, SCVER_Upd_Dttm
FROM EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address
)email
ON tele.Address_Id = email.Address_Id) contacts
;



Sel count (distinct address_id) from
(
SEL Telephonic_Address_Id as Address_Id
FROM EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address
UNION
SEL Electronic_Address_Id as Address_Id
FROM EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address
) adds
;

sel * from
EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address
FULL OUTER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address
ON Electronic_address_Id = telephonic_address_id
AND electronic_address_id = 1005436137
;

SEL COUNT (*)
From EDW_SCVER_CODA_ACCS_VIEWS.v_party_address pa
inner join 
EDW_SCVER_CODA_ACCS_VIEWS.v_electronic_address ea
on pa.address_id = ea.electronic_address_id;

SEL TOP 100 * FROM
EDW_SCVER_CODA_ACCS_VIEWS.v_dim_address;


SEL COUNT (*)
From EDW_SCVER_CODA_ACCS_VIEWS.v_party_address pa
inner join 
EDW_SCVER_CODA_ACCS_VIEWS.v_telephonic_address ta
on pa.address_id = ta.telephonic_address_id;
