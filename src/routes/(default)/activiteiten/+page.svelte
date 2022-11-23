<script>
  import { onMount } from 'svelte';
  import Footer from '$lib/forty/footer.svelte';
  import Main from '$lib/forty/main.svelte';
  import kalender_pdf from '$lib/pdf/ksa_kalender_2022_2023.pdf';
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
      <p><strong>Kameraad in't Kwadraat!&nbsp;</strong></p>
      <p><span><span><span>Vriendschap is <strong>gelijkwaardig geven en nemen</strong> en ten allen tijde de mogelijkheid hebben om jezelf te zijn. Vriendschap is <strong>sympathie en empathie</strong>. Dat is <strong>wederzijds begrip</strong> en <strong>medeleven</strong> tonen. Dat is <strong>eerlijk</strong> durven zijn, ook in situaties waarin het voor anderen moeilijk kan zijn om de waarheid te spreken of te horen. Vriendschap is je eigen <strong>gevoelens durven uiten</strong>, fouten en vergissingen durven maken zonder bang te zijn dat je daarvoor wordt veroordeeld. Vriendschap is <strong>vertrouwen</strong> in elkaar. Vriendschap is <strong>zorg dragen voor elkaar.</strong> </span></span></span></p>
      <p><span><span><span>Aan de <strong>basis</strong> van elke vriendschap ligt ten minste één <strong>gezamenlijke interesse of ervaring.</strong> Bij de start van ieders KSA-carrière is die ene gemeenschappelijke interesse: KSA! De gezamenlijke ervaringen worden opgebouwd doorheen de KSA-carrière en versterken vriendschappen die vaak al van jongs af aan beginnen. Uit die levenslange vriendschappen vloeien er connecties waarop zowel nu als later beroep kan gedaan worden. De vriendschappen die je bij KSA sluit zijn oprecht, zonder houdbaarheidsdatum en bevatten net dat tikkeltje meer.&nbsp; </span></span></span></p>  
      <p><span><span><span>Daarnaast vormen vriendschappen bij KSA een <strong>vangnet</strong> voor als het even moeilijk gaat. Zowel leiding als leden dragen zorg voor elkaar door binnen de beweging met respect naar iedereen te <strong>luisteren</strong>. De deur staat altijd open voor een goed gesprek, een luisterend oor, een schouderklop, een glimlach of een leuke activiteit tijdens KSA. </span></span></span></p>
      <p><span><span><span>Bij KSA dragen we allemaal een <strong>verantwoordelijkheid</strong> over en voor elkaar. Vriendschap bij KSA reikt veel verder dan de activiteiten op zaterdag en zondag. KSA’er ben je namelijk niet voor even, dat ben je voor het leven. Door spel, plezier, avontuur maar ook soms verdriet ontstaat er bij KSA een <strong>hechte vertrouwensband.</strong> </span></span></span></p>
      <p><span><span><span>Bij KSA zijn we 72.000 handen op één buik. Je vind er de vriendschappen met net dat tikkeltje meer. Bij KSA vind je jouw kameraad in’t kwadraat! </span></span></span></p>
      <div class="jaarthema-container">
        <div class="inner">
          <img class="jaarthema" alt="logo-jaarthema" src={jaarthema}/>
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
