var sel_file;
$(document).ready(function() {
    $("#reg_mb_img").on("change", handleImgFileSelect);
}); 

function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("이미지 파일만 첨부해주세요.");
            return;
        }

        sel_file = f;
        var reader = new FileReader();
        reader.onload = function(e) {
            $("#img").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
    });
}     
//페이지삽입소스
//<!-- 첨부이미지 미리보기 -->
//<div class="img_wrap"><img id="img" /></div>
//<!-- 첨부하기 -->
//<input type="file" id="reg_mb_img">