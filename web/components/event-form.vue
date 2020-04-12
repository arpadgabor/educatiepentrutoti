<template>
  <form
    @submit.prevent="signUpEvent"
    class="flex flex-col p-4 bg-white shadow-md rounded"
    id="form"
    v-if="!alreadySignedUp && !success"
  >
    <h4 class="text-xl mb-4">Formular înscriere</h4>
    <input
      id="firstname"
      name="Prenume"
      v-model="form.firstname"
      type="text"
      placeholder="Prenumele tău *"
      class="mb-2"
      required
    />
    <input
      id="lastname"
      name="Nume de familie"
      v-model="form.lastname"
      type="text"
      placeholder="Numele de familie *"
      class="mb-2"
      required
    />
    <input
      id="email"
      name="E-mail de contact"
      v-model="form.email"
      type="email"
      placeholder="E-mail-ul tău de contact *"
      class="mb-2"
      required
    />
    <input
      id="phone"
      name="Număr de telefon, opțional"
      v-model="form.phone"
      type="text"
      placeholder="Număr de telefon (opțional)"
      class="mb-2"
    />
    <input
      id="facebook"
      name="Link profil facebook, opțional"
      v-model="form.facebook"
      type="text"
      placeholder="Link profil Facebook (opțional)"
      class="mb-2"
    />
    <button type="submit" class="w-full m-0" :disabled="loading">Înscrie-mă!</button>
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
        window.localStorage.setItem('attendee', `${firstname}|${lastname}|${email}`)
        window.localStorage.setItem(this.eventSlug, true)
        this.success = true
        this.error = null
      } catch(err) {
        this.error = err.message
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
      else {
        let attendeeData = attendee.split('|')
        this.form.firstname = attendeeData[0]
        this.form.lastname = attendeeData[1]
        this.form.email = attendeeData[2]
        this.isAttendee = true
      }
    }
  }
}
</script>

<style lang="postcss" scoped>
</style>
