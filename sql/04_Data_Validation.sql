
-- Check clinic count
SELECT COUNT(*) AS total_clinics
FROM clinics;

-- Check appointment count
SELECT COUNT(*) AS total_appointments
FROM appointments;

-- Check total no-shows
SELECT SUM(no_show) AS total_no_shows
FROM appointments;

-- Check duplicate appointment IDs
SELECT
    appointment_id,
    COUNT(*) AS duplicate_count
FROM appointments
GROUP BY appointment_id
HAVING COUNT(*) > 1;


INSERT INTO appointments(
    appointment_id,
    patient_id,
    clinic_id,
    booked_on,
    appt_date,
    age,
    gender,
    distance_km,
    fee_inr,
    booking_channel,
    visit_type,
    reminder_sent,
    prior_no_shows,
    status,
    lead_days,
    no_show
)
VALUES
(
    'A001',
    'P001',
    'C01',
    '2023-10-01',
    '2023-10-15',
    30,
    'M',
    5.0,
    1000,
    'Online',
    'Follow-up',
    'Yes',
    2,
    'Scheduled',
    7,
    0
);