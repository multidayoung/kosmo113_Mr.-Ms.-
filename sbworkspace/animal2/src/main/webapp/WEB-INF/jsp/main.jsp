<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Instagram</title>
    <link href="../resources/static/bootstrap/insta/style/common.css" rel="stylesheet" type="text/css" />
    <link href="../resources/static/bootstrap/insta/style/main.css" rel="stylesheet" type="text/css" />
    
    
    <!-- favicon -->
    <link rel="icon" href="../resources/static/bootstrap/insta/img/favicon.png">
    <link rel="instagram-icon" href="../resources/static/bootstrap/insta/img/favicon.png">
  </head>
  <body>
    <!-- navigation -->
   
    <!-- main -->
    <main>
      <div class="feeds">
        <!-- article -->
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="../resources/static/bootstrap/insta/img/iu2.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="../resources/static/bootstrap/insta/img/Threedots.png" alt="more">
          </header>
          <div class="main-image">
            <img src="../resources/static/bootstrap/insta/img/iu2.png" alt="dlwlrma님의 피드 사진" class="mainPic">
          </div>
          <div class="icons-react">
            <div class="icons-left">
              <img class="iscon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/comment.png" alt="말풍선">
              <img class="icon-react" src="../resources/static/bootstrap/insta/img/dm.png" alt="DM">  
            </div>
            <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/bookmark.png" alt="북마크">
          </div>
          
          
          <!-- article text data -->
          <div class="reaction">
            <div class="liked-people">
              <img class="pic" src="../resources/static/bootstrap/img/cover 2.png" alt="johnnyjsuh님의 프로필 사진">
              <p><span class="point-span">johnnyjsuh</span>님 <span class="point-span">외 2,412,751명</span>이 좋아합니다</p>
            </div>
            <div class="description">
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
                  <div>
                    <img class="comment-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
                    <div class="comment-like">
                      <img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
                      <img class="comment-heart-liked" src="../resources/static/bootstrap/insta/img/liked.png" alt="좋아요된하트">
                    </div>
                  </div>
                </li>
                
                
                <!-- input 값 여기에 추가 -->
              </ul>
              <div class="time-log">
                <span>32분 전</span>
              </div>
            </div>
          </div>
          <div class="hl"></div>
          <div class="comment">
            <input id="input-comment" class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        
        <article>
        
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="../resources/static/bootstrap/insta/img/iu3.jpg" alt="thisisyourhyung님의 프로필 사진">
              <span class="userID main-id point-span">thisisyourhyung</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="../resources/static/bootstrap/insta/img/iu3.jpg" alt="thisisyourhyung님의 피드 사진" class="mainPic">
          </div>
          <div class="icons-react">
            <div class="icons-left">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/comment.png" alt="말풍선">
              <img class="icon-react" src="../resources/static/bootstrap/insta/img/dm.png" alt="DM">  
            </div>
            <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/bookmark.png" alt="북마크">
          </div>
          <!-- article text data -->
          <div class="reaction">
            <div class="liked-people">
              <img class="pic" src="../resources/static/bootstrap/insta/img/iu3.jpg" alt="_jeongjaehyun님의 프로필 사진">
              <p><span class="point-span">_jeongjaehyun</span>님 <span class="point-span">외 4,612,203명</span>이 좋아합니다</p>
            </div>
            <div class="description">
              <p><span class="point-span userID">thisisyourhyung</span>코로나 언제 사라지나 ㅠㅠ 여행 가고 싶다~~</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">williamhammington</span>나도 호주 가고 싶다!</span>
                  <div>
                    <img class="comment-more" src="../resources/static/bootstrap/insta/img/iu3.jpg" alt="more">
                    <div class="comment-like">
                      <img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
                      <img class="comment-heart-liked" src="../resources/static/bootstrap/insta/img/liked.png" alt="좋아요된하트">
                    </div>
                  </div>
                </li>
                <!-- input 값 여기에 추가 -->
              </ul>
              <div class="time-log">
                <span>1시간 전</span>
              </div>
            </div>
          </div>
          <div class="hl"></div>
          <div class="comment">
            <input id="input-comment2" class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>

      </div>
     
      </div>
    </main>
    <script src="../resources/static/bootstrap/insta/js/main.js"></script>
  </body>
</html>