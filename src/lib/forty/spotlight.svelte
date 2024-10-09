<script lang="ts">
  import Article from '$lib/forty/article.svelte';
  // import type { Ban, Gen, Leiding } from '$lib/types/spotlight.ts';
  type Ban = {
    id: string,
    name: string,
    leiding: Leiding[],
  };

  enum Gen {
    Man, Vrouw, X
  };

  type Leiding = {
    aanspreking: Gen,
    phone?: string,
    name: string,
  };
  
  export let bannen: Ban[] = [];
  export let images: Map<string, string>;

  function formatPhone(_phone: string | undefined): string {
    let phone = _phone as string;
    return "+32" + phone.substring(1, phone.length).replace(" ", "");
  }

  function formatLeiding(leiding: Leiding[]): string {
    if (leiding.length == 1) return "";
    let total: string = "";
    for (let i = 1; i < leiding.length; i++) {
      total += (i == leiding.length - 1 && i != 1) ? " & " : (i == 1 ? " " : ", ");
      total += leiding[i].name;
    }
    return total;
  }

  function formatBan(ban: string): string {
    if (ban[ban.length - 1] == "s") {
      return ban.substring(0, ban.length - 1);
    } else {
      return ban;
    }
  }

  function leidingImage(images: Map<string, string>, leiding: Leiding): string {
    let idx: string = leiding.name.split(" ")[0].trim();
    console.log("Searching for ", leiding.name, " with index ", `'${idx}'`);
    console.log("in ", images);
    console.log("value: ", images.get(idx));
    return images.get(idx) || "not_found.jpg";
  }
</script>

<!-- <section class="spotlights"> -->
  {#each bannen as ban}
    <section id={ban.id} style="margin-left: 2rem;">
      <Article title="{formatBan(ban.name)}leiding">
        <div style="width:100%;height:100%;">
          <div style="margin-left:auto;margin-right:auto;width:100%;display:flex;flex-wrap:wrap;">
            {#each ban.leiding as leiding}
              <div class="leiding-divider">
                <div class="polaroid">
                  <img src={leidingImage(images, leiding)} alt={leiding.name} class="leiding-image"/>
                  {#if leiding.phone != undefined}
                  <p style="text-decoration: underline;"><b>Banleid{leiding.aanspreking == Gen.Vrouw ? "st" : ""}er</b></p>
                  {/if}
                  <p class="title">{leiding.name}</p>
                  {#if leiding.phone != undefined}
                  <p><a href={`callto:${formatPhone(leiding.phone)}`}>{leiding.phone}</a><br/></p>
                  {/if}
                </div>
              </div>
            {/each} <!-- end leiding -->
          </div>
        </div>
      </Article>
    </section>
  {/each} <!-- end bannen -->
<!-- </section> -->


<!-- <section class="spotlights"> -->
<!--   {#each bannen as ban} -->
<!--     <section id={ban.name}> -->
<!--       <div class="image"> -->
<!--         {#each ban.images as image} -->
<!--           <img src={image} alt={ban.id} data-position="center center"/> -->
<!--         {/each} -->
<!--       </div> -->
<!--       <div class="content"> -->
<!--         <div class="inner"> -->
<!--           <header class="major"> -->
<!--             <h3>{formatBan(ban.name)}leiding</h3> -->
<!--           </header> -->
<!--           <p> -->
<!--             {#if ban.id != "Vlinder"} -->
<!--               <b>Banleid{ban.leiding[0].aanspreking == Gen.Vrouw ? "st" : ""}er</b>: {ban.leiding[0].name} - <a href={`callto:${formatPhone(ban.leiding[0].phone)}`}>{ban.leiding[0].phone}</a><br/> -->
<!--             {/if} -->
<!--             {formatLeiding(ban.leiding)} -->
<!--           </p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </section>   -->
<!--   {/each} -->
<!-- </section> -->

<style lang="scss">
  @import '$lib/css/main.css';
</style>
