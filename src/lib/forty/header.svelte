<script lang="ts">
  import { onMount, onDestroy } from 'svelte';
  
  export let name1: string = "KSA";
  export let name2: string = "De Biekorf";

  export let handleMenuClick: () => void;

  export let alt = false;
  
  let mounted = false;
  onMount(() => {
    if (alt) {
      mounted = true;
      window.addEventListener("scroll", onScroll);
    }
  });

  onDestroy(() => {
    if (mounted && alt) {
      window.removeEventListener("scroll", onScroll);
    }
  });

  let scrollY = 0;
  const onScroll = (event) => {
    scrollY = window.scrollY;
  }
</script>

<header id="header" class={alt ? ( scrollY == 0 ? "alt" : "reveal" ) : ""}>
  <a href="/" class="logo">
    <strong>{name1}</strong>
    <span>{name2}</span>
  </a>
  <nav>
    <a href="#menu" on:click={handleMenuClick}>Menu</a>
  </nav>
</header>

<style lang="scss">
  @import '$lib/css/main.css';
</style>
