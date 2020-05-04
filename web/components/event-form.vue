<template>
  <form
    @submit.prevent="signUpEvent"
    class="flex flex-col p-4 bg-white shadow-md rounded"
    id="form"
    v-if="!alreadySignedUp && !success"
  >
    <h4 class="text-xl mb-4">Formular înscriere</h4>
    <label for="firstname">Prenume *</label>
    <input
      id="firstname"
      name="Prenume"
      v-model="form.firstname"
      type="text"
      placeholder="Daniel"
      class="mb-2"
      required
    />
    <label for="lastname">Numele de familie *</label>
    <input
      id="lastname"
      name="Nume de familie"
      v-model="form.lastname"
      type="text"
      placeholder="Gheorghe"
      class="mb-2"
      required
    />
    <label for="email">Email *</label>
    <input
      id="email"
      name="E-mail de contact"
      v-model="form.email"
      type="email"
      placeholder="gheorghe.daniel@gmail.com"
      class="mb-2"
      required
    />
    <label for="phone">Număr de telefon *</label>
    <input
      id="phone"
      name="Număr de telefon"
      v-model="form.phone"
      type="text"
      placeholder="0712 345 678"
      class="mb-2"
      required
    />
    <label for="facebook">Profil Facebook (opțional)</label>
    <input
      id="facebook"
      name="Link profil facebook, opțional"
      v-model="form.facebook"
      type="text"
      placeholder="https://fb.com/gheorghe.daniel"
      class="mb-2"
    />
    <p class="text-gray-700 mb-4 leading-none">
      <small>
        Apăsând butonul „Înscrie-mă”, sunteți de acord să vă folosim datele personale
        completate pentru a vă putea contacta în scopul proiectului Educație pentru toți.
        Datele dumneavoastră vor fi șterse după eveniment dacă nu doriți să mai primiți
        mail-uri pentru viitoare evenimente. Puteți citi mai multe pe pagina
        <nuxt-link to="/pages/date-personale" class="text-primary-dark bg-primary-lightest px-1">
          despre datele cu caracter personal
        </nuxt-link>.
      </small>
    </p>
    <button type="submit" class="w-full m-0" :disabled="loading">Înscrie-mă!</button>
    <div class="alert error" v-if="error">
      A apărut o eroare, dacă aceasta se repetă, trimite-ne un mesaj pe Facebook și vom reveni în cel mai scurt timp.
    </div>
  </form>
  <div v-else-if="success" class="flex flex-col p-4 bg-white shadow-md rounded">
    <h5 class="font-bold text-primary-light mb-4">Ești înscris!</h5>
    <p>Te vom contacta înainte de eveniment, deci să fii cu ochii pe E-mail! 😉</p>
  </div>
</template>

<script>

export default {
  props: ['eventId', 'eventSlug'],
  data() {
    return {
      form: {
        firstname: null,
        lastname: null,
        email: null,
        phone: null,
        facebook: null
      },
      isAttendee: false,
      alreadySignedUp: false,
      error: null,
      loading: false,
      success: false
    }
  },
  mounted() {
    this.checkOldVisitor()
  },
  methods: {
    async signUpEvent() {
      const { firstname, lastname, email, phone, facebook } = this.form
      this.loading = true
      try {
        await this.$http.post('attendees', {
          firstName: firstname,
          lastName: lastname,
          email: email,
          phone: phone,
          facebook: facebook,
          event: this.eventId
        })
        window.localStorage.setItem('attendee', JSON.stringify(this.form))
        window.localStorage.setItem(this.eventSlug, true)
        this.success = true
        this.error = null
      } catch(err) {
        this.error = true
      }
      this.loading = false
    },
    checkOldVisitor() {
      const attendee = window.localStorage.getItem('attendee')
      const alreadySignedUp = window.localStorage.getItem(this.eventSlug)

      if(alreadySignedUp) {
        return this.alreadySignedUp = true
      }

      if(!attendee) return

      try {
        this.form = JSON.parse(attendee)
      } catch(e) {
        let attendeeData = attendee.split('|')
        this.form.firstname = attendeeData[0]
        this.form.lastname = attendeeData[1]
        this.form.email = attendeeData[2]
      }

      this.isAttendee = true
    }
  }
}
</script>

<style lang="postcss" scoped>
</style>
