<template>
    <b-card class="h-full" id="hai">
      <div class="d-flex justify-content-between mb-3">
        <h4>ĐĂNG KÝ HỌC PHẦN - KỲ HỌC {{user.current_semester}}</h4>
        
        <b-button style="margin-top: -8px!important;" class="mr-3" variant="outline-success" v-b-modal.modalright>ĐIỀU CHỈNH HỌC PHẦN</b-button>
      </div>

      <b-modal id="modalright" ref="modalright" title="ĐĂNG KÝ HỌC PHẦN" modal-class="modal-right">
         <div v-for="(course, id) in allCourses" :key="id">
           <div class="d-flex">
             <b-form-checkbox :value="course" v-model="registrationData"/> 
             <h5><b>{{course['Học phần']}}</b></h5>
             
           </div>
           &emsp;&emsp;<b>{{course['Tín chỉ']}}</b> tín chỉ, 
           &emsp;Mã học phần <b>{{course['Mã HP']}}</b>, 
           &emsp;Kỳ học <b>{{course['Kỳ học']}}</b><hr/>
          </div>
          <template slot="modal-footer">
              <b-button variant="secondary" @click="hideModal('modalright')">OK</b-button>
          </template>
      </b-modal>


      <b-table striped hover :items="registrationData">
        <template v-slot:cell(c)="data">
          <div>
            <b-form-checkbox :value="data.item" v-model="checked"/>
          </div>
        </template>
      </b-table>

      <div class="text-right">
        <span class="text-primary">Đã chọn</span> <b>{{choose}}</b> tín chỉ, <span class="text-success">Tổng</span> <b>{{total}}</b> tín chỉ, <span class="text-danger">Tối đa</span> <b>{{maxx}}</b> tín chỉ.
      </div>

      <div class="text-center mt-4">
        <b-button class="mr-3" variant="outline-success" @click="submit">GỬI ĐĂNG KÝ</b-button>
        <b-button variant="outline-secondary" @click="help">TRỢ GIÚP QUYẾT ĐỊNH</b-button>
      </div>
    </b-card>
</template>
<script>
import axios from 'axios'

export default {
  data() {
    return {
      user: {},
      checked: [],
      allCourses: [],
      registrationData: [],
    };
  },
  computed: {
    choose() {
      let result = 0
      this.checked.map(item => result += item['Tín chỉ'])
      return result
    },
    
    total(){
      let result = 0
      this.registrationData.map(item => result += item['Tín chỉ'])
      return result
    },

    maxx(){
      if(this.user.no_tin_chi <= 8) return 24
      if(this.user.no_tin_chi <= 16) return 18
      if(this.user.no_tin_chi <= 27) return 14
      return 0
    }
  },
  methods: {
    
     hideModal (refname) {
      this.$refs[refname].hide()
      console.log('hide modal:: ' + refname)

      if (refname === 'modalnestedinline') {
        this.$refs['modalnested'].show()
      }
    },
    submit(){
      let loader = this.$loading.show({color: 'tomato', opacity: 0.9})
      setTimeout(()=> {
        loader.hide()
        this.$notify('success', 'Success!', 'Đăng ký học tập thành công!')
        this.$router.push('/app/dashboards/analytics')
      }, 1000)
    },
    help(){
      let loader = this.$loading.show({color: 'tomato', opacity: 0.9})
      axios.get(process.env.VUE_APP_API_URL + 'students/' + this.user.id + '/help')
      .then(res =>{
        this.registrationData = this.formatData(res.data, 1)
        this.checked = this.formatData(res.data, 1)
      })

      setTimeout(()=> {
        loader.hide()
      }, 1000)
    },
    formatData(x, detail){
      return x.map(item => {
        let object = {
          C: true,
          'ID': item.id,
          'Học phần': item.name,
          'Mã HP': item.label,
          'Tín chỉ': item.volumn,
          'Kỳ học': item.program_id
        }
        if(detail) object['Ghi chú'] = item.info.note
        return object 
        })
      }
  },
  mounted() {
    this.user = JSON.parse(localStorage.getItem("user"));
    this.registrationData = this.formatData(this.user.progams.filter((item, index) => index == this.user.current_semester - 1)[0].courses)
    this.checked = this.registrationData 
    this.user.progams.map(prog => {
      this.allCourses = this.allCourses.concat(this.formatData(prog.courses))  
    })
    console.log(this.allCourses)
    let loader = this.$loading.show({color: 'tomato', opacity: 0.9})
    setTimeout(()=> {
      loader.hide()
    }, 1000)
  },
};
</script>

<style>
.h-full {
  min-height: 70vh;
}

#hai {
  font-size: 1.1rem
}

.modal-right .modal-dialog {
    max-width: 35vw;
}
.modal-right .modal-header {
  height: 75px!important;
}
</style>