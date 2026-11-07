<script lang="ts">
  import Main from '$lib/forty/main.svelte';
  import Spotlight from '$lib/forty/spotlight.svelte';
  import Footer from '$lib/forty/footer.svelte';

  const image_files = import.meta.glob('$lib/images/leiding/*', { eager: true });
  const images: Map<string, string> = new Map();
  let files = Object.keys(image_files);
  for (let file of files) {
    let p: string[] = file.split("/");
    let key = p[p.length - 1].replace(".jpg", "").replace(".webp", ""); // last path element + remove file extension
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
          phone: "0468 04 53 35",
          name: "Elias Hollevoet",
        }, {
          name: "Imani Depauw",
        }, {
          name: "Jaimy Van Der Velde"
        }, {
          name: "Hélène Van Heule"
        }
      ]
    }, {
      id: "jkn",
      name: "Jongknapen",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          phone: "0467 03 50 40",
          name: "Hanne Renders",
        }, {
          name: "David Ciumac",
        }, {
          name: "Milan Willem",
        }, {
            name: "Tim Dujardin"
        }
      ]
    }, {
      id: "kn",
      name: "Knapen en Jonghernieuwers",
      leiding: [
        {
          aanspreking: Gen.Man,
          phone: "0493 34 64 65",
          name: "Rune Vandersteen",
        }, {
          name: "Lode Renders",
        }, {
          name: "Artur Vandersteen"
        }
      ]
    }, {
      id: "hn",
      name: "Hernieuwers",
      leiding: [
        {
          aanspreking: Gen.Vrouw,
          name: "Rikke Hollevoet",
        }, {
          name: "Briek Debusschere"
        }, {
          name: "Emile Vandenheede"
        }
      ]
    },
  ];
</script>

<Main>
  <Spotlight bannen={bannen} images={images} />
</Main>
<Footer/>
