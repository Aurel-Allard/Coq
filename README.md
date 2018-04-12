Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

# Mailing in production
# Payment in production

<%= form_tag journey_charges_path(@journey) do %>
  <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
    data-key="<%= Rails.configuration.stripe[:publishable_key] %>"
    data-name="Mon Séjour"
    data-email="<%= @journey.user.email %>"
    data-description="Commande N<%= @journey.id %>LCT"
    data-amount="<%= @amount %>"
    data-currency="eur"
    data-label="Paiement">
  </script>
<% end %>
