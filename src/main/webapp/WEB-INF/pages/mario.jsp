<html>
<head>
    <style>
    @import url("https://fonts.googleapis.com/css?family=Press+Start+2P");
    @-webkit-keyframes blinker {
      75% {
        opacity: 0;
      }
    }
    @keyframes blinker {
      75% {
        opacity: 0;
      }
    }
    @-webkit-keyframes walk-left-loop {
      0% {
        background-position: 0;
      }
      100% {
        background-position: -64px;
      }
    }
    @keyframes walk-left-loop {
      0% {
        background-position: 0;
      }
      100% {
        background-position: -64px;
      }
    }
    @-webkit-keyframes walk-right-loop {
      0% {
        background-position: -128px;
      }
      100% {
        background-position: -192px;
      }
    }
    @keyframes walk-right-loop {
      0% {
        background-position: -128px;
      }
      100% {
        background-position: -192px;
      }
    }
    @-webkit-keyframes search {
      0% {
        background-position: -64px;
      }
      100% {
        background-position: -128px;
      }
    }
    @keyframes search {
      0% {
        background-position: -64px;
      }
      100% {
        background-position: -128px;
      }
    }
    @-webkit-keyframes walk-left {
      0% {
        left: 85%;
      }
      100% {
        left: 15%;
      }
    }
    @keyframes walk-left {
      0% {
        left: 85%;
      }
      100% {
        left: 15%;
      }
    }
    @-webkit-keyframes walk-right {
      0% {
        left: 15%;
      }
      100% {
        left: 85%;
      }
    }
    @keyframes walk-right {
      0% {
        left: 15%;
      }
      100% {
        left: 85%;
      }
    }
    .walk-left {
      -webkit-animation: walk-left-loop 0.2s steps(2) infinite, walk-left 1s linear;
              animation: walk-left-loop 0.2s steps(2) infinite, walk-left 1s linear;
    }

    .walk-right {
      -webkit-animation: walk-right-loop 0.2s steps(2) infinite, walk-right 1s linear;
              animation: walk-right-loop 0.2s steps(2) infinite, walk-right 1s linear;
    }

    .idle {
      -webkit-animation: none;
              animation: none;
      background-position: -192px;
    }

    .search-left {
      -webkit-animation: search 2s steps(2) infinite;
              animation: search 2s steps(2) infinite;
      left: 15% !important;
    }

    .search-right {
      -webkit-animation: search 2s steps(2) infinite;
              animation: search 2s steps(2) infinite;
      left: 85% !important;
    }

    body {
      font-family: 'Press Start 2P', sans-serif;
      text-rendering: optimizeSpeed;
      color: #fff;
      background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjQ3OThENjIxNjM0NTExRTlBRDcxODhCMzQyM0FCN0EwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjQ3OThENjIyNjM0NTExRTlBRDcxODhCMzQyM0FCN0EwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NDc5OEQ2MUY2MzQ1MTFFOUFENzE4OEIzNDIzQUI3QTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NDc5OEQ2MjA2MzQ1MTFFOUFENzE4OEIzNDIzQUI3QTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4nvDvOAAAABlBMVEXcuUXCjk1OwG03AAAARUlEQVR42mJgJAAYSFDAAATUUoCskH4KUJ1HuQJkMWIVYA1kihWQHpvUVwAJemIVYEssA6sAa3QTUIAtmihRQOfYBAgwAFtpA5VFMQvIAAAAAElFTkSuQmCC");
    }

    .skybox {
      position: relative;
      width: 100%;
      height: 70vh;
      background-color: #63B4F5;
    }
    .skybox .txt {
      position: absolute;
      width: 90%;
      text-align: center;
      left: 50%;
      top: 50%;
      -webkit-transform: translate(-50%, -50%);
              transform: translate(-50%, -50%);
      text-transform: uppercase;
      font-size: 1.4em;
      line-height: 1.1em;
    }
    .skybox .txt span {
      display: block;
      margin-top: 1vh;
      -webkit-animation: blinker 2s steps(1) infinite;
              animation: blinker 2s steps(1) infinite;
      font-size: 0.5em;
      line-height: 1.2em;
    }
    .skybox #player {
      position: absolute;
      width: 32px;
      height: 48px;
      left: 50%;
      bottom: 32px;
      -webkit-animation-fill-mode: forwards;
              animation-fill-mode: forwards;
      background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAAwCAYAAAD+f6R/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjgwNTk2MTRCNjM0NTExRTlBMEY2QkI4RDA0MzNGN0M3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjgwNTk2MTRDNjM0NTExRTlBMEY2QkI4RDA0MzNGN0M3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6ODA1OTYxNDk2MzQ1MTFFOUEwRjZCQjhEMDQzM0Y3QzciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6ODA1OTYxNEE2MzQ1MTFFOUEwRjZCQjhEMDQzM0Y3QzciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4GPpTbAAAHmUlEQVR42uxd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");
    }
    .skybox .ground {
      position: absolute;
      left: 0;
      bottom: 0;
      width: 100%;
      height: 32px;
      background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjJFRkNENjRENjM0NTExRTk5RDQwQUQ5N0EyM0RBM0JDIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjJFRkNENjRFNjM0NTExRTk5RDQwQUQ5N0EyM0RBM0JDIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MkVGQ0Q2NEI2MzQ1MTFFOTlENDBBRDk3QTIzREEzQkMiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MkVGQ0Q2NEM2MzQ1MTFFOTlENDBBRDk3QTIzREEzQkMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7Mv2hcAAAAElBMVEXcuUUAbT1tXRIAwgAAAADCjk0qQzGwAAAAYklEQVR42szRUQrAIAwD0LZr73/lbVZw8cMUHGP5asNDUMVJhIKD5AugioW2jJkDdyzycsn6OxBghoW1JLunCsBiDgcRzzV6xlYB6+wAuVIHufwJwFwE8+G74K2/KIJTgAEALaUOscCas1sAAAAASUVORK5CYII=");
    }

    </style>
    <script>
            var player = document.getElementById('player');

               // adjust skybox height to multiple of 32
               document.addEventListener("DOMContentLoaded", function () {
                 var h = document.getElementById('skybox').offsetHeight;
                 var s_h = Math.round(h / 32) * 32;
                 document.getElementById('skybox').style.height = `${s_h}px`;
               });

               function walkLeft() {
                 $("#player").className = "walk-left";
                 setTimeout(searchLeft, 1000);
               }
               function searchLeft() {
                  $("#player").className= "search-left";
                 // player.style.left = "40%";
                 setTimeout(walkRight, 3000);
               }
               function walkRight() {
                  $("#player").className= "walk-right";
                 setTimeout(searchRight, 1000);
               }
               function searchRight() {
                  $("#player").className= "search-right";
                 // player.style.left = "60%";
                 setTimeout(walkLeft, 3000);
               }

               walkLeft();


    </script>
</head>
<body>

<div id="skybox" class="skybox">
	<div class="txt">Game over
		<br><span>404 FILE NOT FOUND</span></div>
	<div id="player" class="idle"></div>
	<div class="ground"></div>
</div>
</body>
</html>