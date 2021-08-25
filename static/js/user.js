
      $(".follow-member").click( function(event){
      var memberId=this.getAttribute("member-id");
      var button=this;

      var isFollowed = $(button).hasClass("followed-button");

      if(isFollowed){
      $.ajax({
                        type: "POST",
                        url: "/user/un-follow-member/"+memberId,

                        success: function(response){
                            if(!!response){
                                $(button).removeClass("followed-button");

                               button.querySelector("span").innerText="Follow";
                            }
                        },
                        contentType: 'application/json'
                      });

      }else{
      $.ajax({
                  type: "POST",
                  url: "/user/follow-member/"+memberId,

                  success: function(response){
                      if(!!response){
                          $(button).addClass("followed-button");

                         button.querySelector("span").innerText="Followed";
                      }
                  },
                  contentType: 'application/json'
                });
      }



        });