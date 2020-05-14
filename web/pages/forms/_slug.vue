<script>
import { format } from 'date-fns'
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
  head() {
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
  computed: {
    deadline() {
      return format(new Date(this.form.deadline), 'dd.MM, HH:mm')
    },
    isBeforeDeadline() {
      return new Date() < new Date(this.form.deadline)
    }
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
    <figure class="w-full my-8">
      <img
        v-if="form.image"
        :src="`${form.image.url}`"
        :alt="`${form.name}`"
        class="w-full h-full object-cover rounded-lg shadow-lg"
      >
    </figure>
    <header class="max-w-70ch mx-auto px-3 my-8 flex flex-col">
      <small class="text-sm text-gray-700">Deadline — {{ deadline }}</small>
      <h1 class="font-bold text-2xl md:text-4xl leading-tight text-secondary-dark">
        {{ form.name }}
      </h1>
    </header>
    <main class="max-w-70ch flex flex-col mx-auto px-3">
      <section name="content" v-html="$md.render(form.description)" class="html-content">
      </section>
      <section v-if="!completed && isBeforeDeadline" name="start-survey" id="start-survey" class="w-full block">
        <button @click="openForm" class="mx-auto block mb-2 mt-8">
          {{ form.ctaText }}
        </button>
        <small class="text-center text-sm text-gray-700 block">Deadline — {{ deadline }}</small>
      </section>
      <section v-else-if="completed" name="form-completed" class="w-full border border-primary-normal rounded-lg p-4">
        <div class="w-full html-content" v-html="$md.render(form.thanksNote)">
        </div>
      </section>
    </main>
  </article>
</template>

<style lang="postcss" scoped>
.max-w-70ch {
  max-width: 70ch;
}

figure img {
  max-height: 240px;
}
@screen md {
  figure img {
    max-height: 360px;
  }
}
</style>
