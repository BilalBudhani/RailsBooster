<script setup>
import { computed } from 'vue'
import { CircleAlert, CircleCheck } from 'lucide-vue-next';

const props = defineProps({
  flash: {
    type: Object,
  },
})

const showFlash = computed(() => {
  return props.flash.success || props.flash.alert
})
</script>
<template>
  <section class="text-sm text-center mb-4" v-if="showFlash">

    <div class="rounded-md px-2 py-1 font-medium border inline-flex items-center justify-center" role="alert" :class="{
      'text-green-800 bg-green-50': flash.success,
      'text-red-800 bg-red-50': flash.alert,
    }">
      <CircleAlert class="w-4 h-4" v-if="flash.alert" />
      <CircleCheck class="w-4 h-4" v-if="flash.success" />
      <span class="ml-2">{{ flash?.success || flash?.alert }}</span>
    </div>

  </section>

</template>