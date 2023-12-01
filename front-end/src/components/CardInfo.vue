<template>
  <v-conteiner class="mt-4">
    <v-row>
      <v-col v-for="item in infos" :key="item.url_img" cols="6" md="4">

        <v-card class="mx-auto mb-1" max-width="500">
          <v-img :src="item.url_img" height="200px" cover></v-img>
          <v-card-title>Natal</v-card-title>
          <v-card-subtitle>{{ item.kind }}</v-card-subtitle>
          <div>
            <v-divider></v-divider>
            <v-card-text>{{ item.description }}</v-card-text>
          </div>
        </v-card>
      </v-col>
    </v-row>
  </v-conteiner>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      infos: []
    }
  },
  mounted() {
    axios.get('http://localhost:3000/infos')
      .then(response => {
        this.infos = response.data
      })
      .catch(error => {
        console.error('Erro ao buscar dados:', error);
      })
  }
}
</script>

<style></style>