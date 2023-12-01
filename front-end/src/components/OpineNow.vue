<template>
  <!-- comment form -->
  <v-form class="mt-10 mr4" v-show="showForm">
    <h4 class="mb-4">Deixe um breve comentário:</h4>
    <v-conteiner>
      <v-row>
        <v-col cols="12" md="4">
          <v-text-field v-model="opine.user_name" label="Nome"></v-text-field>
        </v-col>
        <v-col cols="12" md="4">
          <v-text-field label="Comentário" v-model="opine.comment"></v-text-field>
        </v-col>
      </v-row>
    </v-conteiner>
    <v-action>
      <v-btn class="mr-3" color="primary" @click.prevent="saveOpinion">Salvar</v-btn>
    </v-action>
    <v-action>
      <v-btn color="success" @click.prevent="showComment">Ver Comentários</v-btn>
    </v-action>
  </v-form>
  <!-- comments list -->
  <div v-show="showOpinions">
    <h3 class="justify-center align-center d-flex mt-10 mb-4 text-uppercase">Comentários:</h3>
    <v-sheet :elevation="1" class="pa-2 mt-4 mb-5" v-for="opine in opines" :key="opine">
      <h3 class=" justify-center align-center d-flex mb-4 text-uppercase">
        <stron>{{ opine.user_name }}</stron>
      </h3>
      <div class="white--text font-weight-light justify-center align-center d-flex">{{ opine.comment }}</div>
    </v-sheet>
  </div>
</template>

<script>
import axios from 'axios'

export default {

  data() {
    return {
      showForm: true,
      showOpinions: false,
      opines: [],
      opine: {
        user_name: '',
        comment: ''
      }
    }
  },
  methods: {
    saveOpinion() {
      axios.post('http://localhost:3000/opines', this.opine)
        .then(response => {
          this.opine = ''
          response.data
          this.showForm = false
          this.showOpinions = true
        })
    },
    showComment() {
      this.showOpinions = true
      this.showForm = false
    }

  },
  mounted() {
    axios.get('http://localhost:3000/opines')
      .then(res => {
        this.opines = res.data
      })
  }
}
</script>

<style></style>