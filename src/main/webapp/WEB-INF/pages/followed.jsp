<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en" class=""><head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="/static/css/recommendation.css">


   </head>
   <body>


      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <jsp:include page="template/navbar.jsp" />
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Followed by my account</h1>
                        </div>

                    <c:forEach var="member" items="${FOLLOWED}">

                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">${member.name}</span><span class="joke_element joke_element--author-username">@realBigDaddy</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/images.jpeg"></div>
                                 </div>
                                 <button class="follow-member followed-button"  member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 12px;">
                              <span tabindex="-1">Followed</span>
                              </button>

                              </div>
                           </div>
                        </div>

                    </c:forEach>



















                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>


                <jsp:include page="template/sidebar.jsp" />



               </div>
            </div>
         </div>
      </div>
     <script type="text/javascript" src="/static/js/user.js">

           </script>


<div id="mouseposition-extension-element-full-container" style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;"><div id="mouseposition-extension-element-rect-display" style="display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; width: 0px; height: 0px;"><pre style="flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: rgb(0, 0, 0); min-width: 42px; min-height: 12px; transition: all 1s ease 0s;"></pre></div><pre id="mouseposition-extension-element-coordinate-display" style="position: absolute; display: none; background: rgb(255, 255, 255); font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: rgb(34, 34, 34) black rgb(51, 51, 51); border-style: solid; padding: 3px; z-index: 2147483647; color: rgb(34, 34, 34); user-select: none; cursor: default; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"></pre></div></body></html>