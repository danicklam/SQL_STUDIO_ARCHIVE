---------------------------------------
/*  EMAIL QUERIES   */
---------------------------------------

SELECT 'Email Addresses' as Inventory_Check, Current_date, COUNT(*) FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS 
WHERE ELECTRONIC_ADDRESS LIKE '%@%' -- 21,113,875
;


sel min(ELECTRONIC_ADDRESS_ID), max(ELECTRONIC_ADDRESS_ID)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
;

select 'batch1' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID < 1002910001
UNION
select 'batch2' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID > 1002910000
AND ELECTRONIC_ADDRESS_ID < 1004900001
UNION
select 'batch3' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID > 1004900000
AND ELECTRONIC_ADDRESS_ID < 1007385001
UNION
select 'batch4' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID > 1007385000
AND ELECTRONIC_ADDRESS_ID < 1009350001
UNION
select 'batch5' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID > 1009350000
AND ELECTRONIC_ADDRESS_ID < 1011695001
UNION
select 'batch6' as batches, count(*)
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND ELECTRONIC_ADDRESS_ID > 1009350000
AND ELECTRONIC_ADDRESS_ID < 1011695001
;

sel max (ELECTRONIC_ADDRESS_ID)
FROM
(sel top 999999 *
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND Electronic_address_id > 1069008710
ORDER BY Electronic_address_id)x
;

---------------------------------
/* batches        */
---------------------------------
sel *
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
and Electronic_address_id <= 1002934356
;
sel *
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND Electronic_address_id > 1002934356
and Electronic_address_id <= 1004952626
;
sel *
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND Electronic_address_id > 1004952626
and Electronic_address_id <= 1007484664
;
sel *
FROM EDW_SCVER_CODA_ACCS_VIEWS.V_ELECTRONIC_ADDRESS
WHERE ELECTRONIC_ADDRESS LIKE '%@%'
AND Electronic_address_id > 1007484664
and Electronic_address_id <= 1009436332
;


/*
1002934356
1004952626
1007484664
1009436332
1011738295
1018102826
1019102862
1020102884
1021103124
1025362989
1031971610
1033831329
1035995255
1038143720
1040610728
1042420837
1045820436
1047373407
1049347889
1050978126
1052856282
1054578574
1056335541
1058208444
1059996911
1061941622
1063678133
1065405669
1067299083
1069008710

*/


