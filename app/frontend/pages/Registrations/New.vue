<script setup>
import Layout from '@/components/Layouts/Layout.vue'
import { Form, Head } from '@inertiajs/vue3'
import Input from '@/components/Form/Input.vue'

defineOptions({
  layout: Layout,
})

defineProps({
  time_zones: {
    type: Array
  }
})

</script>

<template>
  <Head title="Sign Up" />
  <h2 class="text-3xl font-bold mb-2">Sign Up</h2>
  <Form action="/registration" method="post" #default="{processing, errors}">

    <Input label="First Name" type="text" id="first_name" name="user[first_name]" placeholder="John" required :errors="errors.first_name" />
    <Input label="Last Name" type="text" id="last_name" name="user[last_name]" placeholder="Doe" required :errors="errors.last_name" />
    <Input label="Email" type="email" id="email" name="user[email]" placeholder="example@example.com" required :errors="errors.email" />
    <Input label="Password" type="password" id="password" name="user[password]" placeholder="********" required :errors="errors.password" />
    <Input label="Password Confirmation" type="password" id="password_confirmation" name="user[password_confirmation]" placeholder="********" required :errors="errors.password_confirmation" />

    <div class="mb-4">
      <label for="time_zone">Time Zone</label>
      <select name="user[time_zone]" id="time_zone" class="w-full p-2 border border-gray-300 rounded-md">
        <option v-for="time_zone in time_zones" :key="time_zone" :value="time_zone">{{ time_zone }}</option>
      </select>
    </div>

    <button type="submit" class="text-white bg-slate-950 hover:bg-slate-700 py-2 px-4 font-medium rounded-md" :disabled="processing" :class="{'opacity-50 cursor-not-allowed': processing}">
      <span v-if="processing">Please wait...</span>
      <span v-else>Sign Up</span>
    </button>
  </Form>
</template>