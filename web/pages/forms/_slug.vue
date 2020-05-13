<script>
import { format ,getHours } from 'date-fns'
import { ro } from 'date-fns/locale'
import generateMeta from '@/helpers/meta'

export default {
  layout: 'default',
  transition: 'page',
  async asyncData({ store, params, error, $http }) {
    let form

    try {
      [form] = await $http.$get(`forms/?slug=${params.slug}`)
      if(form) return { form: form }
    } catch (e) {
      return error({ statusCode: e.statusCode, message: e.message })
    }
    return error({ statusCode: 404, message: 'Nu s-a găsit formularul.' })
  },
  head () {
    return generateMeta(this.form.name, this.form.meta_description, this.form.image ? this.form.image.url : undefined)
  },
  data() {
    return {
      completed: false,
      typeform: undefined
    }
  },
  mounted() {
    this.typeform = require('@typeform/embed')
    this.checkCompletion()
    this.loadForm()
  },
  methods: {
    loadForm() {
      if(this.form.provider !== 'typeform') return

      let self = this
      this.embeddedForm = this.typeform.makePopup(this.form.url, {
        mode: 'popup',
        onSubmit() {
          self.finishForm()
        }
      })
    },
    openForm() {
      if(this.form.provider !== 'typeform') {
        return this.$router.push(this.form.url)
      }

      this.embeddedForm.open()
    },
    finishForm() {
      this.embeddedForm.close()
      window.localStorage.setItem(this.form.slug, true)
      this.completed = true
    },
    checkCompletion() {
      if(window.localStorage.getItem(this.form.slug)) {
        this.completed = true
      }
    }
  }
}
</script>

<template>
  <article class="w-full md:w-2/3 lg:w-2/3 mx-auto pb-32">
    <header class="w-full text-center my-8">
      <h1 class="font-bold text-2xl md:text-4xl leading-tight text-secondary-dark">
        {{ form.name }}
      </h1>
    </header>
    <figure class="w-full my-8">
      <img
        v-if="form.image"
        :src="`${form.image.url}`"
        :alt="`${form.name}`"
        class="w-full object-cover rounded-lg shadow-lg"
        style="height: 360px;"
      >
    </figure>
    <main class="max-w-70ch flex flex-col mx-auto px-3">
      <section name="content" v-html="$md.render(form.description)" id="html-content">
      </section>
      <section v-if="!completed" name="call-to-action" class="w-full flex justify-center">
        <button @click="openForm">
          {{ form.ctaText }}
        </button>
      </section>
      <section v-else name="form-completed" class="w-full border border-primary-normal rounded-lg p-4">
        <div class="w-full" v-html="$md.render(form.thanksNote)" id="html-content">
        </div>
      </section>
    </main>
  </article>
</template>

<style lang="postcss">
.max-w-70ch {
  max-width: 70ch;
}
</style>
