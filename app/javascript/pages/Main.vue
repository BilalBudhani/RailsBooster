<template>
  <Layout>
    <Card>
      <h1>RailsBooster</h1>
      <p>Preconfigured Ruby On Rails Boilerplate To Provide Instant Productivity ⚡️</p>

      <div class="py-6" v-if="$page.props.user">
        <strong>Welcome {{$page.props.user.email}}!</strong>
        <button>Sign out</button>
      </div>
      <div class="flex py-6" v-else>
        <button @click="login">Sign in</button>
      </div>
    </Card>
  </Layout>
</template>

<script>
export default {
  methods: {
    logout() {
      this.$inertia.delete(`/users/sign_out`)
    },
    login() {
      this.$inertia.visit(`/users/sign_in`)
    }
  }
}
</script>

<style>

</style>