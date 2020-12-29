<template>
    <b-card class="h-full" id="hai">
      <div class="d-flex justify-content-between mb-3">
        <div class="w-70">
          <h4 class="ml-4 mt-3">BẢNG ĐIỂM</h4>
        </div>
        
        <div class="w-10">
          <small>Học kỳ</small>
          <v-select :options="['All', 'IT1', 'IT2', 'IT3','IT4', 'IT5', 'IT6', 'IT7','IT8', 'IT9', 'IT10']" v-model="filter_hocky"/>
        </div>
        <div class="w-10">
          <small>Điểm</small>
          <v-select :options="['All', 'A', 'B', 'C','D', 'F']" v-model="filter_diem"/>
        </div>
      </div>
        
        <b-table v-if="user.number" striped hover :items="cookData(user.diems)"/>
        {{filter}}
    </b-card>
</template>
<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";
export default {
  components:{
    vSelect
  },
  data() {
    return {
      user: {},
      filter_hocky: 'All',
      filter_diem: 'All'
    };
  },
  computed:{
    filter(){
      let data = JSON.parse(localStorage.getItem("user"));
      this.user.diems = data.diems.filter( item => {
        let check = true
        if(this.filter_diem != 'All')
          check = check & (item.mark == this.filter_diem || item.mark == `${this.filter_diem}+`)

        if(this.filter_hocky != 'All')
          check = check & `IT${item.course.program_id}` == this.filter_hocky

        return check
      })
    }
  },

  methods: {
    cookData(data){
      return data.map(item => {
        return {
          'ID': item.id,
          'Học phần': item.course.name,
          'Mã HP': item.course.label,
          'Tín chỉ': item.course.volumn,
          'Kỳ học': item.course.program_id,
          'Điểm': item.mark
        }
      })
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