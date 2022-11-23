<script lang="ts">
  import { onMount } from 'svelte';
  import verhuur1 from '$lib/images/verhuur1.jpg';
  import verhuur2 from '$lib/images/verhuur2.jpg';
  import verhuur3 from '$lib/images/verhuur3.jpg';
  import verhuur4 from '$lib/images/verhuur4.jpg';
  import verhuur5 from '$lib/images/verhuur5.jpg';
  import verhuur6 from '$lib/images/verhuur6.jpg';

  import Main from '$lib/forty/main.svelte';
  import Footer from '$lib/forty/footer.svelte';
  import MajorHeader from '$lib/forty/major-header.svelte';
  import PhotoViewer from '$lib/photo-viewer.svelte';

  let contactPersoon = {
    name: "Thomas Dobbels",
    phone: "0491 14 41 18",
  };
  function formatPhone(phone: string): string {
    return "+32" + phone.replace(" ", "").substring(1, phone.length);
  }
  let images = [verhuur1, verhuur2, verhuur3, verhuur4, verhuur5, verhuur6];
</script>

<Main alt={true}>
  <section id="verhuur">
    <div class="inner">
      <MajorHeader>
        Verhuur
      </MajorHeader>
      <p>
        Ons lokaal ‘De Biekorf’ kan gehuurd worden voor o.a. familiefeestjes, communies,
        jubilea, verjaardagen, … <br/>
        We beschikken over een mooie zaal met annex een keuken die uitgerust is
        met servies en bestek voor approx. 60 personen. Proper sanitair, een ruim
        terras, voetbalgoals op het grote grasveld en het ganse plein is veilig
        afgesloten zodat kinderen vrij kunnen spelen.
        <br/><br/>
        <b>
          We kunnen helaas geen fuiven toelaten in ons lokaal, en ook is overnachten
          op het terrein verboden.
        </b><br/>
        Info over het huren/beschikbare data van ons lokaal via:
        <a href="mailto:verhuur@ksadebiekorf.be">verhuur@ksadebiekorf.be</a> - {contactPersoon.name} (<a href={`callto:${formatPhone(contactPersoon.phone)}`}>{contactPersoon.phone}</a>)
      </p>
      <PhotoViewer images={images} />
    </div>
  </section>
</Main>
<Footer/>

<style lang="scss">
  
</style>
