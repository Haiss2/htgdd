<template>
  <b-card class="h-full" id="hai">
    <div class="row" v-if="user.number">
      <div class="col-6">
        <h4>THÔNG TIN SINH VIÊN</h4>
        <hr />
        <div class="row">
          <div class="col-4 border py-3">
            <img :src="user.info.avatar" width="100%" />
             <div class="text-center mt-4"><b>MSSV: </b>{{ user.number }}</div>
          </div>
          <div class="col-8 pl-4">
            <div><b>Họ và tên: </b>{{ user.name }}</div>
            <div><b>Bậc đào tạo: </b>KSCLC-TN-TT-VN-ICT</div>
            <div><b>Chương trình: </b>KSTN-Công nghệ thông tin</div>
            <div><b>Khoa/Viện quản lý: </b>Viện Công nghệ Thông tin và Truyền thông</div>
            <div><b>Tình trạng học tập: </b>Học</div>
            <div><b>Giới tính: </b>{{user.info.gioi_tinh}}</div>
            <div><b>Lớp: </b> KSTN-Công nghệ thông tin-{{user.info.khoa_hoc}}</div>
            <div><b>Khóa học: </b>{{user.info.khoa_hoc}}</div>
            <div><b>Email : </b>{{user.info.email}}</div>
          </div>
        </div>
      </div>

      <div class="col-1"/>
      <div class="col-5">
        <h4>THÔNG TIN HỌC TẬP</h4>
        <hr />
        <div class="row">
          
          <div class="col-8">
            <div><b>Tổng kết học kỳ: </b>20192</div>
            <div><b>GPA học kỳ 20192: </b>{{user.gpa}}</div>
            <div><b>Trung bình tích lũy: </b>{{user.cpa}}</div>
            <div><b>Số TC nợ đăng ký: </b>{{user.no_tin_chi}}</div>
            <div><b>Số TC tích lũy: </b>{{user.total_tin_chi}}</div>
            <div><b>Trình độ sinh viên: </b>Học kỳ {{user.current_semester}}</div>
            <div><b>Mức cảnh báo: </b>M0</div>
          </div>
        </div>
      </div>
    </div>
  </b-card>
</template>
<script>
export default {
  data() {
    return {
      user: {},
    };
  },
  mounted() {
    this.user = JSON.parse(localStorage.getItem("user"));
  },
};
</script>

<style scoped>
.h-full {
  min-height: 70vh;
}

#hai {
  font-size: 1.1rem;
}
</style>