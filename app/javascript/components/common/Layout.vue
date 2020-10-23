<template>
  <main class="container mx-auto relative">
    <slot></slot>
  </main>
</template>

<script>
export default {
  computed: {
    flashMessage() {
      const { success, alert } = this.$page.props.flash;
      return success || alert;
    }
  },
  watch: {
    flashMessage() {
      this.showFlashMessages();
    }
  },
  methods: {
    showFlashMessages() {
      if (this.flashMessage) {
        this.$toast.open({
          message: this.flashMessage,
          type: this.$page.props.flash.success ? 'success' : 'error'
        });
      }
    }
  },
  mounted() {
    this.showFlashMessages();
  }
}
</script>