<script setup>
import Header  from '@/components/common/Header.vue'
</script>

<template>
  <Header />
  <main class="container mx-auto">
    <slot />
  </main>
</template>