<template>
  <!-- eslint-disable prettier/prettier -->
  <section class="w-full mx-auto flex flex-col justify-start pt-16 z-10">
    <div>
      <a href="https://galerie.educatiepentrutoti.ro/?utm_source=ept_hero&utm_medium=website&utm_campaign=galerie" class="mb-4 flex">
        <span class="py-2 px-3 bg-primary-normal text-white text-xs rounded-full">
          Vezi Galeria Incluziunii!
        </span>
      </a>
      <h1 class="motto">
        <span class="text-secondary-normal">
          accesibilitatea
        </span>
        <span class="text-primary-normal">
          e problema,
        </span>
        <span class="text-secondary-normal">
          nu dizabilitatea.
        </span>
      </h1>
      <p class="w-10/12 sm:w-1/2 md:w-1/2 lg:w-1/3 mt-8 text-lg">
        Suntem un grup de tineri din Universitatea Politehnica Timișoara și vrem să ajutăm persoanele indiferent de dizabilitate
        pentru a putea avea toți acces egal la educație.
      </p>
    </div>
  </section>
</template>

<script>
export default {
}
</script>

<style lang="postcss" scoped>
.motto {
  line-height: 1;
  font-size: 2.5em;
  @apply flex flex-col m-0 font-bold;
}

@screen sm {
  .motto {
    font-size: 4em;
  }
}

@screen md {
  .motto {
    font-size: 5em;
  }
}

@screen lg {
  .motto {
    font-size: 6em;
  }
}
</style>
