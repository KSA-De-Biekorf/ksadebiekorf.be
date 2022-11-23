<script>
  import Footer from '$lib/forty/footer.svelte';
  import Main from '$lib/forty/main.svelte';
  import MajorHeader from '$lib/forty/major-header.svelte';
</script>

<Main alt={true}>
  <div class="inner">
    <MajorHeader>Tokshop</MajorHeader>
    <section id="tokshop">
      <p>
        In de tokshop van KSA Noordzeegouw kan een uniform gekocht worden. 
        In onze KSA dragen we <strong>lichtblauwe</strong> hemden, dus niet de donerblauwe.
        Naast het uniform vindt je er ook allerlei coole KSA-gerelateerde spullen.
        <a href="https://www.ksa.be/webshop/ksa-noordzeegouw" class="button icon solid fa-cart" style="margin-right: 25px;margin-bottom:25px;">Naar de webshop</a>
      </p>
    </section>
    <section id="shop KSA De Biekorf">
      <p>
        Naast de spullen op de tokshop, hebben wij zelf ook verschillende artikelen. 
        Wil je graag een t-shirt van KSA De Biekorf? Of ons logo als schildje voor op je nieuwe uniform?
        Vraag het bij de volgende activiteit aan een van de leiding!
        <!--TODO: foto's-->
      </p>
    </section>
  </div>
</Main>
<Footer/>

<style>
  p a {
    margin-top: 15px;
  }
</style>
