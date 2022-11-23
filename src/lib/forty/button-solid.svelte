<script lang="ts">
  export let href: string;
  export let next: boolean = false;
  export let label: string;
  
  let btnClass = "button solid";
  if (next) btnClass += " next";
</script>

<a href={href} class={btnClass}>
  {label}
</a>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
