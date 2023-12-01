<template>
  <div>
  <v-sheet class="pa-2 mt-4 mb-4" color="green">
    <span class="white--text font-weight-light justify-center align-center d-flex">
      <strong>Veja agora algumas informações sobre o natal!</strong>
    </span>
  </v-sheet>
  <card-info />
</div>
</template>

<script>
import CardInfo from './CardInfo.vue'

export default {
  components: { CardInfo }
}
</script>

<style>

</style>