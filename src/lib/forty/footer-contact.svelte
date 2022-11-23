<svelte:head>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</svelte:head>

<section id="contact">
  <div class="inner">
    <section id="contact-form">
      <form method="post" action="https://ksa-form.herokuapp.com/website_form">
        <div class="fields">
          <!--Naam-->
          <div class="field half">
            <label for="name">Naam</label>
            <input type="text" name="name" id="name" />
          </div>
          <!--Email-->
          <div class="field half">
            <label for="name">Email</label>
            <input type="text" name="email" id="email" />
          </div>
          <!--Bericht-->
          <div class="field">
            <label for="name">Bericht</label>
            <textarea type="text" name="message" id="message" rows="6"></textarea>
          </div>
        </div>
        <!--CAPTCHA-->
        <div class="g-recaptcha" data-sitekey="6Lfoo98dAAAAAI_9L5i8tU0oU2jeQkpUFYCFRBg1"></div>
        <br/>
        <!--END CAPTCHA-->
        <ul class="actions">
          <li>
            <input type="submit" value="Verzenden" class="primary"/>
          </li>
          <li>
            <input type="reset" value="Reset" />
          </li>
        </ul>
      </form>
    </section>
    <section class="split">
      <section id="email">
        <div class="contact-method">
          <span class="icon solid alt fa-envelope"></span>
          <h3>Email</h3>
          <a href="mailto:info@ksadebiekorf.be">info@ksadebiekorf.be</a>
        </div>
      </section>
      <section id="adres">
        <div class="contact-method">
          <span class="icon solid alt fa-home"></span>
          <h3>Adres</h3>
          <span>
            Blauwelaan 8<br/>
            8420 Vosseslag<br/>
          </span>
        </div>
      </section>
    </section>
  </div>
</section>

<style lang="scss">
 @import '$lib/css/main.css';
</style>
