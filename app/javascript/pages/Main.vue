<template>
  <Layout>
    <Card>
      <p>Preconfigured Ruby On Rails Boilerplate To Provide Instant Productivity ⚡️</p>

      <div class="py-6" v-if="$page.props.user">
        <strong>Welcome {{$page.props.user.email}}!</strong>
        <a href="/users/sign_out">Sign Out</a>
      </div>
      <div class="flex py-6" v-else>
        <a href="/users/sign_in">Sign In</a>
        <a href="/users/sign_up">Sign Up</a>
      </div>
    </Card>
  </Layout>
</template>

<script>
export default {
}
</script>

<style>

</style>