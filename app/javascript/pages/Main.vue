<template>
  <Layout>
    <Card>
      <p>
        Preconfigured Ruby On Rails Boilerplate To Provide Instant Productivity
        ⚡️
      </p>

      <div class="py-6" v-if="$page.props.user">
        <strong>Welcome {{ $page.props.user.email }}!</strong>
        <inertia-link href="/sign_out">Sign Out</inertia-link>
      </div>
      <div class="flex py-6" v-else>
        <inertia-link href="/sign_in">Sign In</inertia-link>
        <inertia-link href="/sign_up">Sign Up</inertia-link>
      </div>
    </Card>
  </Layout>
</template>

<script>
export default {};
</script>

<style>
</style>