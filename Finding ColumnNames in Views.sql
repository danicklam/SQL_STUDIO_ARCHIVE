SEL  c.DatabaseName, c.TableName, c.ColumnName
FROM
(Sel * 
FROM DBC.Tables
where TableKind ='V') v
INNER JOIN
DBC.COLUMNS c
on c.DatabaseName = v.DatabaseName
and c.TableName = v.TableName
and c.COLUMNNAME ='POSTAGE_TYPE_ID'
;

SEL 
--TOP 1000* 
USERNAME, CollectTimeStamp, logondatetime, logonsource, appid, statementType, queryText, numresultrows
FROM
dbc.DBQLogTbl 

where querytext like any ('%CODA%','%coda%')
AND USERNAME not like '%RMG%'
AND USERNAME not like '%DBC%'
;



SEL min (collecttimestamp)
--TOP 1000* 
FROM
dbc.DBQLogTbl 

;
