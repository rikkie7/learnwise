document.addEventListener('DOMContentLoaded', function() {
  // Function to insert meta charset tag
  const insertMetaCharset = function() {
      var metaCharset = document.createElement('meta');
      metaCharset.setAttribute("charset", "UTF-8");
      document.head.appendChild(metaCharset);
  };

  // Function to insert the chatbot script
  const chatbotInitiation = function() {
      var script = document.createElement('script');
      script.src = "https://app.aminos.ai/js/chat_plugin.js";
      script.setAttribute("data-bot-id", "31848");
      document.body.appendChild(script);
  };

  // Insert the meta charset tag
  insertMetaCharset();

  // Add chatbot script initiation on first click
  document.addEventListener('click', chatbotInitiation, { once: true });
});

//chatbot
