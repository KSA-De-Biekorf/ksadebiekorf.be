<script lang="ts">
  import { browser } from '$app/environment';
  import { onMount, onDestroy } from 'svelte';

  export let header: string = "KSA De Biekorf";
  export let pLineOne: string = "Gevestigd in Klemskerke";
  export let pLineTwo: string = "Gedreven door passie";

	const isIE = browser ? false || !!document.documentMode : false;
	const isEdge = browser ? !isIE && !!window.StyleMedia : false;
  let backgroundPosition: string = "center 0px";

  let children = [];
  const intesity = 0.25;

  onMount(async () => {
    if (browser && !(isIE || isEdge)) {
      const banner = document.querySelector("#banner");
      children = banner.children

      for (let child of banner.children) {
        child.style.backgroundPosition = "center 100%, center 100% center 0px";
      }

      window.addEventListener('scroll', scrollEvent);
    }
  });

  onDestroy(() => {
    if (browser && !(isIE || isEdge)) {
      window.removeEventListener('scroll', scrollEvent);
    }
  });

  function scrollEvent() {
    for (let child of children) {
      let pos = parseInt(document.body.scrollTop) - parseInt(child.getBoundingClientRect().top);
      pos = -window.scrollY;
      backgroundPosition = `center ${(pos * (-1 * intesity))}px`;
      if (window.scrollY == 0) {
        backgroundPosition = `center 0`;
      }
    }
  }
</script>

<section id="banner" class="major" style={`background-position: ${backgroundPosition};`}>
  <div class="inner">
    <header class="major">
      <h1>{header}</h1>
    </header>
    <div class="content">
      <p>{pLineOne}<br/>{pLineTwo}</p>
    </div>
  </div>
</section>

<style lang="scss">
  @import '$lib/css/main.css';

  #banner {
    background-image: url("/assets/images/banner.jpg");
  }
</style>
