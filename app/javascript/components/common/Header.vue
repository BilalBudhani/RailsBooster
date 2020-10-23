<template>
  <header class="border-b bg-white text-indigo-900 py-4 px-4 lg:px-0 mb-4 shadow">
    <div class="container mx-auto flex justify-between items-center">
      <inertia-link href="/" class="font-black text-2xl lg:text-3xl flex items-center text-indigo-900">
          RailsBooster
      </inertia-link>
      <nav class="flex items-center space-x-4" v-if="$page.user">
        <!-- Navigation goes here.. -->
      </nav>
    </div>
  </header>
</template>
