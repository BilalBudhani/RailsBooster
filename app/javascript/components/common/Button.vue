<template>
  <button
    class="px-4 py-2 bg-indigo-600 text-white rounded hover:bg-indigo-700 font-semibold"
    :type="type"
  >
    <slot></slot>
  </button>
</template>

<script>
export default {
  props: {
    type: {
      type: String,
      default: "submit",
    },
  },
};
</script>