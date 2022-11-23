<script lang="ts">
  // import type { Ban, Gen, Leiding } from '$lib/types/spotlight.ts';
  type Ban = {
    id: string,
    name: string,
    leiding: Leiding[],
    image: string,
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

  function formatPhone(phone: string): string {
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
</script>

<section class="spotlights">
  {#each bannen as ban}
    <section id={ban.name}>
      <div class="image">
        <img src={ban.image} alt={ban.id} data-position="center center"/>
      </div>
      <div class="content">
        <div class="inner">
          <header class="major">
            <h3>{formatBan(ban.name)}leiding</h3>
          </header>
          <p>
            <b>Banleid{ban.leiding[0].aanspreking == Gen.Vrouw ? "st" : ""}er</b>: {ban.leiding[0].name} - <a href={`callto:${formatPhone(ban.leiding[0].phone)}`}>{ban.leiding[0].phone}</a><br/>
            {formatLeiding(ban.leiding)}
          </p>
        </div>
      </div>
    </section>  
  {/each}
</section>

<style lang="scss">
  @import '$lib/css/main.css';
</style>
