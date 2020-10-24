<template>
  <Layout>
    <Card>
      <section class="flex justify-center items-center p-2">
        <h2 class="font-bold text-3xl">Login</h2>
      </section>
      <form
        class="flex flex-col justify-center items-center space-y-4 mt-4"
        @submit.prevent="onSubmit"
      >
        <div>
          <label class="font-semibold">
            Enter your email address
            <input
              v-model="email"
              placeholder="Your email address"
              class="w-full p-2 rounded border-blue-200 border-2 mt-1 outline-none"
              type="email"
              required
            />
          </label>
        </div>
        <div>
          <Button>Login</Button>
        </div>
      </form>
    </Card>
  </Layout>
</template>

<script>
export default {
  data() {
    return {
      email: null,
    };
  },
  methods: {
    onSubmit() {
      this.$inertia.post("/sign_in", {
        session: {
          email: this.email,
        },
      });
    },
  },
};
</script>

<style>
</style>