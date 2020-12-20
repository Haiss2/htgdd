<template>
    <b-card class="h-full" id="hai">
        <b-table v-if="user.number" striped hover :items="cookData(user.diems)"/>
    </b-card>
</template>
<script>
export default {
  data() {
    return {
      user: {},
      filter: {
        hoc_ky: 0,
        diem: ''
      }
    };
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