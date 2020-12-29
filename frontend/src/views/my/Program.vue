<template>
  <b-card class="h-full" id="hai">
    <div>
      <b-tabs card no-fade>
        <b-tab :title="'Kỳ Học ' + item.name + item.semester" v-for="(item, index) in user.progams" :key="index" :active="index==user.current_semester-1">
            <b-table striped hover :items="refreshData(item.courses)"/>
            <div class="text-right mr-3">
              <span class="text-success">Tổng cộng</span> <b>{{total(item.courses)}}</b> tín chỉ.
            </div>
        </b-tab>
      </b-tabs>
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
    total(data){
      let result = 0
      data.map(item => {result += item.volumn})
      return result
    },

    refreshData(data){
      return data.map(item => {return{
        'ID': item.id,
        'Học phần': item.name,
        'Mã HP': item.label,
        'Tín chỉ': item.volumn,
        'Kỳ học': item.program_id
      }})

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