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
tm = Course.create(
    name: 'Những NLCB của CNML I',
    label: 'SSH1110',
    volumn: 2,
    program: it_1
)
pldc = Course.create(
    name: 'Pháp luật đại cương',
    label: 'EM1170',
    volumn: 2,
    program: it_1
)
vldcm = Course.create(
    name: 'Vật lý đại cương I',
    label: 'PH1110',
    volumn: 3,
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


# it2
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
vldch = Course.create(
    name: 'Vật lý đại cương II',
    label: 'PH1120',
    volumn: 3,
    program: it_2
)
th = Course.create(
    name: 'Những NLCB của CNML II',
    label: 'SSH1120',
    volumn: 3,
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
tthcm = Course.create(
    name: 'Tư tưởng HCM',
    label: 'SSH1050',
    volumn: 2,
    program: it_3
)
vldt = Course.create(
    name: 'Vật lý điện tử',
    label: 'PH3330',
    volumn: 3,
    program: it_3
)
nmcntt = Course.create(
    name: 'Nhập môn CNTT và TT',
    label: 'IT2000',
    volumn: 3,
    program: it_3
)
xstk = Course.create(
    name: 'Xác suất thống kê',
    label: 'MI2020',
    volumn: 3,
    program: it_3
)
thdc = Course.create(
    name: 'Tin học đại cương',
    label: 'IT1110',
    volumn: 4,
    program: it_3
)

# it4
bcm = Course.create(
    name: 'Bóng chuyền 1',
    label: 'PE2101',
    volumn: 0,
    program: it_4
)
ktlt = Course.create(
    name: 'Kỹ thuật lập trình',
    label: 'IT3040',
    volumn: 2,
    program: it_4
)
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
nlhdh = Course.create(
    name: 'Nguyên lý hệ điều hành',
    label: 'IT3070',
    volumn: 3,
    program: it_4
)


# it5
bch = Course.create(
    name: 'Bóng chuyền 2',
    label: 'PE2102',
    volumn: 0,
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
dam = Course.create(
    name: 'Project I',
    label: 'IT3910',
    volumn: 3,
    program: it_5
)


# it6
lttt = Course.create(
    name: 'Lý thuyết thông tin',
    label: 'IT4590',
    volumn: 2,
    program: it_6
)
tcd = Course.create(
    name: 'Toán chuyên đề',
    label: 'IT3060',
    volumn: 2,
    program: it_6
)
pttkht = Course.create(
    name: 'Phân tích và thiết kế hệ thống',
    label: 'IT3120',
    volumn: 2,
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

# it7
pttktt = Course.create(
    name: 'Phân tích và thiết kế thuật toán',
    label: 'IT4053',
    volumn: 2,
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
    volumn: 2,
    program: it_7
)
attt = Course.create(
    name: 'An toàn thông tin',
    label: 'IT4013',
    volumn: 3,
    program: it_7
)
ppd = Course.create(
    name: 'Lý thuyết ngôn ngữ và phương pháp dịch',
    label: 'IT4074',
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
ttkt = Course.create(
    name: 'Thực tập kỹ thuật',
    label: 'IT4991',
    volumn: 2,
    program: it_8
)
hpt = Course.create(
    name: 'Hệ phân tán',
    label: 'IT4610',
    volumn: 2,
    program: it_8
)
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
    name: 'Tương tác Người – Máy',
    label: 'IT4440',
    volumn: 3,
    program: it_8
)
xlttm = Course.create(
    name: 'Xử lý thông tin mờ',
    label: 'IT4844',
    volumn: 3,
    program: it_8
)

# it9
xltn = Course.create(
    name: 'Xử lý tiếng nói',
    label: 'IT4290',
    volumn: 2,
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
htgqd = Course.create(
    name: 'Hệ trợ giúp quyết định',
    label: 'IT4340',
    volumn: 3,
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
    volumn: 12,
    program: it_10
)


khahai = Student.create(
    name: "Lê Khả Hải",
    number: "20164835",
    program: 'IT',
    current_semester: 2,
    info: {
        'gioi_tinh': 'Nam',
        'khoa_hoc': 65,
        'email': 'hai98th@gmail.com',
        'avatar': '/assets/img/profiles/khahai.jpg'
    }
)

Diem.create(course: dlqs, student: khahai, mark: 'C')
Diem.create(course: gdtca, student: khahai, mark: 'F')
Diem.create(course: pldc, student: khahai, mark: 'B')
Diem.create(course: tm, student: khahai, mark: 'B+')
Diem.create(course: vldcm, student: khahai, mark: 'A')
Diem.create(course: ds, student: khahai, mark: 'D+')
Diem.create(course: gtm, student: khahai, mark: 'A+')
khahai.calcCPA

anhtien = Student.create(
    name: "Hồ Anh Tiến",
    number: "20164836",
    program: 'IT',
    current_semester: 4,
    info: {
        'gioi_tinh': 'Nam',
        'khoa_hoc': 64,
        'email': 'hoanhtien1998@gmail.com',
        'avatar': '/assets/img/profiles/anhtien.jpg'
    }
)
Diem.create(course: dlqs, student: anhtien, mark: 'F')
Diem.create(course: gdtca, student: anhtien, mark: 'D')
Diem.create(course: pldc, student: anhtien, mark: 'F')
Diem.create(course: tm, student: anhtien, mark: 'A+')
Diem.create(course: vldcm, student: anhtien, mark: 'D+')
Diem.create(course: ds, student: anhtien, mark: 'B')
Diem.create(course: gtm, student: anhtien, mark: 'F')

Diem.create(course: ctqpan, student: anhtien, mark: 'A+')
Diem.create(course: gdtcb, student: anhtien, mark: 'A+')
Diem.create(course: qthdc, student: anhtien, mark: 'D')
Diem.create(course: gth, student: anhtien, mark: 'D')
Diem.create(course: gtb, student: anhtien, mark: 'C')
Diem.create(course: vldch, student: anhtien, mark: 'F')
Diem.create(course: th, student: anhtien, mark: 'A+')

Diem.create(course: qsc, student: anhtien, mark: 'A+')
Diem.create(course: gdtcc, student: anhtien, mark: 'A+')
Diem.create(course: tthcm, student: anhtien, mark: 'B')
Diem.create(course: vldt, student: anhtien, mark: 'C')
Diem.create(course: nmcntt, student: anhtien, mark: 'D')
Diem.create(course: xstk, student: anhtien, mark: 'D+')
Diem.create(course: thdc, student: anhtien, mark: 'A+')
anhtien.calcCPA

quanghuy = Student.create(
    name: "Trần Quang Huy",
    number: "20164837",
    program: 'IT',
    current_semester: 6,
    info: {
        'gioi_tinh': 'Nam',
        'khoa_hoc': 63,
        'email': 'hai98th@gmail.com',
        'avatar': '/assets/img/profiles/quanghuy.jpg'
    }
)
Diem.create(course: dlqs, student: quanghuy, mark: 'B')
Diem.create(course: gdtca, student: quanghuy, mark: 'D')
Diem.create(course: pldc, student: quanghuy, mark: 'C')
Diem.create(course: tm, student: quanghuy, mark: 'A+')
Diem.create(course: vldcm, student: quanghuy, mark: 'D+')
Diem.create(course: ds, student: quanghuy, mark: 'B')
Diem.create(course: gtm, student: quanghuy, mark: 'A')

Diem.create(course: ctqpan, student: quanghuy, mark: 'A+')
Diem.create(course: gdtcb, student: quanghuy, mark: 'A+')
Diem.create(course: qthdc, student: quanghuy, mark: 'D')
Diem.create(course: gth, student: quanghuy, mark: 'D')
Diem.create(course: gtb, student: quanghuy, mark: 'C')
Diem.create(course: vldch, student: quanghuy, mark: 'A')
Diem.create(course: th, student: quanghuy, mark: 'A+')

Diem.create(course: qsc, student: quanghuy, mark: 'A+')
Diem.create(course: gdtcc, student: quanghuy, mark: 'A+')
Diem.create(course: tthcm, student: quanghuy, mark: 'B')
Diem.create(course: vldt, student: quanghuy, mark: 'C')
Diem.create(course: nmcntt, student: quanghuy, mark: 'D')
Diem.create(course: xstk, student: quanghuy, mark: 'D+')
Diem.create(course: thdc, student: quanghuy, mark: 'A+')

Diem.create(course: bcm, student: quanghuy, mark: 'A+')
Diem.create(course: ktlt, student: quanghuy, mark: 'A+')
Diem.create(course: dlcm, student: quanghuy, mark: 'B+')
Diem.create(course: ctdlvgt, student: quanghuy, mark: 'D')
Diem.create(course: trr, student: quanghuy, mark: 'C')
Diem.create(course: ktmt, student: quanghuy, mark: 'A')
Diem.create(course: nlhdh, student: quanghuy, mark: 'A+')


Diem.create(course: bch, student: quanghuy, mark: 'A+')
Diem.create(course: lthdt, student: quanghuy, mark: 'A+')
Diem.create(course: linux, student: quanghuy, mark: 'C')
Diem.create(course: dts, student: quanghuy, mark: 'D')
Diem.create(course: tacntt, student: quanghuy, mark: 'C')
Diem.create(course: mmt, student: quanghuy, mark: 'D')
Diem.create(course: csdl, student: quanghuy, mark: 'A+')
Diem.create(course: dam, student: quanghuy, mark: 'A+')

quanghuy.calcCPA


daudung = Student.create(
    name: "Đậu Trung Dũng",
    number: "20164838",
    program: 'IT',
    current_semester: 8,
    info: {
        'gioi_tinh': 'Nam',
        'khoa_hoc': 65,
        'email': 'hai98th@gmail.com',
        'avatar': '/assets/img/profiles/daudung.jpg'
    }
)

Diem.create(course: dlqs, student: daudung, mark: 'B')
Diem.create(course: gdtca, student: daudung, mark: 'D')
Diem.create(course: pldc, student: daudung, mark: 'C')
Diem.create(course: tm, student: daudung, mark: 'F')
Diem.create(course: vldcm, student: daudung, mark: 'D+')
Diem.create(course: ds, student: daudung, mark: 'B')
Diem.create(course: gtm, student: daudung, mark: 'A')

Diem.create(course: ctqpan, student: daudung, mark: 'F')
Diem.create(course: gdtcb, student: daudung, mark: 'F')
Diem.create(course: qthdc, student: daudung, mark: 'D')
Diem.create(course: gth, student: daudung, mark: 'D')
Diem.create(course: gtb, student: daudung, mark: 'C')
Diem.create(course: vldch, student: daudung, mark: 'A')
Diem.create(course: th, student: daudung, mark: 'F')

Diem.create(course: qsc, student: daudung, mark: 'F')
Diem.create(course: gdtcc, student: daudung, mark: 'F')
Diem.create(course: tthcm, student: daudung, mark: 'B')
Diem.create(course: vldt, student: daudung, mark: 'C')
Diem.create(course: nmcntt, student: daudung, mark: 'D')
Diem.create(course: xstk, student: daudung, mark: 'D+')
Diem.create(course: thdc, student: daudung, mark: 'F')

Diem.create(course: bcm, student: daudung, mark: 'F')
Diem.create(course: ktlt, student: daudung, mark: 'F')
Diem.create(course: dlcm, student: daudung, mark: 'B+')
Diem.create(course: ctdlvgt, student: daudung, mark: 'D')
Diem.create(course: trr, student: daudung, mark: 'C')
Diem.create(course: ktmt, student: daudung, mark: 'A')
Diem.create(course: nlhdh, student: daudung, mark: 'F')


Diem.create(course: bch, student: daudung, mark: 'F')
Diem.create(course: lthdt, student: daudung, mark: 'F')
Diem.create(course: linux, student: daudung, mark: 'C')
Diem.create(course: dts, student: daudung, mark: 'D')
Diem.create(course: tacntt, student: daudung, mark: 'C')
Diem.create(course: mmt, student: daudung, mark: 'D')
Diem.create(course: csdl, student: daudung, mark: 'F')
Diem.create(course: dam, student: daudung, mark: 'F')


Diem.create(course: lttt, student: daudung, mark: 'A')
Diem.create(course: tcd, student: daudung, mark: 'B')
Diem.create(course: pttkht, student: daudung, mark: 'B+')
Diem.create(course: dah, student: daudung, mark: 'D')
Diem.create(course: ttnt, student: daudung, mark: 'C')
Diem.create(course: vxl, student: daudung, mark: 'A')
Diem.create(course: xlsth, student: daudung, mark: 'A')


Diem.create(course: pttktt, student: daudung, mark: 'A')
Diem.create(course: nmcnpm, student: daudung, mark: 'B')
Diem.create(course: xla, student: daudung, mark: 'B+')
Diem.create(course: attt, student: daudung, mark: 'D')
Diem.create(course: ppd, student: daudung, mark: 'C')
Diem.create(course: tkqtcsdl, student: daudung, mark: 'A')
Diem.create(course: xlsth, student: daudung, mark: 'A')



daudung.calcCPA