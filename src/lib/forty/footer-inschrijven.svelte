<script>
  import SolidButton from '$lib/forty/button-solid.svelte';
</script>

<section id="inschrijven" style="border-bottom: 1px solid rgba(212, 212, 255, 0.1)">
  <div class="inner">
    <div class="content" style="margin-left: auto; margin-right: auto; width: fit-content; text-align: center;">
      <h1 style="text-align: center;">
        Overtuigd?
      </h1>
      <SolidButton href="/inschrijven" label="Schrijf je in!" />
      <br/>
      <p>Of kom een proberen op onze <b>startdag</b> op <b>11/10</b>!</p>
    </div>
  </div>
</section>

<style lang="scss">
  @import '$lib/css/main.css';

  #inschrijven {
    .inner {
      padding-top: 40px;
      padding-bottom: 40px;
    }
  }
</style>
