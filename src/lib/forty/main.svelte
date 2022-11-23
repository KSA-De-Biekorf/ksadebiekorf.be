<script>
  export let alt = false;
</script>
  
<main id="main" class={alt ? "alt" : ""}>
  <slot></slot>
</main>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
