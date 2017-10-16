SELECT Party_Id, MIN(Mears_Event_Timestamp), Max(Mears_Event_Timestamp),

COUNT
--(*)
(DISTINCT MEARS.TAG_ID||MEARS.TAG_CREATION_DATE)
FROM
EDW_SCVER_CODA_ACCS_VIEWS.V_PREP_MEARS_ADF_SCV as MEARS
INNER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.V_EVENT_PARTY as EP
ON EP.Event_Id = MEARS.Event_ID
AND MEARS.Event_Id is not null

--AND EP.Postal_Event_Type_Id = 12
INNER JOIN EDW_SCVER_CODA_ACCS_VIEWS.v_party_address as PADD
ON PADD.Party_Id = EP.Party_Id
INNER JOIN EDW_SCVER_CODA_ACCS_VIEWS.v_dim_address as DADD
ON DADD.Address_Id = PADD.Address_Id


GROUP BY EP.Party_Id
; 


------------------------------------------
/* MEARS SORTATION MEARS ONLY COUNT */

SELECT 
--COUNT (distinct DA.PAF_UDPRN||IND.LASTNAME)
DA.PAF_UDPRN,
IND.LASTNAME,
--SORT.UDPRN,
'MEARS ADF' AS SOURCE_SYSTEM,
----NULL AS AGREEMENT_START_DT,
----NULL AS CREDO_STATUS,
MAX(CAST (PMS.MEARS_LOAD_DATE AS DATE)),
COUNT(DISTINCT PMS.TAG_ID||PMS.TAG_CREATION_DATE)

FROM
EDW_SCVER_CODA_ACCS_VIEWS.V_PREP_MEARS_ADF_SCV PMS
INNER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.V_EVENT_PARTY EP
ON PMS.EVENT_ID = EP.EVENT_ID
AND PMS.EVENT_Id IS NOT NULL
INNER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.V_PARTY_ADDRESS PA
ON EP.PARTY_ID = PA.PARTY_ID
INNER JOIN
EDW_SCVER_CODA_ACCS_VIEWS.V_DIM_ADDRESS DA
ON DA.ADDRESS_ID = PA.ADDRESS_ID
INNER JOIN 
EDW_SCVER_CODA_ACCS_VIEWS.V_INDIVIDUAL IND
ON EP.PARTY_ID = IND.PARTY_ID
--LEFT JOIN
--EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_mears_sortation SORT
--ON SORT.UDPRN = DA.PAF_UDPRN
AND DA.ADDRESS_TYPE = 'MA'
AND DA.ORGANISATION_NAME = ''
AND DA.DEPARTMENT_NAME = ''
AND DA.PREM_POBOX =''
GROUP BY 1,2,3
--WHERE SORT.UDPRN IS NULL
--WHERE NOT EXISTS
--(
--SELECT 1 FROM
--EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_mears_sortation SORT
--WHERE SORT.UDPRN = DA.PAF_UDPRN
--)
;
  
-------------------------------------------------
  
SEL count (*) 
FROM EDW_SCVER_CODA_ACCS_VIEWS.v_rptng_coda_mears_sortation
WHERE Tods_Count is null
AND Transaction_Count_Kognitio is null
AND Mears_Adf_Count >10
--ORDER BY Mears_Adf_Count DESC
;