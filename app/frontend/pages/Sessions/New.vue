<script setup>
import Layout from '@/components/Layouts/Layout.vue'
import { Form, Head } from '@inertiajs/vue3'
import Input from '@/components/Form/Input.vue'
import Button from '@/components/Form/Button.vue'

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

    <Button :loading="processing" type="submit">Sign In</Button>
  </Form>
</template>