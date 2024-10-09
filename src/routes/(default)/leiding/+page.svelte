<script lang="ts">
  import Main from '$lib/forty/main.svelte';
  import Spotlight from '$lib/forty/spotlight.svelte';
  import Footer from '$lib/forty/footer.svelte';

  const image_files = import.meta.glob('$lib/images/leiding/*.jpg', { eager: true });
  const images: Map<string, string> = new Map();
  let files = Object.keys(image_files);
  for (let file of files) {
    let p: string[] = file.split("/");
    let key = p[p.length - 1].replace(".jpg", ""); // last path element + remove file extension
    images.set(key, (image_files[file] as { default: string }).default as string);
  }
  
  enum Gen {
    Man, Vrouw, X
  };
  
  let bannen = [
    {
      id: "kab",
      name: "Kabouters",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0472 94 58 21",
          name: "Julie Rosseel",
        }, {
          name: "Hanne Renders",
        }, {
          name: "Noor Bekemans",
        }, {
          name: "Valentine Vermeire",
        }
      ]
    }, {
      id: "pag",
      name: "Pagadders",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0468 53 88 98",
          name: "Lilou Dosselaere",
        }, {
          name: "Louise Brusselle",
        }, {
          name: "Elias Hollevoet",
        }, {
          name: "Mehrbod Farsad",
        }
      ]
    }, {
      id: "jkn",
      name: "Jongknapen",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0468 00 29 40",
          name: "Perle Vanhie",
        }, {
          name: "Rikke Hollevoet",
        }, {
          name: "Rune Vandensteen",
        }, {
          name: "Lukas Devriendt"
        }
      ]
    }, {
      id: "kn",
      name: "Knapen",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0471 87 56 27",
          name: "Briek Debusschere",
        }, {
          name: "Mauro Depauw",
        }, {
          name: "Arwen Masscho",
        }
      ]
    }, {
      id: "jhn",
      name: "Jonghernieuwers",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0492 41 57 69",
          name: "Emile Vandenheede",
        }, {
          name: "Clovis Demey",
        }
      ]
    }, {
      id: "Vlinder",
      name: "Vlinder",
      leiding: [
        {
          name: "Willem Renders",
        }
      ]
    }, {
      id: "hn",
      name: "Hernieuwers",
      leiding: [
        {
          aanspreking: Gen.Man,
          name: "Tine Ruckebusch",
        }, {
          name: "Lieze Maréchal"
        }
      ]
    },
  ];
</script>

<Main>
  <Spotlight bannen={bannen} images={images} />
</Main>
<Footer/>
