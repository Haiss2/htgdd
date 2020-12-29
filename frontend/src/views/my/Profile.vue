<template>
  <b-card class="h-full" id="hai">
    <div class="row" v-if="user.number">
      <div class="col-6">
        <h4>THÔNG TIN SINH VIÊN</h4>
        <hr />
        <div class="row pl-4 py-4" >
          <div class="col-4 border py-3">
            <img :src="user.info.avatar" width="100%" />
             <div class="text-center mt-4"><b>MSSV: </b>{{ user.number }}</div>
          </div>
          <div class="col-8 pl-4">
            <div class="row"><div class="col-5"><b>Họ và tên:</b></div><div class="col-7">{{ user.name }}</div></div>
            <div class="row"><div class="col-5"><b>Bậc đào tạo:</b></div><div class="col-7">KSCLC-TN-TT-VN-ICT</div></div>
            <div class="row"><div class="col-5"><b>Chương trình:</b></div><div class="col-7">KSTN-Công nghệ thông tin</div></div>
            <div class="row"><div class="col-5"><b>Khoa/Viện quản lý:</b></div><div class="col-7">Viện Công nghệ Thông tin và Truyền thông</div></div>
            <div class="row"><div class="col-5"><b>Tình trạng học tập:</b></div><div class="col-7">Học</div></div>
            <div class="row"><div class="col-5"><b>Giới tính:</b></div><div class="col-7">{{user.info.gioi_tinh}}</div></div>
            <div class="row"><div class="col-5"><b>Lớp:</b></div><div class="col-7">KSTN-CNTT-K{{user.info.khoa_hoc}}</div></div>
            <div class="row"><div class="col-5"><b>Khóa học:</b></div><div class="col-7">{{ user.name }}</div></div>
            <div class="row"><div class="col-5"><b>Email:</b></div><div class="col-7">{{user.info.email}}</div></div>
          </div>
        </div>
        <hr/>
      </div>

      <div class="col-1"/>
      <div class="col-5">
        <h4>THÔNG TIN HỌC TẬP</h4>
        <hr />
        <div class="row pb-2">
          <div class="col-8">
            <div><b>Tổng kết học kỳ: </b>20192</div><hr/>
            <div><b>Trung bình tích lũy: </b>{{user.cpa.slice(0,4)}}</div><hr/>
            <div><b>Số TC nợ đăng ký: </b>{{user.no_tin_chi}}</div><hr/>
            <div><b>Số TC tích lũy: </b>{{user.total_tin_chi}}</div><hr/>
            <div><b>Trình độ sinh viên: </b>Kỳ Học {{user.current_semester}}</div><hr/>
            <div class="w-100"><b>Mức cảnh báo: </b>{{canh_bao(user.no_tin_chi)}}</div>
          </div>
        </div>
        <hr/>
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
  methods: {
    canh_bao(no){
      if(no > 27) return 'Đình chỉ học'
      if(no > 16) return 'Mức 2'
      if(no > 8) return 'Mức 1'
      return 'Mức 0'
    }
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