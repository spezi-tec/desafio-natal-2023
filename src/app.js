const { createApp } = Vue

  createApp({
    setup() {
        return {
            message: "Hello vue 3!"
        }
      
    }
  }).mount('#app')