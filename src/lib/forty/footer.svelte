<script lang="ts">
  import Inschrijven from '$lib/forty/footer-inschrijven.svelte';
  import Socials from '$lib/forty/footer-socials.svelte';
  import Contact from '$lib/forty/footer-contact.svelte';

  export let showInschrijven: boolean = true;
  export let showContact: boolean = true;
  export let showSocials: boolean = true;
</script>

{#if showInschrijven}
  <Inschrijven />
{/if}
{#if showContact}
  <Contact />
{/if}
{#if showSocials}
  <Socials />
{/if}

<style lang="scss">
</style>
