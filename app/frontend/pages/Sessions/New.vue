<script setup>
import Layout from '@/components/Layouts/Layout.vue'
import { Form, Head } from '@inertiajs/vue3'
import Input from '@/components/Form/Input.vue'

defineOptions({
  layout: Layout,
})
</script>

<template>
  <Head title="Sign In" />
  <h2 class="text-3xl font-bold mb-2">Sign In</h2>
  <Form action="/session" method="post" #default="{processing}">

    <Input label="Email" type="email" id="email" name="email" placeholder="example@example.com" required />
    <Input label="Password" type="password" id="password" name="password" placeholder="********" required />

    <button type="submit" class="text-white bg-slate-950 hover:bg-slate-700 py-2 px-4 font-medium rounded-md" :disabled="processing" :class="{'opacity-50 cursor-not-allowed': processing}">
      <span v-if="processing">Please wait...</span>
      <span v-else>Sign In</span>
    </button>
  </Form>
</template>