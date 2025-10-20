<script setup>
import Header  from '@/components/Common/Header.vue'
import Flash from '@/components/Common/Flash.vue'

defineProps({
  flash: {
    type: Object
  },
})
</script>

<template>
  <Header />
  <main class="container mx-auto max-w-xl py-12">
    <Flash :flash="flash" />
    <slot />
  </main>
</template>