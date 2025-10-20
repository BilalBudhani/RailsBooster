<script setup>
import Layout from '@/components/Layouts/Layout.vue'
import { Form, Head } from '@inertiajs/vue3'

defineOptions({
  layout: Layout,
})
</script>

<template>
  <Head title="Sign In" />
  <h2 class="text-3xl font-bold mb-2">Sign In</h2>
  <Form action="/session" method="post" #default="{processing}">
    <div class="mb-4">
      <label for="email" class="mb-1">Email</label>
      <input type="email" id="email" name="email" class="w-full p-2 border border-gray-300 rounded-md" placeholder="example@example.com" required />
    </div>
    <div class="mb-4">
      <label for="password" class="mb-1">Password</label>
      <input type="password" id="password" name="password" class="w-full p-2 border border-gray-300 rounded-md" placeholder="********" required />
    </div>
    <button type="submit" class="text-white bg-slate-950 hover:bg-slate-700 py-2 px-4 font-medium rounded-md" :disabled="processing" :class="{'opacity-50 cursor-not-allowed': processing}">
      <span v-if="processing">Please wait...</span>
      <span v-else>Sign In</span>
    </button>
  </Form>
</template>