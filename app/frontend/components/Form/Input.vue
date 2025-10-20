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
  errors: {
    type: Array
  }
})
const model = defineModel()
</script>
<template>
  <div class="mb-4">
    <label :for="id" class="mb-1">{{ label }}</label>
    <input :type="type" :id="id" :name="name" class="w-full p-2 border border-gray-300 rounded-md" :placeholder="placeholder" :required="required" v-model="model" />
    <p v-if="errors" class="text-red-500 text-xs mt-1" v-for="error in errors" :key="error">
      <span>{{label}} {{ error }}</span>
    </p>
  </div>
</template>