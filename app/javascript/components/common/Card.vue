<template>
  <section class="m-4 p-4">
    <div
      class="flex justify-between items-center py-2 mb-2"
      v-if="$slots.title"
    >
      <h2 class="text-4xl font-bold">
        <slot name="title"></slot>
      </h2>
    </div>
    <div class="bg-white shadow border p-4">
      <slot />
    </div>
  </section>
</template>
