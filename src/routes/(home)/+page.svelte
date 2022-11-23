<script lang="ts">
  import Tiles from '$lib/forty/tiles.svelte';
  import Main from '$lib/forty/main.svelte';
  import Banner from '$lib/forty/banner.svelte';
  import Article from '$lib/forty/article.svelte';
  import DefaultButton from '$lib/forty/button-default.svelte';
  import Footer from '$lib/forty/footer.svelte';

  import Kabouters from '$lib/bannen-modal-content/kabouters.svelte';
  import Pagadders from '$lib/bannen-modal-content/pagadders.svelte';
  import Knapen from '$lib/bannen-modal-content/knapen.svelte';
  import Jongknapen from '$lib/bannen-modal-content/jongknapen.svelte';
  import Jonghernieuwers from '$lib/bannen-modal-content/jonghernieuwers.svelte';
  import Hernieuwers from '$lib/bannen-modal-content/hernieuwers.svelte';

  import kab from '$lib/images/bannen/kab.jpg';
  import pag from '$lib/images/bannen/pag.jpg';
  import jkn from '$lib/images/bannen/jkn.jpg';
  import kn from '$lib/images/bannen/kn.jpg';
  import jhn from '$lib/images/bannen/jhn.jpg';
  import hn from '$lib/images/bannen/hn.jpg';

  const tiles = [
    { 
      imgPath: kab,
      alt: "kabouters",
      title: "(piep)Kabouters",
      desc: "3e kleuter, 1ste & 2d leerjaar",
      content: Kabouters
    }, {
      imgPath: pag,
      alt: "pagadders",
      title: "Pagadders",
      desc: "3de & 4de leerjaar",
      content: Pagadders
    }, {
      imgPath: jkn,
      alt: "jongknapen",
      title: "Jongknapen",
      desc: "5de & 6de leerjaar",
      content: Jongknapen
    }, {
      imgPath: kn,
      alt: "knapen",
      title: "Knapen",
      desc: "1ste & 2de middelbaar",
      content: Knapen
    }, {
      imgPath: jhn,
      alt: "jonghernieuwers",
      title: "Jonghernieuwers",
      desc: "3de & 4de middelbaar",
      content: Jonghernieuwers
    }, {
      imgPath: hn,
      alt: "hernieuwers",
      title: "Hernieuwers",
      desc: "+16",
      content: Hernieuwers
    }
  ];
</script>

<Banner />
<Main>
  <Tiles tiles={tiles} />
  <Article title="Over ons">
    <p>Toen in 1974 Willy Snauwaert als pas gewijd priester in Klemskerke aankwam had niemand kunnen vermoeden, niet in het minst hijzelf, wat de jaren zouden brengen voor het dorp en de inwoners ervan. Als jong en dynamisch priester, grootgebracht onder de KSA-vlag van Knokke, moet Klemskerke qua jeugdzorg enerzijds een teleurstelling geweest zijn, maar anderzijds ook een uitdaging.</p>
    <p>KSA de Biekorf is ondertussen uitgegroeid tot een relatief grote jeugdbeweging en telt momenteel zo'n 170 leden van 5 tot 16 jaar. Na al die jaren zijn er nog steeds een heleboel jongeren (leiders) bereid om zich vrijwillig in te zetten voor hun 'gasten'.</p>
    <p>Elke inwoner van Klemskerke kent ongetwijfeld ook de Heidefeesten die om de vijf jaar in september werden georganiseerd. De laatste dateren van 2011, toen werd het 25-jarig bestaan van KSA De Biekorf gevierd met een reünieavond voor de oud-leiders, fuif, volksdansen... Dat dit een groot succes was zullen de aanwezigen geweten hebben. Naast de Heidefeesten organiseert KSA De Biekorf nog een tal van evenementen zoals een spaghettiweekend, een streekbierenavond met bijhorende quiz, ...</p>
    <DefaultButton href="/leiding.html" next={true} label="Ontmoet de leiding" />
  </Article>
</Main>
<Footer />
