<script lang="ts">
  /**
   * Site layout
   */

  import { browser } from '$app/environment';
  import { onDestroy } from 'svelte';

  import Wrapper from '$lib/forty/wrapper.svelte';
  import Header from '$lib/forty/header.svelte';
  import Menu from '$lib/forty/menu.svelte';
  import Modal from  '$lib/elements/modal.svelte';

  import { modalController } from '$lib/stores/modal-controller.ts';

  let _modalController;
  const unsubscribe = modalController.subscribe((v) => {
    _modalController = v;
  });

  onDestroy(unsubscribe);

  export let alt = false;

  // Play initial animations on page load
  $: if (browser) window.addEventListener('load', (_) => {
      setTimeout(() => {
        body.classList.toggle("is-preload", false);
      }, 100);
    });
  // Clear transitioning stazte on unload/hide
  $: if (browser) window.addEventListener('unload', (_) => {
      setTimeout(() => {
        document.querySelectorAll(".is-transitioning").classList.toggle("is-transitioning", false);
      }, 250);
    });
  // IE fix
  $: if (browser && (isIE || isEdge)) body.classList.toggle("is-ie", true);
  
  let menuShown = false;
  function handleMenuClick(): void {
    menuShown = !menuShown;
    document.body.classList.toggle("is-menu-visible");
  }
</script>

<div id="main-content">
  <Wrapper>
    <Header handleMenuClick={handleMenuClick} alt={alt}/>
    <slot></slot>
  </Wrapper>
  {#if _modalController.visible}
    <Modal onHide={() => {
      console.log("hiding");
      modalController.update(() => { 
        return { title: _modalController.title, content: _modalController.content, visible: false } 
      }); 
    }}/>
  {/if}
</div>
<Menu menuShown={menuShown} handleCloseMenu={handleMenuClick}/>

<style>
  #main-content {
    position: relative;
  }
</style>
