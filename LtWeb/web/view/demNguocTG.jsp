<!DOCTYPE html>
<html>
    <head>
        <title>Đồng hồ đếm ngược bằng JS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            span{border: solid 1px #ACACAC; padding: 2px;}
        </style>
      <!--   <script type="text/javascript" src="public/js/time.js"></script> -->
        <script language="javascript">
 
            var h = null; // Giờ
            var m = null; // Phút
            var s = null; // Giây
             
            var timeout = null; // Timeout
             
          function start()
{
    /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
    if (h === null)
    {
        h = parseInt(document.getElementById('h_val').value);
        m = parseInt(document.getElementById('m_val').value);
        s = parseInt(document.getElementById('s_val').value);
    }
 
    /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
    // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
    //  - giảm số phút xuống 1 đơn vị
    //  - thiết lập số giây lại 59
    if (s === -1){
        m -= 1;
        s = 59;
    }
 
    // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
    //  - giảm số giờ xuống 1 đơn vị
    //  - thiết lập số phút lại 59
    if (m === -1){
        h -= 1;
        m = 59;
    }
 
    // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
    //  - Dừng chương trình
    if (h == -1){
        clearTimeout(timeout);
        alert('Hết giờ');
        return false;
    }
 
    /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
    document.getElementById('h').innerText = h.toString();
    document.getElementById('m').innerText = m.toString();
    document.getElementById('s').innerText = s.toString();
 
    /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
    timeout = setTimeout(function(){
        s--;
        start();
    }, 1000);
}
             
            function stop(){
                clearTimeout(timeout);
            }
        </script>
    </head>
    <body>
        <div>
            
            <input type="text" id="h_val" placeholder="Giờ" value=""/> 
            <input type="text" id="m_val" placeholder="Phút" value=""/> 
            <input type="text" id="s_val" placeholder="Giây" value=""/>
            <input type="button" value="Làm Bài" onclick="start()"/>
            <input type="button" value="Nộp Bài" onclick="stop()"/>  
        </div>
         
        <div>
            <span id="h">Giờ</span> :
            <span id="m">Phút</span> :
            <span id="s">Giây</span>
        </div>
    </body>
</html>
<!-- trong nay dung cau hoi ne -->
                        <!-- <div class="regulation">
                            <p>In each question, you will look at a photograph and then listen to 4 sentences. Choose the sentence that best describes the photograph. There are 17 questions in this test.</p>
                            <p>Listen to four statements about each photo on the screen. Click on the letter of the best description of the photo.</p>
                        </div>
                         -->

                        <!-- <div class="mp">
                            <audio controls>
                                <source src="public/radio/2.mp3" type="audio/mpeg">
                            </audio>
                        </div> -->
                        <div class="photo">
                            <!-- <img src="public/images/part1_1.jpg" alt="" > -->
                            <div id="question"></div>
                        </div>
                        <ol class="alpha my-answer" >
                            <!-- <li>
                                <input type="radio"  name="radio"> <label id ="ra1" for="radio1" ></label>
                                
                            </li>
                            <li>
                                <input type="radio"  name="radio"> <label id ="ra2" for="radio2"></label>
                                
                            </li>
                            <li>
                                <input id="radio3" type="radio"  name="radio"> <label id ="ra3" for="radio3"></label>
                                
                            </li>
                            <li>
                                <input id="radio4" type="radio"  name="radio"> <label id ="ra4" for="radio4"></label>
                                
                            </li> -->
                        </ol>