<template>
  <v-app>
    <header-app />
    <home-app />
    <opine-now />
  </v-app>
</template>

<script>

import HeaderApp from './components/HeaderApp.vue'
import HomeApp from './components/HomeApp.vue'
import OpineNow from './components/OpineNow.vue'


export default {
  components: { HeaderApp, HomeApp, OpineNow }
}
</script>

<style></style>
