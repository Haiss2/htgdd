<template>
  <b-row class="h-100">
    <b-colxx xxs="12" md="10" class="mx-auto my-auto">
      <b-card class="auth-card" no-body>
        <div class="position-relative image-side">
          <p class="text-white h2">
            {{ $t("dashboards.magic-is-in-the-details") }}
          </p>
          <p class="white mb-0">
            Please use your credentials to login.
            <br />If you are not a member, please
            <router-link tag="a" to="/user/register" class="white"
              >register</router-link
            >.
          </p>
        </div>
        <div class="form-side">
          <router-link tag="a" to="/" class="d-flex mb-3">
            <img src="/assets/logos/hust.jpg" width="50"/> <h2 class="m-auto">Đại học Bách Khoa Hà Nội</h2>
          </router-link>
          <h6 class="mb-4">{{ $t("user.login-title") }}</h6>

          <b-form
            @submit.prevent="formSubmit"
            class="av-tooltip tooltip-label-bottom"
          >
            <b-form-group label="MSSV" class="has-float-label mb-4">
              <b-form-input type="text" v-model="$v.form.email.$model" />
            </b-form-group>

            <b-form-group
              :label="$t('user.password')"
              class="has-float-label mb-4"
            >
              <b-form-input
                type="password"
                v-model="$v.form.password.$model"
                :state="!$v.form.password.$error"
              />
              <b-form-invalid-feedback v-if="!$v.form.password.required"
                >Please enter your password</b-form-invalid-feedback
              >
              <b-form-invalid-feedback
                v-else-if="
                  !$v.form.password.minLength || !$v.form.password.maxLength
                "
                >Your password must be between 4 and 16
                characters</b-form-invalid-feedback
              >
            </b-form-group>
            <div class="d-flex justify-content-between align-items-center">
              <router-link tag="a" to="/user/forgot-password">{{
                $t("user.forgot-password-question")
              }}</router-link>
              <b-button
                @click="userLogin"
                variant="primary"
                size="lg"
                :disabled="processing"
                :class="{
                  'btn-multiple-state btn-shadow': true,
                  'show-spinner': processing,
                  'show-success': !processing && loginError === false,
                  'show-fail': !processing && loginError,
                }"
              >
                <span class="spinner d-inline-block">
                  <span class="bounce1"></span>
                  <span class="bounce2"></span>
                  <span class="bounce3"></span>
                </span>
                <span class="icon success">
                  <i class="simple-icon-check"></i>
                </span>
                <span class="icon fail">
                  <i class="simple-icon-exclamation"></i>
                </span>
                <span class="label">{{ $t("user.login-button") }}</span>
              </b-button>
            </div>
          </b-form>
        </div>
      </b-card>
    </b-colxx>
  </b-row>
</template>

<script>
import { mapGetters, mapActions } from "vuex";
import { validationMixin } from "vuelidate";
import { adminRoot } from "../../constants/config";
const {
  required,
  maxLength,
  minLength,
  email,
} = require("vuelidate/lib/validators");


import axios from 'axios'

export default {
  data() {
    return {
      form: {
        email: "",
        password: "",
      },
    };
  },
  mixins: [validationMixin],
  validations: {
    form: {
      password: {
        required,
        maxLength: maxLength(16),
        minLength: minLength(4),
      },
      email: {
        required,
        email,
        minLength: minLength(4),
      },
    },
  },
  computed: {
    ...mapGetters(["currentUser", "processing", "loginError"]),
  },
  methods: {
    userLogin(){
      let loader = this.$loading.show({color: 'tomato', opacity: 0.9})
      axios.post(process.env.VUE_APP_API_URL + 'students/login', this.form)
      .then(res => {
         setTimeout(()=> {
          loader.hide()
          localStorage.setItem('user', JSON.stringify(res.data))
          this.$router.push('/app/dashboards/analytics')
          this.$notify('success', 'Success!', 'You are login successfully')
      }, 500)

      })
      .catch(err => {
        loader.hide()
        this.$notify('warning', 'Error!', 'MSSV hoac Password khong dung')
      })
      
    }
  },
  watch: {
    currentUser(val) {
      if (val && val.uid && val.uid.length > 0) {
        setTimeout(() => {
          this.$router.push(adminRoot);
        }, 200);
      }
    },
    loginError(val) {
      if (val != null) {
        this.$notify("error", "Login Error", val, {
          duration: 3000,
          permanent: false,
        });
      }
    },
  },
};
</script>
