SELECT doctors.name, ROUND(SUM((attendances.hours*150)+(work_shifts.bonus/100*(attendances.hours*150))),1) AS salary 
FROM attendances
JOIN doctors 
ON attendances.id_doctor=doctors.id   
JOIN work_shifts
ON attendances.id_work_shift=work_shifts.id
GROUP BY doctors.name
ORDER BY ROUND(SUM((attendances.hours*150)+(work_shifts.bonus/100*(attendances.hours*150))),1) DESC