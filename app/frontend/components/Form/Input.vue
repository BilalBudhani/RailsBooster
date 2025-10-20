<script setup>
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
  placeholder: {
    type: String,
    default: '',
  },
  required: {
    type: Boolean,
    default: false,
  },
  error: {
    type: String
  }
})

</script>
<template>
  <div class="mb-4">
    <label :for="id" class="mb-1">{{ label }}</label>
    <input :type="type" :id="id" :name="name" class="w-full p-2 border border-gray-300 rounded-md" :placeholder="placeholder" :required="required" />
    <p v-if="error" class="text-red-500 text-sm">{{ error }}</p>
  </div>
</template>