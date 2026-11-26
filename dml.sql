INSERT INTO departments (
    department_id,
    enterprise_id,
    department_name,
    description
)
OVERRIDING SYSTEM VALUE
VALUES
(1, 1, 'Human Resources', 'Mengelola sumber daya manusia'),
(2, 1, 'Finance', 'Mengelola keuangan perusahaan'),
(3, 1, 'Information Technology', 'Mengelola teknologi informasi');


INSERT INTO positions (
    position_id,
    enterprise_id,
    position_name,
    description
)
OVERRIDING SYSTEM VALUE
VALUES
(1, 1, 'Staff', 'Pegawai operasional'),
(2, 1, 'Supervisor', 'Mengawasi pekerjaan tim'),
(3, 1, 'Manager', 'Mengelola departemen'),
(4, 1, 'Analyst', 'Melakukan analisis pekerjaan'),
(5, 1, 'Director', 'Memimpin dan mengarahkan organisasi');



INSERT INTO employees (
    enterprise_id,
    user_id,
    department_id,
    position_id,
    employee_number,
    first_name,
    last_name,
    gender,
    date_of_birth,
    email,
    phone,
    hire_date,
    employment_status,
    basic_salary
)
VALUES
(1, NULL, 1, 1, 'EMP-001', 'Andi', 'Pratama', 'male', '1995-05-12', 'andi@company.com', '081234567801', '2022-01-10', 'active', 8500000),
(1, NULL, 1, 2, 'EMP-002', 'Siti', 'Aminah', 'female', '1997-08-20', 'siti@company.com', '081234567802', '2022-03-15', 'active', 7500000),
(1, NULL, 2, 3, 'EMP-003', 'Budi', 'Santoso', 'male', '1993-11-05', 'budi@company.com', '081234567803', '2021-06-01', 'active', 9500000),
(1, NULL, 2, 4, 'EMP-004', 'Dewi', 'Lestari', 'female', '1998-02-14', 'dewi@company.com', '081234567804', '2023-01-02', 'active', 6500000),
(1, NULL, 3, 5, 'EMP-005', 'Rizky', 'Firmansyah', 'male', '1996-07-25', 'rizky@company.com', '081234567805', '2023-05-10', 'active', 7000000),
(1, NULL, 1, 3, 'EMP-006', 'Rina', 'Anggraini', 'female', '1994-03-18', 'rina@company.com', '081234567806', '2021-08-12', 'active', 9000000),
(1, NULL, 2, 2, 'EMP-007', 'Dimas', 'Saputra', 'male', '1992-09-22', 'dimas@company.com', '081234567807', '2020-04-20', 'active', 10500000),
(1, NULL, 3, 1, 'EMP-008', 'Maya', 'Putri', 'female', '1999-01-30', 'maya@company.com', '081234567808', '2023-07-03', 'active', 6000000),
(1, NULL, 1, 4, 'EMP-009', 'Fajar', 'Nugroho', 'male', '1991-06-15', 'fajar@company.com', '081234567809', '2019-02-11', 'active', 11000000),
(1, NULL, 2, 5, 'EMP-010', 'Nadia', 'Permata', 'female', '1996-12-08', 'nadia@company.com', '081234567810', '2022-09-19', 'active', 7200000),
(1, NULL, 3, 2, 'EMP-011', 'Agus', 'Setiawan', 'male', '1990-04-25', 'agus@company.com', '081234567811', '2018-11-05', 'active', 12000000),
(1, NULL, 1, 5, 'EMP-012', 'Intan', 'Sari', 'female', '1998-10-17', 'intan@company.com', '081234567812', '2023-03-13', 'active', 6800000),
(1, NULL, 2, 1, 'EMP-013', 'Arif', 'Rahman', 'male', '1994-07-09', 'arif@company.com', '081234567813', '2021-12-01', 'active', 8800000),
(1, NULL, 3, 3, 'EMP-014', 'Lina', 'Marlina', 'female', '1995-02-27', 'lina@company.com', '081234567814', '2022-05-16', 'active', 8200000),
(1, NULL, 1, 2, 'EMP-015', 'Yoga', 'Prasetyo', 'male', '1997-11-19', 'yoga@company.com', '081234567815', '2023-08-21', 'active', 6500000),
(1, NULL, 2, 4, 'EMP-016', 'Fitri', 'Handayani', 'female', '1993-08-04', 'fitri@company.com', '081234567816', '2020-06-15', 'active', 9800000),
(1, NULL, 3, 4, 'EMP-017', 'Rudi', 'Hartono', 'male', '1989-12-11', 'rudi@company.com', '081234567817', '2017-09-04', 'active', 13500000),
(1, NULL, 1, 1, 'EMP-018', 'Ayu', 'Wulandari', 'female', '2000-05-23', 'ayu@company.com', '081234567818', '2024-01-08', 'active', 5500000),
(1, NULL, 2, 3, 'EMP-019', 'Hendra', 'Wijaya', 'male', '1992-03-07', 'hendra@company.com', '081234567819', '2019-10-14', 'active', 11500000),
(1, NULL, 3, 5, 'EMP-020', 'Vina', 'Oktaviani', 'female', '1997-06-29', 'vina@company.com', '081234567820', '2023-11-06', 'active', 7000000);


SELECT
    e.employee_id,
    e.employee_number,
    e.first_name,
    e.last_name,
    d.department_name,
    p.position_name,
    e.email,
    e.basic_salary,
    e.employment_status
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
LEFT JOIN positions p
    ON e.position_id = p.position_id
ORDER BY e.employee_id;