<script lang="ts">
  export let next: boolean = false;
  export let href: string;
  export let label: string;

  let buttonClass = "button";
  if (next) buttonClass += " next";
</script>

<ul class="actions">
  <li>
    <a href={href} class={buttonClass}>
      {label}
    </a>
  </li>
</ul>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
