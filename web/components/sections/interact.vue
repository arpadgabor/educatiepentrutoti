<template>
  <section class="w-full mx-auto pb-20">
    <div class="flex flex-col md:flex-row">
      <nuxt-link class="social-link facebook" to="/@/facebook">
        <!-- eslint-disable -->
        <svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path fill="#ffffff" d="M12 2.04C6.5 2.04 2 6.53 2 12.06C2 17.06 5.66 21.21 10.44 21.96V14.96H7.9V12.06H10.44V9.85C10.44 7.34 11.93 5.96 14.22 5.96C15.31 5.96 16.45 6.15 16.45 6.15V8.62H15.19C13.95 8.62 13.56 9.39 13.56 10.18V12.06H16.34L15.89 14.96H13.56V21.96A10 10 0 0 0 22 12.06C22 6.53 17.5 2.04 12 2.04Z"/>
        </svg>
        <span class="ml-4">
          Urmărește-ne pe Facebook!
        </span>
      </nuxt-link>
      <nuxt-link
        class="social-link community"
        to="/@/comunitate"
      >
        <!-- eslint-disable -->
        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="24" height="24" viewBox="0 0 24 24">
          <path class="fill-secondary" d="M12,5.5A3.5,3.5 0 0,1 15.5,9A3.5,3.5 0 0,1 12,12.5A3.5,3.5 0 0,1 8.5,9A3.5,3.5 0 0,1 12,5.5M5,8C5.56,8 6.08,8.15 6.53,8.42C6.38,9.85 6.8,11.27 7.66,12.38C7.16,13.34 6.16,14 5,14A3,3 0 0,1 2,11A3,3 0 0,1 5,8M19,8A3,3 0 0,1 22,11A3,3 0 0,1 19,14C17.84,14 16.84,13.34 16.34,12.38C17.2,11.27 17.62,9.85 17.47,8.42C17.92,8.15 18.44,8 19,8M5.5,18.25C5.5,16.18 8.41,14.5 12,14.5C15.59,14.5 18.5,16.18 18.5,18.25V20H5.5V18.25M0,20V18.5C0,17.11 1.89,15.94 4.45,15.6C3.86,16.28 3.5,17.22 3.5,18.25V20H0M24,20H20.5V18.25C20.5,17.22 20.14,16.28 19.55,15.6C22.11,15.94 24,17.11 24,18.5V20Z" />
        </svg>
        <span class="ml-4">
          Intră în comunitate!
        </span>
      </nuxt-link>
      <nuxt-link
        class="social-link volunteer"
        to="/@/voluntari"
      >
        <!-- eslint-disable -->
        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="24" height="24" viewBox="0 0 24 24">
          <path class="fill-primary" d="M18,19H6V17.6C6,15.6 10,14.5 12,14.5C14,14.5 18,15.6 18,17.6M12,7A3,3 0 0,1 15,10A3,3 0 0,1 12,13A3,3 0 0,1 9,10A3,3 0 0,1 12,7M12,3A1,1 0 0,1 13,4A1,1 0 0,1 12,5A1,1 0 0,1 11,4A1,1 0 0,1 12,3M19,3H14.82C14.4,1.84 13.3,1 12,1C10.7,1 9.6,1.84 9.18,3H5A2,2 0 0,0 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5A2,2 0 0,0 19,3Z"/>
        </svg>
        <span class="ml-4">
          Fii voluntar!
        </span>
      </nuxt-link>
    </div>
  </section>
</template>

<style scoped lang="postcss">
.social-link {
  transition: 0.2s ease-out;
  @apply rounded shadow-md py-3 flex flex-row text-white justify-start items-center px-4 mr-2 mb-2;
}

.social-link:hover {
  transform: scale(1.02);
}

.fill-secondary {
  fill: theme('colors.secondary.normal');
}

.fill-primary {
  fill: theme('colors.primary.normal');
}

.facebook {
  background-color: #3b5998;
}

.community {
  background-color: #fff;
  @apply border border-secondary-light text-secondary-normal;
}

.volunteer {
  @apply community text-primary-normal border-primary-light !important;
}
</style>
