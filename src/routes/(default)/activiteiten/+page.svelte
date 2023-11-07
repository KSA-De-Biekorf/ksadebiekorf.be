<script>
  import { onMount } from 'svelte';
  import Footer from '$lib/forty/footer.svelte';
  import Main from '$lib/forty/main.svelte';
  import kalender_pdf from '$lib/pdf/KALENDER-2023_24.pdf';
  import jaarthema from '$lib/images/jaarthema.jpg';
  
  onMount(async () => {
    const PdfViewer = await import('@accusoft/pdf-viewer');
    const PdfViewerControl = PdfViewer.PdfViewerControl;
    window.myViewer = await PdfViewerControl.create({
      container: document.getElementById('pdf-container'),
      sourceDocument: kalender_pdf,
    });
  });

  const jaar = "2022-2023";
</script>

<Main alt={true}>
  <section id="one">
    <div class="inner">
      <header class="major">
        <h1>Kalender {jaar}</h1>
      </header>
      <div class="pdf-viewer-container">
        <div id="pdf-container"></div>
      </div>
      <div class="download-button-container">
        <div class="inner">
          <ul class="actions">
      			<li><a href={kalender_pdf} class="button icon solid fa-download">Download de kalender</a></li>
      		</ul>
        </div>
      </div>
      <div><p><strong>Natuurlijk avontuurlijk!&nbsp;</strong>Dat is het <strong>jaarthema</strong> voor 2023-2024, waarin we de focus leggen op buitenspelen. Want waar leren we meer, dan wanneer we er met onze KSA-groep op uit trekken?!&nbsp;</p><p>De maatschappij, en dus ook ons KSA-landschap, is door de jaren heen enorm geevolueerd. Toch is KSA in de basis steeds onveranderd gebleven. Die basis vertalen we naar de <strong>kernwaarden</strong> waarrond KSA is opgebouwd.</p><p><strong>Spelen&nbsp;</strong>en buitenspelen is en blijft de kern van onze werking. Wanneer we buitenspelen of de natuur opzoeken met onze groep, koppelen we los van alle schermen en zetten we in op onszelf. Er schuilen enorm veel <strong>leerkansen</strong> in buitenspelen, vooral wanneer we kijken naar <strong>avontuurlijk spelen</strong>: kinderen leren spelenderwijs <strong>risico's inschatten</strong> en leren zich voortbewegen in allerlei verschillende omgevingen.&nbsp;</p><p>Bij buitenspelen ondervinden we ook allerlei sociale uitdagingen. We <strong>groeien</strong> in het compromissen sluiten, leren op een goede manier ruziemaken, en leren om samen te werken. Samen <strong>uitdagingen aangaan</strong>, dolle <strong>avonturen beleven</strong> in het bos en op kamp: <strong>groeien</strong> doen we binnen KSA individueel, maar zeker ook als groep. Op die manier leren we inzetten op elkaars sterke eigenschappen en komen we samen tot de hechte gemeenschap die KSA is.</p><p>Die sterke KSA-gemeenschap is wat ons allemaal <strong>verbindt</strong>. De verbindingen die door de jaren heen tussen KSA'ers worden opgebouwd, vormen de <strong>basis van een enorm diepe band&nbsp;</strong>die met de tijd alleen maar wordt versterkt. Deze intens diepe band legt ook de basis voor het grote aandeel aan <strong>engagement</strong> dat binnen onze beweging aanwezig is, en waardoor we kunnen blijven verder bestaan.</p><p>Storm of regen, echte KSA'ers kunnen daar tegen! Deze slogan nemen we mee uit vroegere KSA-jaren. Ze belichaamt volledig waar we met ons komend jaarthema naartoe gaan en staat binnen onze beweging nog steeds als een huis!</p></div>
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
