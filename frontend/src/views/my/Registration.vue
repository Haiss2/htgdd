<template>
    <b-card class="h-full" id="hai">
      <h4>ĐĂNG KÝ HỌC PHẦN - KỲ HỌC {{user.current_semester + 1}}</h4>
      <hr/>
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