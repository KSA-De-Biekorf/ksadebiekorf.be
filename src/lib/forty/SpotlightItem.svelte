<script lang="ts">
  export let ban: Ban;

  type Ban = {
    id: string,
    name: string,
    leiding: Leiding[],
  };

  type Leiding = {
    aanspreking: Gen,
    phone?: string,
    name: string,
  };

  enum Gen {
    Man, Vrouw, X
  };

  function formatBan(ban: string): string {
    if (ban[ban.length - 1] == "s") {
      return ban.substring(0, ban.length - 1);
    } else {
      return ban;
    }
  }

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

</script>

<section id={ban.id}>
  <div class="image">
    <slot></slot>
  </div>
  <div class="content">
    <div class="inner">
      <header class="major">
        <h3>{formatBan(ban.name)}leiding</h3>
      </header>
      <p>
        <b>Banleid{ban.leiding[0].aanspreking == Gen.Vrouw ? "st" : ""}er</b>:
        {ban.leiding[0].name} 
          - <a href={`callto:${formatPhone(ban.leiding[0].phone)}`}>
          {ban.leiding[0].phone}</a><br/>
      </p>
    </div>
  </div>
</section>

