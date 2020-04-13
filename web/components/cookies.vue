<template>
  <div class="container p-0 sticky bottom-0 mx-auto z-50 px-1" v-if="status === 'notset'">
    <div class="flex flex-col lg:flex-row lg:justify-between items-start lg:items-center p-3 lg:pl-4
      bg-secondary-normal shadow-lg mb-4 rounded text-secondary-lightest">
      <p>
        Folosim cookie-uri pentru a monitoriza traficul și pentru a-ți oferi notificări.
        <n-link to="/pages/date-personale" class="font-bold underline hover:text-white">Citește mai mult</n-link>.
      </p>
      <div class="flex flex-row-reverse lg:flex-row mt-4 lg:mt-0">
        <button type="button" @click="removeCookies" class="bg-transparent text-secondary-lightest hover:text-white">
          Dezactivează-le
        </button>
        <button type="button" @click="leaveCookies" class="bg-secondary-lightest text-secondary-dark hover:bg-white">
          E ok așa 👍
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    removeCookies() {
      this.status = 'disabled'
      window.localStorage.setItem('cookies', 'disabled')
      setTimeout(() => {
        this.$cookies.removeAll()
      }, 1000)
    },
    leaveCookies() {
      this.status = 'enabled'
      window.localStorage.setItem('cookies', 'enabled')
    },
    checkCookies() {
      let setting = window.localStorage.getItem('cookies')

      if(setting) {
        this.status = setting
        if(setting === 'disabled') this.removeCookies()
      } else {
        this.status = 'notset'
      }
    }
  },
  data() {
    return {
      status: 'waiting'
    }
  },
  mounted() {
    this.checkCookies()
  }
}
</script>

<style scoped lang="postcss">
</style>
