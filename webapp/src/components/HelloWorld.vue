<template>
  <h1>adiosseses</h1>
  <q-form
      @submit="onSubmit"
      @reset="onReset"
      class="q-gutter-md"
    >
      <q-input
        filled
        v-model="name"
        label="Your name *"
        hint="Name and surname"
        lazy-rules
        :rules="[ val => val && val.length > 0 || 'Please type something']"
      />

      <q-input
        filled
        type="number"
        v-model="age"
        label="Your age *"
        lazy-rules
        :rules="[
          val => val !== null && val !== '' || 'Please type your age',
          val => val > 0 && val < 100 || 'Please type a real age'
        ]"
      />

      <q-toggle v-model="accept" label="I accept the license and terms" />

      <div>
        <q-btn label="Submit" type="submit" color="primary"/>
        <q-btn label="Reset" type="reset" color="primary" flat class="q-ml-sm" />
      </div>
    </q-form>
</template>

<script>
import { defineComponent, ref } from 'vue'
// import EssentialLink from 'components/EssentialLink.vue'
// import {useFormStore} from '../stores/formStore'
// import { storeToRefs } from 'pinia';
// const linksList = [
//   {
//     title: 'Docs',
//     caption: 'quasar.dev',
//     icon: 'school',
//     link: 'https://quasar.dev'
//   },
//   {
//     title: 'Typography',
//     caption: 'Typography caption',
//     icon: 'lab la-github',
//     link: 'typography'
//   },
//   {
//     title: 'Flex',
//     caption: 'flexxx',
//     icon: 'chat',
//     link: 'flex'
//   },
//   {
//     title: 'Counter',
//     caption: 'contador',
//     icon: 'record_voice_over',
//     link: 'counter'
//   },
//   {
//     title: 'Form',
//     caption: 'Formularios',
//     icon: 'rss_feed',
//     link: 'form'
//   },
//   // {
//   //   title: 'Facebook',
//   //   caption: '@QuasarFramework',
//   //   icon: 'public',
//   //   link: 'https://facebook.quasar.dev'
//   // },
//   // {
//   //   title: 'Quasar Awesome',
//   //   caption: 'Community Quasar projects',
//   //   icon: 'favorite',
//   //   link: 'https://awesome.quasar.dev'
//   // }
// ]

export default defineComponent({
  name: 'HelloWorld',

  components: {
    // EssentialLink
  },

  setup () {
    const leftDrawerOpen = ref(false)
    // const formStore = useFormStore()
    // const { isLoading } = storeToRefs(formStore)
    return {
      // isLoading,
      // essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
})
</script>
<style scoped>
  .spinner{
    width: 100vw;
    height: 100vh;
    z-index: 10;
    position: absolute;
    top: 0;
    background-color: rgba(162, 154, 154, 0.561);
  }
  </style>