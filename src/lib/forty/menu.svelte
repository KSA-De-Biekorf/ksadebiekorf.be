<script lang="ts">
  export let menuShown: Boolean;
  export let handleCloseMenu: () => void;

  type MenuItem = {
    link: string;
    name: string;
  };
  export let items: MenuItem[] = [
    { link: "/", name: "Home" },
    { link: "/leiding", name: "Leiding" },
    { link: "/activiteiten", name: "Activiteiten" },
    { link: "/verhuur", name: "Verhuur" },
    { link: "/documenten", name: "Documenten" },
    { link: "/tokshop", name: "Shop" }
  ];
</script>
  
<nav id="menu" style={menuShown ? "" : "visibility: hidden;"}>
  <div class="inner">
    <ul class="links">
      {#each items as item}
        <li><a href={item.link} on:click={handleCloseMenu}>{item.name}</a></li>
      {/each}
    </ul>
  </div>
  <a class="close" href="#menu" on:click={handleCloseMenu}>Close</a>
</nav>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
