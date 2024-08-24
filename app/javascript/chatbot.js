document.addEventListener('DOMContentLoaded', function() {
  const chatbotInitiation = function() {
      var script = document.createElement('script');
      script.src = "https://app.aminos.ai/js/chat_plugin.js";
      script.setAttribute("data-bot-id", "31848");
      document.body.appendChild(script);
  };

  document.addEventListener('click', chatbotInitiation, { once: true });
});

//chatbot
