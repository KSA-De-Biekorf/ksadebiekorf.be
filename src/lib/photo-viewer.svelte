<script lang="ts">
  export let images: string[];
  let selectedImage: string = images[0];
</script>

<div class="slideshow-container">
  <div class="controls">
    <div class="inner">
      <div class="round-button">
        <a href="" alt="prev"
          on:click={(e) => {
            e.preventDefault();
            const idx = images.indexOf(selectedImage);
            if (idx == 0) {
              selectedImage = images[images.length - 1];
            } else {
              selectedImage = images[idx - 1];
            }
          }}
          class="fa fa-chevron-left"
        ></a>
      </div>
      <div class="round-button">
        <a href="" alt="next"
          on:click={(e) => {
            e.preventDefault();
            const idx = images.indexOf(selectedImage);
            if (idx == images.length - 1) {
              selectedImage = images[0];
            } else {
              selectedImage = images[idx + 1];
            }
          }}
          class="fa fa-chevron-right"
        ></a>
      </div>
    </div>
  </div>
  <img src={selectedImage} />
</div>
<div class="thumb-container">
  {#each images as image}
    <img src={image} alt="" on:click={() => {selectedImage = image;} } />
  {/each}
</div>

<style lang="scss">
.controls {
  padding: 10px;

  position: absolute;
  display: flex;
  align-items: center;
  
  width: 100%;
  height: 100%;

  opacity: 0;

  .inner {
    width: 100%;
    z-index: 1;
    display: flex;

    > *:last-of-type {
      margin-left: auto;
    }

    > * {
      display: inline-block;
    }
  }
}

$button-size: 25px;

.round-button {
  background-color: white;
  border-radius: 100%;
  width: $button-size;
  height: $button-size;

  text-align: center;
  line-height: $button-size;

  a.fa {
    text-decoration: none;
    border-bottom: none;
    color: black;

    &:link {
      text-decoration: none;
    }
    &:visited {
      text-decoration: none;
    }
    &:hover {
      text-decoration: none;
    }
    &:active {
      text-decoration: none;
    }
  }
}

.right {
  margin-left: auto;
}

/* Viewer */
.slideshow-container {
  position: relative;

  width:  fit-content;
  margin-bottom: 10px;

  img {
    max-width: 100%;
    max-height: 75vh;
  }

  &:hover .controls {
    opacity: 100%;
  }
}

/* Thumbnail */
.thumb-container {
  overflow-x: auto;
  overflow-y: hidden;
  white-space: nowrap;
  
  > *:not(:last-child) {
    margin-right: 10px;
  }
  
  img {
    width: 100px;
    overflow-x: scroll;
    display: inline-block;
  }

}
</style>
