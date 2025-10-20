<script setup>
import Header  from '@/components/Common/Header.vue'
</script>

<template>
  <Header />
  <main class="container mx-auto max-w-xl py-12">
    <slot />
  </main>
</template>