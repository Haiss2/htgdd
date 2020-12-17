# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create([
    {
        name: "Lê Khả Hải",
        number: "20164835",
        program: 'IT',
        current_semester: 9
    },
    {
        name: "Trần Quang Huy",
        number: "20164836",
        program: 'IT',
        current_semester: 8
    },
    {
        name: "Hồ Anh Tiến",
        number: "20172835",
        program: 'IT',
        current_semester: 7
    },
    {
        name: "Đậu Trung Dũng",
        number: "20172837",
        current_semester: 6,
        program: 'IT'
    }
])

it_1 = Program.create(name: 'IT', semester: 1)
it_2 = Program.create(name: 'IT', semester: 2)
it_3 = Program.create(name: 'IT', semester: 3)
it_4 = Program.create(name: 'IT', semester: 4)
it_5 = Program.create(name: 'IT', semester: 5)
it_6 = Program.create(name: 'IT', semester: 6)
it_7 = Program.create(name: 'IT', semester: 7)
it_8 = Program.create(name: 'IT', semester: 8)
it_9 = Program.create(name: 'IT', semester: 9)
it_10 = Program.create(name: 'IT', semester: 10)


Course.create([
    {
        name: 'Giai Tich 1',
        label: 'MI1240',
        volumn: 4,
        program: it_1
    },
    {
        name: 'Vat Ly 1',
        label: 'MI1540',
        volumn: 3,
        program: it_1
    },
])


student_1 = Student.first
Diem.create(course: Course.first, student: student_1, mark: 'A')
Diem.create(course: Course.second, student: student_1, mark: 'A+')