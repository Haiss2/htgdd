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

# it1
pldc = Course.create(
    name: 'Pháp luật đại cương',
    label: 'EM1170',
    volumn: 2,
    program: it_1
)
ds = Course.create(
    name: 'Đại số',
    label: 'MI1140',
    volumn: 4,
    program: it_1
)
gtm = Course.create(
    name: 'Giải tích I',
    label: 'MI1110',
    volumn: 4,
    program: it_1
)
dlqs = Course.create(
    name: 'Đường lối quân sự',
    label: 'MIL1110',
    volumn: 0,
    program: it_1
)
gdtca = Course.create(
    name: 'Giáo dục thể chất A',
    label: 'PE1010',
    volumn: 0,
    program: it_1
)
vldcm = Course.create(
    name: 'Vật lý đại cương I',
    label: 'PH1110',
    volumn: 3,
    program: it_1
)
tm = Course.create(
    name: 'Những NLCB của CNML I',
    label: 'SSH1110',
    volumn: 0,
    program: it_1
)

# it2
qthdc = Course.create(
    name: 'Quản trị học đại cương',
    label: 'EM1010',
    volumn: 2,
    program: it_2
)
gth = Course.create(
    name: '	Giải tích II',
    label: 'MI1120',
    volumn: 3,
    program: it_2
)
gtb = Course.create(
    name: '	Giải tích III',
    label: 'MI1130',
    volumn: 3,
    program: it_2
)
ctqpan = Course.create(
    name: 'Công tác quốc phòng-An ninh',
    label: 'MIL1120',
    volumn: 0,
    program: it_2
)
gdtcb = Course.create(
    name: 'Giáo dục thể chất B',
    label: 'PE1020',
    volumn: 0,
    program: it_2
)
    
vldch = Course.create(
    name: 'Vật lý đại cương II',
    label: 'PH1120',
    volumn: 3,
    program: it_2
)
    
th = Course.create(
    name: 'Những NLCB của CNML II',
    label: 'SSH1120',
    volumn: 0,
    program: it_2
)

# it3	
qsc = Course.create(
    name: 'QS chung và KCT bắn súng AK',
    label: 'MIL1130',
    volumn: 0,
    program: it_3
)
gdtcc= Course.create(
    name: 'Giáo dục thể chất C',
    label: 'PE1030',
    volumn: 0,
    program: it_3
)
vldt = Course.create(
    name: 'Vật lý điện tử',
    label: 'PH3330',
    volumn: 3,
    program: it_3
)
tthcm = Course.create(
    name: 'Tư tưởng HCM',
    label: 'SSH1050',
    volumn: 2,
    program: it_3
)
thdc = Course.create(
    name: 'Tin học đại cương',
    label: 'IT1110',
    volumn: 4,
    program: it_3
)
mncntt= Course.create(
    name: 'Nhập môn CNTT và TT',
    label: 'IT2000',
    volumn: 2,
    program: it_3
)
xstk = Course.create(
    name: 'Xác suất thống kê',
    label: 'MI2020',
    volumn: 3,
    program: it_3
)

# it4
dlcm = Course.create(
    name: 'Đường lối CM của ĐCSVN',
    label: 'SSH1130',
    volumn: 3,
    program: it_4
)
ctdlvgt = Course.create(
    name: 'Cấu trúc dữ liệu và giải thuật',
    label: 'IT3010',
    volumn: 3,
    program: it_4
)
trr = Course.create(
    name: 'Toán rời rạc',
    label: 'IT3020',
    volumn: 3,
    program: it_4
)
ktmt = Course.create(
    name: 'Kiến trúc máy tính',
    label: 'IT3030',
    volumn: 3,
    program: it_4
)
ktlt = Course.create(
    name: 'Kỹ thuật lập trình',
    label: 'IT3040',
    volumn: 2,
    program: it_4
)
nlhdh = Course.create(
    name: 'Nguyên lý hệ điều hành',
    label: 'IT3070',
    volumn: 3,
    program: it_4
)
bcm = Course.create(
    name: 'Bóng chuyền 1',
    label: 'PE2101',
    volumn: 0,
    program: it_4
)

# it5
tacntt = Course.create(
    name: 'Tiếng Anh CN CNTT',
    label: 'IT3053',
    volumn: 3,
    program: it_5
)
mmt = Course.create(
    name: 'Mạng máy tính',
    label: 'IT3080',
    volumn: 3,
    program: it_5
)
csdl = Course.create(
    name: 'Cơ sở dữ liệu',
    label: 'IT3090',
    volumn: 3,
    program: it_5
)
lthdt = Course.create(
    name: 'Lập trình hướng đối tượng',
    label: 'IT3100',
    volumn: 2,
    program: it_5
)
linux = Course.create(
    name: 'Linux và phần mềm nguồn mở',
    label: 'IT3110',
    volumn: 2,
    program: it_5
)
dts = Course.create(
    name: 'Điện tử số',
    label: 'IT3133',
    volumn: 2,
    program: it_5
)
dam = Course.create(
    name: 'Project I',
    label: 'IT3910',
    volumn: 3,
    program: it_5
)
bch = Course.create(
    name: 'Bóng chuyền 2',
    label: 'PE2102',
    volumn: 0,
    program: it_5
)

# it6
tcd = Course.create(
    name: 'Toán chuyên đề',
    label: 'IT3060',
    volumn: 2,
    program: it_6
)
pttkht = Course.create(
    name: 'Phân tích và thiết kế hệ thống',
    label: 'IT3120',
    volumn: 3,
    program: it_6
)
dah = Course.create(
    name: 'Project II',
    label: 'IT3920',
    volumn: 3,
    program: it_6
)
ttnt = Course.create(
    name: 'Trí tuệ nhân tạo',
    label: 'IT4040',
    volumn: 3,
    program: it_6
)
vxl = Course.create(
    name: 'Vi xử lý',
    label: 'IT4160',
    volumn: 3,
    program: it_6
)
xlsth = Course.create(
    name: 'Xử lý số tín hiệu',
    label: 'IT4173',
    volumn: 3,
    program: it_6
)
lttt = Course.create(
    name: 'Lý thuyết thông tin',
    label: 'IT4590',
    volumn: 3,
    program: it_6
)

# it7
attt = Course.create(
    name: 'An toàn thông tin',
    label: 'IT4013',
    volumn: 3,
    program: it_7
)
pttktt = Course.create(
    name: 'Phân tích và thiết kế thuật toán',
    label: 'IT4053',
    volumn: 2,
    program: it_7
)
ppd = Course.create(
    name: 'Lý thuyết ngôn ngữ và phương pháp dịch',
    label: 'IT4074',
    volumn: 3,
    program: it_7
)
nmcnpm = Course.create(
    name: 'Nhập môn công nghệ phần mềm',
    label: 'IT4080',
    volumn: 2,
    program: it_7
)
xla = Course.create(
    name: 'Xử lý ảnh',
    label: 'IT4090',
    volumn: 3,
    program: it_7
)

tkqtcsdl = Course.create(
    name: 'Thiết kế và quản trị cơ sở dữ liệu',
    label: 'IT4852',
    volumn: 3,
    program: it_7
)

# it8
dhvhta = Course.create(
    name: 'Đồ họa và hiện thực ảo',
    label: 'IT4100',
    volumn: 3,
    program: it_8
)
ktgnmt = Course.create(
    name: 'Kỹ thuật ghép nối máy tính',
    label: 'IT4200',
    volumn: 3,
    program: it_8
)
ttnm = Course.create(
    name: 'Tương tác Người –Máy',
    label: 'IT4440',
    volumn: 3,
    program: it_8
)
hpt = Course.create(
    name: 'Hệ phân tán',
    label: 'IT4610',
    volumn: 2,
    program: it_8
)
xlttm = Course.create(
    name: 'Xử lý thông tin mờ',
    label: 'IT4844',
    volumn: 3,
    program: it_8
)
ttkt = Course.create(
    name: 'Thực tập kỹ thuật',
    label: 'IT4991',
    volumn: 2,
    program: it_8
)

# it9
xltn = Course.create(
    name: 'Xử lý tiếng nói',
    label: 'IT4290',
    volumn: 2,
    program: it_9
)
htgqd = Course.create(
    name: 'Hệ trợ giúp quyết định',
    label: 'IT4340',
    volumn: 3,
    program: it_9
)
ktcnpm = Course.create(
    name: 'Kinh tế công nghệ phần mềm',
    label: 'IT4520',
    volumn: 2,
    program: it_9
)
ttdpt = Course.create(
    name: 'Truyền thông đa phương tiện và ứng dụng',
    label: 'IT4680',
    volumn: 2,
    program: it_9
)
ttss = Course.create(
    name: 'Tính toán song song',
    label: 'IT4752',
    volumn: 2,
    program: it_9
)
dab = Course.create(
    name: 'Project 3',
    label: 'IT4940',
    volumn: 3,
    program: it_9
)

# it10
datn = Course.create(
    name: 'Đồ án tốt nghiệp Kỹ sư',
    label: 'IT5130',
    volumn: 10,
    program: it_10
)

khahai = Student.create(
    name: "Lê Khả Hải",
    number: "20164835",
    program: 'IT',
    cpa: 3.52,
    gpa: 3.52,
    current_semester: 2,
    info: {
        'gioi_tinh': 'Nam',
        'khoa_hoc': 65,
        'email': 'hai98th@gmail.com',
        'avatar': '/assets/img/profiles/l-2.jpg'
    }
)
Diem.create(course: ds, student: khahai, mark: 'A')
Diem.create(course: gtm, student: khahai, mark: 'A+')
Diem.create(course: pldc, student: khahai, mark: 'B')
Diem.create(course: dlqs, student: khahai, mark: 'C')
Diem.create(course: gdtca, student: khahai, mark: 'D+')
Diem.create(course: vldcm, student: khahai, mark: 'A')
Diem.create(course: tm, student: khahai, mark: 'B+')
