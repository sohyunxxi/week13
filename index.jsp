<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <link type="text/css" rel="stylesheet" href="signIn.css">
</head>
<body>
    <header>
        <div class="headerMenu">Home</div> <!-- 메인 페이지-->
        <div class="headerMenu">Groups</div> <!-- 그룹 가입-->
        <div class="headerMenu">About</div>  <!-- 이 페이지 설명, 규칙-->
        <div class="headerMenu">Contact</div> <!-- 도움, 이름 이메일 페이지 -->
        <div class="headerMenu">Members</div> <!--로그인 안 한 페이지 만들기 -> 로그인 해서 확인-->
        <div id="headerLoginBox">
            <img id="headerLoginIcon" src="userIcon.png">
            <div id="headerLogin">Log In</div> <!--로그인 페이지-->
        </div>   
    </header>

    <main> 
        
        <div id="signupWordBox"> 
            <h1 id="signupBigWord"> Sign in </h1> 
            <span id="signupLittleWord">Sign in and enjoy our all services!</span>
        </div>
        <form name="signInForm" action="signin.jsp" >
            <div id="signupEtc">
                <span>Id</span>
                <input class="inputBox" name="id_value" type="text" length="20" maxlength="18">
                <span>Pw</span>
                <input class="inputBox" name="pw_value" type="password" length="20" maxlength="18">
                <a href="forgotId.jsp"> Forgot your id?</a>
                <a href="forgotPassword.jsp"> Forgot your password?</a>
        
            </div>
            
            <button id="signupButton" action="signin.jsp"> Sign In </button>
        </form>
        <div id="underLogin">
            <span>If you don't have account, </span>
            <a class="underLoginText" href="makeaccount.jsp"> Make account</a>
        </div>
    </main>

    <footer>
        <div>
            <div id="footerIconBox">
                <img class="footerIcon" src="faceBookLogo.png">
                <img class="footerIcon" src="youtubeLogo.png">
                <img class="footerIcon" src="twitterLogo.png">
                <img class="footerIcon" src="instagramLogo.png">
            </div>
            <span id="footerCopyright">ⓒ 2023 by IT Astronaut</span>
        </div>
        <div id="footerSubscribeBox">
            <span id="footerSubscribeInfo">Subscribe our updates & news!</span>
            <input id="footerSubscribeInput" type = "text" size="50" maxlength="48">
            <button id="footerSubscribeButton">Subscribe</button>
        </div>
    </footer>

</body>
    <!-- <script src="signin.js"></script> -->
</html>