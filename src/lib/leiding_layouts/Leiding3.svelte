<script lang="ts">
export let images: [string]

</script>

<div>
  <img src={images[0]} id="img1" class="leiding-image">
  <div class="vstack">
    <img src={images[1]} id="img2" class="leiding-image">
    <img src={images[2]} id="img3" class="leiding-image">
  </div>
</div>

<style lang="scss">
div.vstack > * {
  float: left;
  dipslay: inline;
}

#img1 {
  padding-bottom: 10px;
}

#img2 {
  padding-right: 10px;
}

.leiding-image {
  height: min(30vh, 100vw);
  width: min(30vh, 100vw);
  object-fit: fill;
}
</style>
