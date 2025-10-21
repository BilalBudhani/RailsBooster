<script setup>
import { AsteriskIcon } from "lucide-vue-next"

defineOptions({
  inheritAttrs: false
})

const props = defineProps({
  label: {
    type: String,
    required: true,
  },
  name: {
    type: String,
    required: true,
  },
  id: {
    type: String,
    required: true,
  },
  type: {
    type: String,
    default: 'text',
  },
  required: {
    type: Boolean,
    default: false,
  },
  errors: {
    type: Array
  }
})

const model = defineModel()
</script>
<template>
  <div class="mb-4">
    <!-- input label -->
    <label :for="id" class="mb-1 inline-flex items-center gap-0.5">
      <span>{{ label }}</span>
      <AsteriskIcon v-if="required" class="w-3 h-3" />
    </label>

    <!-- input field -->
    <input :type="type" :id="id" :name="name" class="w-full p-2 border border-gray-300 rounded-md" :required="required" v-model="model" v-bind="$attrs" />

    <!-- input form errors -->
    <p v-if="errors" class="text-red-500 text-xs mt-1" v-for="error in errors" :key="error">
      <span>{{label}} {{ error }}</span>
    </p>
  </div>
</template>