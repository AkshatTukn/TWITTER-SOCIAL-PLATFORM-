<html lang="en" class="">
   <head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
        <link rel="stylesheet" href="/static/css/recommendation.css">

   </head>
   <body>


      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <div class="layout_header">
                     <div class="navbar navbar--header">
                        <div class="navbar_container">
                           <div class="navbar_header">
                              <a class="navbar_brand" href="#/">
                                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path d="M24 13.313c0-2.053-.754-3.026-1.417-3.489.391-1.524 1.03-5.146-.963-7.409-.938-1.065-2.464-1.54-4.12-1.274-1.301-.557-3.266-1.141-5.5-1.141s-4.199.584-5.5 1.141c-1.656-.266-3.182.208-4.12 1.274-1.993 2.263-1.353 5.885-.963 7.409-.663.463-1.417 1.435-1.417 3.489 0 .996.326 2.131.986 3.102-.485 1.421.523 3.049 2.283 2.854-.318 1.622 1.365 2.928 3.082 2.128-.201 1.163 1.421 2.58 3.443 1.569.671.572 1.188 1.034 2.204 1.034 1.155 0 1.846-.643 2.277-1.035 2.022 1.012 3.574-.406 3.374-1.569 1.718.8 3.4-.506 3.082-2.128 1.76.195 2.768-1.433 2.283-2.854.659-.97.986-2.106.986-3.101zm-12 6.57c-1.722 0-2.4-1.883-2.4-1.883h4.8s-.612 1.883-2.4 1.883zm3.578-2.992c-1.052-.515-2.455-1.126-3.578-.322-1.124-.804-2.526-.193-3.578.322-4.251 2.08-8.024-4.023-5.842-5.444.204-.132.488-.135.672-.053.661.292 1.406-.191 1.406-.914 0-2.214.692-4.434 2.154-5.988l.015-.01c2.604-2.596 7.741-2.596 10.345 0l.016.011c1.462 1.554 2.154 3.774 2.154 5.987 0 .726.748 1.205 1.406.914.141-.063.436-.1.671.053 2.15 1.392-1.514 7.561-5.841 5.444zm.172-7.391c-1.124 0-2.094.629-2.607 1.546-.373-.116-.744-.174-1.143-.174s-.77.058-1.143.174c-.513-.917-1.483-1.546-2.607-1.546-1.654 0-3 1.346-3 3s1.346 3 3 3c1.231 0 2.285-.748 2.747-1.811.246-.566.394-1.301 1.003-1.301s.758.735 1.003 1.301c.462 1.063 1.516 1.811 2.747 1.811 1.654 0 3-1.346 3-3s-1.346-3-3-3zm-7.5 4.5c-.828 0-1.5-.672-1.5-1.5s.672-1.5 1.5-1.5 1.5.672 1.5 1.5-.672 1.5-1.5 1.5zm7.5 0c-.828 0-1.5-.672-1.5-1.5s.672-1.5 1.5-1.5 1.5.672 1.5 1.5-.672 1.5-1.5 1.5z"></path>
                                 </svg>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Home</h1>
                        </div>

                        <div class="feed_item">
                           <div class="joke">
                              <textarea id="tweet-message" rows="3" placeholder="What's happening?"></textarea>
                              <div class="bottom">
                              <span data-limit="280">280</span>
                              <button id="create-tweet" type="submit" tabindex="0" >
                              <span tabindex="-1">Tweet</span>
                              </button>
                              </div>
                           </div>
                        </div>
                  <div id="tweet-content"></div>
                        <script id="tweet-template" type="text/x-handlebars-template">
                            {{#data}}
                                <div class="feed_item">
                                                           <div class="joke">
                                                              <div class="joke_wrapper">
                                                                 <div class="joke_block joke_block--header">
                                                                    <span class="joke_element joke_element--author-name">{{author_name}}</span><span class="joke_element joke_element--author-username">{{email}}</span>
                                                                    <div class="joke_element joke_element--author-img"><img src="/static/images/images.jpeg"></div>
                                                                 </div>
                                                                 <div class="joke_block joke_block--text">{{message}}</div>
                                                                 <div class="joke_block joke_block--footer">
                                                                    <ul class="nav nav--joke_rebound">
                                                                       <li class="nav_item">
                                                                          <a class="nav_link nav_link--upvotes" href="#">
                                                                             <svg name="joke_upvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                                                <path d="M22 12c0 5.514-4.486 10-10 10s-10-4.486-10-10 4.486-10 10-10 10 4.486 10 10zm2 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-14 6v-12c-1.465.331-4 2.827-4 6.001 0 3.134 2.521 5.665 4 5.999zm3.998 0l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501zm0-7l-.506-.755s.947-.503.947-1.746c0-1.207-.947-1.745-.947-1.745l.506-.754c.748.281 2.002 1.205 2.002 2.499 0 1.295-1.254 2.218-2.002 2.501z"></path>
                                                                             </svg>
                                                                             4
                                                                          </a>
                                                                       </li>
                                                                       <li class="nav_item">
                                                                          <a class="nav_link nav_link--downvotes" href="#">
                                                                             <svg name="joke_downvotes" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                                                <path d="M3.491 11.432v3.568h-2.254v-4.592c0-.779.366-1.512.989-1.979l4.821-3.621c.678-.509 1.078-.603 2.962-1.305.308-.114.513-.408.513-.737v-2.767h2.226v3.904c0 .688-.412 1.308-1.045 1.574l-2.481 1.045 2.537 3.433c1.046-.764 1.726-1.459 2.937-1.225l6.167 1.195-.529 2.713-4.865-.862c-1.489-.264-2.649 1.422-1.777 2.6 1.446 1.955 1.901 2.427 2.236 3.554l1.004 3.382-2.498 1.477-1.317-4.101c-.667-2.08-3.731-2.829-5.16-4.954l-2.839-4.226c-.723.563-1.627 1.037-1.627 1.924zm.096-10.941c-1.428 0-2.587 1.158-2.587 2.586 0 1.429 1.159 2.586 2.587 2.586 1.429 0 2.587-1.158 2.587-2.586.001-1.428-1.157-2.586-2.587-2.586zm17.184 23.508c3.614 0 2.383-4.295-.504-2.512-1.028.58-2.828 1.695-4.166 2.512h4.67z"></path>
                                                                             </svg>
                                                                             339
                                                                          </a>
                                                                       </li>
                                                                    </ul>
                                                                 </div>
                                                              </div>
                                                           </div>
                                                        </div>
                            {{/data}}
                        </script>

                        <script>




                        </script>




                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>
                  <div class="layout_footer">
                     <div class="section section--search">
                        <form class="form form--search-form"><input placeholder="Search dad jokes..."></form>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--header">
                           <h3 class="section_title">Trending now!</h3>
                        </div>
                        <div class="section_block section_block--content">
                           <ul class="nav">
                              <li class="nav_item"><a class="nav_link" href="#/search/Dad/1"><span class="nav_link_text nav_link_text--primary">#Dad</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                              <li class="nav_item"><a class="nav_link" href="#/search/Walk/1"><span class="nav_link_text nav_link_text--primary">#Walk</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                              <li class="nav_item"><a class="nav_link" href="#/search/What/1"><span class="nav_link_text nav_link_text--primary">#What</span><span class="nav_link_text nav_link_text--secondary">Jokes</span></a></li>
                           </ul>
                        </div>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--header">
                           <h3 class="section_title">What's this?</h3>
                        </div>
                        <div class="section_block section_block--content">
                           <p>What if Twitter consisted only of dad jokes? Well that's the idea behind this pen.</p>
                           <p>Also, it was the occasion to redesign Twitter based on the july 2019 #newtwitter teasing, all done from tiny screenshots.</p>
                           <p>The jokes are fetched from icanhazdad.com API, users are added locally, everything else is Preact or react-router v5: feed, pagination, search, routing, etc.</p>
                           <p>There's a LOT of movies/video games references here. Can you spot them all?</p>
                        </div>
                     </div>
                     <div class="section">
                        <div class="section_block section_block--content">/</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script>

      $("#create-tweet").click( function(){
          $.ajax({
            type: "POST",
            url: "/user/create-post",
            data: document.getElementById("tweet-message").value,
            success: function(response){
                if(!!response){
                   window.location.reload();
                }
            },
            contentType: 'application/json'
          });

        });
         var tweet_ui_source = $("#tweet-template").html();
        var tweet_template= Handlebars.compile(tweet_ui_source);



         window.lastSeenTweet = 9999999;

        function showTweets(){
          $.ajax({
               type: "POST",
               url: "/user/public-tweet/"+ window.lastSeenTweet,

               success: function(response){

                if(!!response){
                             var tweet_data={
                                            data:response
                                         };
                      var size= response.length;
                      window.lastSeenTweet=response[size-1].id;


                     $("#tweet-content").append(tweet_template(tweet_data));

                }
                },
               contentType:'application/json'
                     });

        }
        showTweets();


         $(".pagination--infinite-scroll").click( function(){
                 showTweets();

                });


      </script>
   </body>
</html>
