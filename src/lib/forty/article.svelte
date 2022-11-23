<script lang="ts">
  import { SectionType } from '$lib/forty/types.ts';

  export let title: string = "Over ons";
  export let section: SectionType = SectionType.Two;
</script>

<section id={section}>
  <article class="inner">
    <header class="major">
      <h2>{title}</h2>
    </header>
    <slot/>
  </article>
</section>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
