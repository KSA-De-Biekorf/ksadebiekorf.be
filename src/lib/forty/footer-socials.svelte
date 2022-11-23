<script lang="ts">
  type Social = {
    href: string;
    faIcon: string;
    label: string;
  };

  export let socials: Social[] = [
    {
      href: "https://www.facebook.com/ksadebiekorf",
      faIcon: "fa-facebook-f",
      label: "Facebook"
    }, {
      href: "https://www.instagram.com/ksadebiekorf",
      faIcon: "fa-instagram",
      label: "Instagram"
    }
  ];
</script>
  
<footer id="footer">
  <div class="inner">
    <ul class="icons">
      {#each socials as social}
        <li>
          <a href={social.href} class={`icon brands alt ${social.faIcon}`}>
            <span class="label">
              {social.label}
            </span>
          </a>
        </li>
      {/each}
    </ul>
    <ul class="copyright">
      <li>&copy; KSA De Biekorf</li>
    </ul>
  </div>
</footer>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
