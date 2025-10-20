<script setup>
import { Link } from '@inertiajs/vue3'
</script>

<template>
  <header class="container mx-auto max-w-xl flex justify-end items-center py-4">
    <nav class="flex items-center gap-4">
      <Link href="/session/new" class="text-indigo-600 hover:text-white border border-indigo-600 hover:bg-indigo-600 py-2 px-4 font-medium rounded-md">Sign In</Link>
      <Link href="/registration/new" class=" text-white bg-slate-950 hover:bg-slate-700 py-2 px-4 font-medium rounded-md">Sign Up</Link>
    </nav>
  </header>
</template>