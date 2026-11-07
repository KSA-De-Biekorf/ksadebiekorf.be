<script>
  import { onMount } from 'svelte';
  import Footer from '$lib/forty/footer.svelte';
  import Main from '$lib/forty/main.svelte';
  //import kalender_pdf from '$lib/pdf/KALENDER-2024_25.pdf';
  import kalender1 from '$lib/images/kalender1.jpeg';
  import kalender2 from '$lib/images/kalender2.jpeg';
  import jaarthema from '$lib/images/jaarthema.png';

  //onMount(async () => {
  //  const PdfViewer = await import('@accusoft/pdf-viewer');
  //  const PdfViewerControl = PdfViewer.PdfViewerControl;
  //  window.myViewer = await PdfViewerControl.create({
  //    container: document.getElementById('pdf-container'),
  //    sourceDocument: kalender_pdf,
  //  });
  //});

  const jaar = "2025-2026";
</script>

<Main alt={true}>
  <section id="one">
    <div class="inner">
      <header class="major">
        <h1>kalender {jaar}</h1>
      </header>
      <div style="width: 90vw;">
        <img alt="kalender" style="max-width: 100%" src={kalender1} />
        <img alt="kalender" style="max-width: 100%" src={kalender2} />
      </div>
      <!-- <div class="pdf-viewer-container"> -->
      <!--   <div id="pdf-container"></div> -->
      <!-- </div> -->
      <!-- <div class="download-button-container"> -->
      <!--   <div class="inner"> -->
      <!--     <ul class="actions"> -->
      <!-- 			<li><a href={kalender_pdf} class="button icon solid fa-download">Download de kalender</a></li> -->
      <!-- 		</ul> -->
      <!--   </div> -->
      <!-- </div> -->
      <div class="paragraph__text">
      <p><strong>Fantastisch Bombastisch</strong>! Dat is het <strong> jaarthema van 2025-2026</strong>, waarin we volop inzetten op de <strong>kracht van fantasie</strong>.&nbsp;</p>
        <p>Fantasie is de brandstof voor avontuur, spel en ontdekking. Bij KSA krijgt elk kind en elke jongere de kans om hierdoor zichzelf en de wereld op een unieke en creatieve manier te verkennen. Het geeft ons de <strong>ruimte om te dromen, te ontdekken en onze grenzen te verleggen</strong>.&nbsp;&nbsp;</p>
        <p>Het is de motor die ons vooruit duwt in elk spel, elke activiteit en elk verhaal dat we samen beleven. Bij KSA zijn er dan ook <strong> geen grenzen aan verbeelding</strong>. Niets is te gek, te groot, of te klein. Spelenderwijs ontdekken kinderen en jongeren hun eigen talenten en mogelijkheden.&nbsp;</p>
        <p>Daarnaast opent fantasie een wereld vol kansen, waarin iedereen zichzelf mag zijn en waar we samen bouwen aan onvergetelijke momenten. Het is precies die <strong>gedeelde verbeelding die ons verbindt</strong>. Wanneer we samen in een fantasiewereld stappen, groeien we naar elkaar toe. We beleven avonturen, delen dromen en creëren herinneringen die we blijven koesteren. In die magische, gezamenlijke beleving ontstaat een sterk <strong>samenhorigheidsgevoel</strong>. Vriendschappen worden gesmeed, herinneringen worden gedeeld, het wij-gevoel ontstaat, en iedereen voelt zich welkom in de wereld die we samen vormgeven.&nbsp;&nbsp;</p>
        <p>Het vormt een warme en <strong> veilige haven</strong> binnen KSA. Een plek waar kinderen en jongeren even mogen ontsnappen aan de drukte en verwachtingen van het dagelijks leven. In die geborgen fantasiewereld is er ruimte om te ademen, te dromen en helemaal zichzelf te zijn. Ze mogen er vrij experimenteren, fouten maken en groeien. Elk talent krijgt er de ruimte om te bloeien, met aanmoediging en vertrouwen als basis.&nbsp;</p>
        <p>Om fantasie te laten bloeien, moedigen we onze leiding en leden aan om hun creativiteit volledig te benutten. Met dit jaarthema en de ondersteunende materialen geven we hen inspiratie en uitdagingen die hun verbeelding aanwakkeren. Zo dragen zij bij aan een <strong>verbeeldingsvolle KSA-omgeving waar iedereen ongeremd zichzelf kan zijn</strong>.&nbsp;</p>
        <p>Fantasie is een fundamenteel deel van KSA. Het zit in alles wat we doen, en maakt van spelen een onvergetelijke belevenis. Laat dus je verbeelding dit jaar de vrije loop, stap mee in onze wereld en ontdek samen met ons hoe eindeloos de mogelijkheden zijn.&nbsp;</p>
    </div>
      <div class="jaarthema-container">
        <div class="inner">
          <img class="jaarthema" style="max-width: 350px;" alt="logo-jaarthema" src={jaarthema}/>
        </div>
      </div>
    </div>
  </section>
</Main>
<Footer/>

<style lang="scss">
  .pdf-viewer-container {
    width: 100%;
    margin-bottom: 45px;
  }

  #pdf-container {
    margin-left: auto;
    margin-right: auto;
    width: 600px;
  }

  @media only screen and (min-width: 850px) {
    #pdf-container {
      width: 800px;
    }
  }

  @media only screen and (max-width: 650px) {
    #pdf-container {
      width: 90vw;
    }
  }

  .download-button-container {
    width: 100%;

    .inner {
      width: fit-content;
      margin-left: auto;
      margin-right: auto;
    }
  }

  .jaarthema-container {
    width: 100%;

    .inner {
      width: fit-content;
      margin-left: auto;
      margin-right: auto;
    }
  }

  .jaarthema {
    width: 600px;
  }

  @media only screen and (max-width: 800px) {
    .jaarthema {
      width: 50vw;
    }
  }

  @media only screen and (max-width: 600px) {
    .jaarthema {
      width: 70vw;
    }
  }
</style>
