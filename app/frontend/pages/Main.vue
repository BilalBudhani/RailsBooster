<script setup>
import { Link, Head } from '@inertiajs/vue3'
import Layout from '@/components/Layouts/Layout.vue'
import { Rocket } from "lucide-vue-next"

defineOptions({
  layout: Layout,
})

defineProps({
  user: {
    type: Object,
  },
})

</script>
<template>
  <Head title="Welcome!" />

  <div class="text-center">
    <h1 class="text-6xl leading-tight font-black inline-flex gap-2 items-center justify-center">
      <Rocket class="w-16 h-16 inline-block" />
      <span>RailsBooster</span>
    </h1>

    <p class="text-xl text-slate-700">Ruby On Rails Starter Kit For Instant Productivity</p>

    <div class="py-6" v-if="user">
      <strong>Welcome {{ user.first_name }}!</strong>
      <Link href="/session/destroy" method="delete" as="button" class="px-4 py-2 border border-red-500 text-red-500 rounded-md">Sign Out</Link>
    </div>
  </div>
</template>