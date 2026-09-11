/*
Example lesson stub
*/
SELECT ps.patientid,
       ps.hospital,
       ps.ward,
       ps.admitteddate,
       ps.dischargedate,
       ps.ethnicity
FROM   PatientStay AS ps
WHERE  ps.hospital IN ('kingston', 'pruh')
       AND (ps.ward LIKE '%surgery'
            OR ps.ward LIKE '%o%')
       AND ps.ethnicity IS NULL;


--select distinct hospital from PatientStay ps