<script setup>
import { Loader } from 'lucide-vue-next'
defineProps({
  loading: {
    type: Boolean,
    default: false,
  }
})
</script>
<template>
  <button class="text-white bg-slate-950 hover:bg-slate-700 py-2 px-4 font-medium rounded-md" :disabled="loading" :class="{'opacity-50 cursor-not-allowed': loading}">
    <div v-if="loading" class="inline-flex items-center gap-1.5">
      <Loader class="w-4 h-4 animate-spin inline-block" />
      <span>Please wait...</span>
    </div>
    <slot v-else />
  </button>
</template>