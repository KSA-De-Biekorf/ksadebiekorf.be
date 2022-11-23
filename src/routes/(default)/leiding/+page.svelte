<script lang="ts">
  import Main from '$lib/forty/main.svelte';
  import Spotlight from '$lib/forty/spotlight.svelte';
  import Footer from '$lib/forty/footer.svelte';

  import kab from '$lib/images/leiding/kab.jpg';
  import pag from '$lib/images/leiding/pag.jpg';
  import jkn from '$lib/images/leiding/jkn.jpg';
  import kn from '$lib/images/leiding/kn.jpg';
  import jhn from '$lib/images/leiding/jhn.jpg';
  import hn from '$lib/images/leiding/hn.jpg';
  
  enum Gen {
    Man, Vrouw, X
  };
  
  let bannen = [
    {
      id: "kab",
      name: "Kabouters",
      image: kab,
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0472 94 58 21",
          name: "Julie Rosseel"
        }, {
          name: "Manon Keirse"
        }, {
          name: "Rikke Hollevoet"
        }
      ]
    }, {
      id: "pag",
      name: "Pagadders",
      image: pag,
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0479 71 85 43",
          name: "Jana Rosseel"
        }, {
          name: "Louise Brusselle"
        }, {
          name: "Lilou Dosselaere"
        }
      ]
    }, {
      id: "jkn",
      name: "Jongknapen",
      image: jkn,
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0473 28 93 85",
          name: "Silke Pattyn"
        }, {
          name: "Valentine Vermeire"
        }, {
          name: "Clovis Demey"
        }
      ]
    }, {
      id: "kn",
      name: "Knapen",
      image: kn,
      leiding: [
        {
          aanspreking: Gen.Man,
          phone: "0484 02 69 21",
          name: "Theodoor Demey"
        }, {
          name: "Lieze Maréchal"
        }
      ]
    }, {
      id: "jhn",
      name: "Jonghernieuwers",
      image: jhn,
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0468 27 99 90",
          name: "Lux Dosselaere"
        }, {
          name: "Tine Ruckebusch"
        }, {
          name: "Jonas Everaert"
        }
      ]
    }, {
      id: "hn",
      name: "Hernieuwers",
      image: hn,
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0489 64 91 21",
          name: "Lena Van Heddegem"
        }
      ]
    },
  ];
</script>

<Main>
  <Spotlight bannen={bannen} />
</Main>
<Footer/>
