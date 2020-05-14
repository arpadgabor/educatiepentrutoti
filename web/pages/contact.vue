<script>
export default {
  middleware: ['meta-loader'],
  head() {
    return this.$store.state.pageMeta
  },
  data() {
    return {
      form: {
        email: null,
        fullName: null,
        message: null
      },
      status: 'idle',
      error: null,
      buttonText: 'Trimite!'
    }
  },
  methods: {
    async submit() {
      var self = this
      this.status = 'loading'

      try {
        await this.$http.$post('messages', this.form)
        this.buttonText = 'Mesajul s-a trimis!'

        setTimeout(() => {
          self.buttonText = 'Trimite!'
        }, 1000)

        this.reset()
        this.status = 'done'
      } catch (e) {
        this.status = 'error'
        this.error =
          'Nu s-a putut trimite mesajul, încearcă mai târziu sau scrie-ne pe mail.'
      }
    },
    reset() {
      this.form = {
        email: null,
        fullName: null,
        message: null
      }
    }
  }
}
</script>

<template>
  <section name="contact" class="w-full flex flex-col">
    <h1 class="font-bold text-4xl my-8 text-primary-normal leading-tight">
      Contactează-ne!
    </h1>
    <div class="grid grid-cols-1 md:grid-cols-2 col-gap-4">
      <div class="html-content">
        <h3>
          Așteptăm mesajul tău!
        </h3>
        <p>
          Ai feedback pentru proiectul nostru? Idei? Dorești să te implici în
          vreun fel?
        </p>
        <p>
          Completează formularul și te vom contacta, sau scrie-ne direct pe
          mail-ul
          <strong>educatiepentrutoti.esc@gmail.com</strong>
        </p>
      </div>
      <div>
        <form
          class="p-4 bg-white rounded shadow-md w-full flex flex-col"
          @submit.prevent="submit"
        >
          <div class="alert error" v-if="status === 'error'">
            {{ error }}
          </div>
          <label for="fullName">Numele tău (opțional)</label>
          <input
            id="fullName"
            name="Numele tău"
            v-model="form.fullName"
            type="text"
            placeholder="Alex Gheorghe"
            class="mb-2"
          />
          <label for="email">Email *</label>
          <input
            id="email"
            name="E-mail de contact"
            v-model="form.email"
            type="email"
            placeholder="gheorghe.alex@gmail.com"
            class="mb-2"
            required
          />
          <label for="message">Mesaj *</label>
          <textarea
            id="message"
            name="Mesajul tău"
            v-model="form.message"
            placeholder="Scrie-ne mesajul tău!"
            class="mb-2 h-32"
            required
          />
          <button type="submit" :disabled="status === 'loading'">
            {{ buttonText }}
          </button>
        </form>
      </div>
    </div>
  </section>
</template>

<style></style>
