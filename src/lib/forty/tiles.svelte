<script lang="ts">
  import Modal from '$lib/elements/modal.svelte';
  import { modalController } from '$lib/stores/modal-controller.ts';

  type Tile = {
    imgPath: string;
    alt?: string;
    link: string;
    title: string;
    desc: string;
    content: any;
  };

  export let tiles: Tile[] = [];
  export let id: string = "bannen";

  let transition: string = null;
</script>

<section id={id} class="tiles">
  {#each tiles as tile}
    <article
      on:click={() => {
        console.log("click");
        modalController.update(() => { return {title: tile.title, content: tile.content, visible: true}; });
      }}
      style={"background-image: url(" + tile.imgPath + ");"}
      class={ transition == tile.title ? "is-transitioning" : "" }
    >
      <header class="major">
        <h3>
          {tile.title}
        </h3>
        <p>{tile.desc}</p>
      </header>
    </article>
  {/each}
</section>

<style lang="scss">
 @import '$lib/css/main.css';
  article {
    cursor: pointer;
  }
</style>
