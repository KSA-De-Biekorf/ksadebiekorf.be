<script lang="ts">
  import { onDestroy } from 'svelte';
  import { fade } from 'svelte/transition';

  import MajorHeader from '$lib/forty/major-header.svelte';
  import { modalController } from '$lib/stores/modal-controller.ts';

  export let onHide: () => {};

  let _modalController;
  const unsubscribe = modalController.subscribe((v) => {
    _modalController = v;
  });

  onDestroy(unsubscribe);
</script>
  
<div class="modal" id="modal-content" transition:fade>
  <div class="close-container">
    <div class="close-button">
      <a href="" alt="close" class="fa fa-times"
        on:click={(e) => {
          e.preventDefault();
          onHide();
        }}
      ></a>
    </div>
  </div>
  <section id={_modalController.title}>
    <div class="inner">
      <svelte:component this={_modalController.content}/>
  </section>
</div>

<style lang="scss">
  .modal {
    border: 1px solid #d1d5db;
    border-radius: 0.25rem;
    position: fixed;
    top: 0;
    left: 5%;
    z-index: 9999;
    margin-top: 75px;

    width: 90%;
    height: fit-content;
    max-height: 85vh;

    background: #242943;

    overflow-y: auto;

    .close-container {
      position: absolute;
      width: 100%;
    }

    .close-button {
      margin-left: auto;
      position: relative;
      width: fit-content;

      background-color: white;
      border-radius: 100%;
      $size: 25px;
      width: $size;
      height: $size;

      $margin: 10px;
      margin-right: $margin;
      margin-top: $margin;
      
      text-align: center;
      line-height: $size;

      a.fa {
        border-bottom: none;
        color: black;
      }
    }

    .inner {
      padding: 20px;
    }
  }
</style>
