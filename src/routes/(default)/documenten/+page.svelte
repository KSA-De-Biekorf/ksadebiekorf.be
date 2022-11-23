<script>
  import Footer from '$lib/forty/footer.svelte';
  import Main from '$lib/forty/main.svelte';
  import MajorHeader from '$lib/forty/major-header.svelte';

  import formulier from '$lib/pdf/Formulier_terugbetaling_Mutualiteiten.pdf';
  import formulier_kamp from '$lib/pdf/Formulier_terugbetaling_Mutualiteiten_kamp.pdf';
  
</script>

<Main alt={true}>
  <section>
    <div class="inner">
      <MajorHeader>Documenten</MajorHeader>
      <p>
        Een deel van het lidgeld en kampgeld kan teruggevraagd worden bij de mutualiteit.
        Hieronder vindt je hiervoor twee ingevulde formulieren.
      </p>
      <a href={formulier} class="button icon solid fa-file-pdf" style="margin-right: 25px;">Terugbetaling activiteit</a>
      <a href={formulier_kamp} class="button icon solid fa-file-pdf">Terugbetaling kamp</a>
    </div>
  </section>
</Main>
<Footer/>
