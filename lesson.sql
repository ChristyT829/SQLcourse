/*
Example lesson stub
*/
SELECT ps.patientid,
       ps.hospital,
       ps.ward,
        dateadd (week, -2, ps.admitteddate) as ReminderDate,
       ps.admitteddate,
       ps.dischargedate,
       dateadd (month, 3, ps.dischargedate) as AppointmentDate,
              ps.ethnicity
FROM   PatientStay AS ps
WHERE  ps.hospital IN ('kingston', 'pruh')
       AND (ps.ward LIKE '%surgery'
            OR ps.ward LIKE '%o%')
       --AND ps.ethnicity IS NULL
       and ps.AdmittedDate >= '2024-02-28'
       order by ps.hospital, ps.ward, ps.AdmittedDate

select 
ps.hospital,
ps.ward,
count(*) as Numberofpatients,
sum (ps.Tariff) as totaltariff
from PatientStay as ps
group by ps.hospital, ps.ward


--select distinct hospital from PatientStay ps