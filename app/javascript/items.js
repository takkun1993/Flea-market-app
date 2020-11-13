$(function(){
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {
    const html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="item[item_imgs_attributes][${index}][src]"
                    id="item_imgs_attributes_${index}_src"><br>
                  </div>`;
    return html;
  }
  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" width="100px" height="100px">`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  // 既に使われているindexを除外
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);

  $('.hidden-destroy').hide();

  // $('.image-box').on('click', `input[type="file"]`,function(e) {
  //   console.log("test")
  //   $('#image-box').append(buildFileField(fileIndex[0]));
  // })

  $('#image-box').on('change', '.js-file', function(e) {
    console.log('ok1');
    const targetIndex = $(this).parent().data('index');
    console.log(lastIndex)
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);

    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  // 新規画像追加の処理
      $('#previews').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });

  $('.js-file_group').on('click', '.js-remove-file','js-file', function() {
    console.log("test")
    
    const targetIndex = $(this).parent().data('index');
    console.log(targetIndex);
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    console.log(hiddenCheck[0]);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) hiddenCheck.prop('checked', true);
    
    // $('img').remove();
    $('.js-file').remove();
    $(`img[data-index="${targetIndex}"]`).remove();
    console.log(this)
    console.log('ok');
    
    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));


  });
});

// $(function(){
//   var dataBox = new DataTransfer();
//   var file_field = document.getElementById('img-file')
//   $('#append-js-edit').on('change','#img-file',function(){
//     $.each(this.files, function(i, file){
//       //FileReaderのreadAsDataURLで指定したFileオブジェクトを読み込む
//       var fileReader = new FileReader();
//       //DataTransferオブジェクトに対して、fileを追加
//       dataBox.items.add(file)
//       var num = $('.item-image').length + 1 + i
//       var aaa = $('.item-image').length + i
// // ①
//       var image_id = Number($('#image-box-1').attr('class'))
//       var append_div_count = Number($('div[id=1]').length) 
//       var noreset_id = image_id + append_div_count

//       fileReader.readAsDataURL(file);
//      //画像が10枚になったら超えたらボックスを削除する
//       if (num == 10){
//         $('#image-box__container').css('display', 'none')
//       }
//       //読み込みが完了すると、srcにfileのURLを格納
//       fileReader.onloadend = function() {
//         var src = fileReader.result
// // ②
//         var html= `<div class='item-image' data-image="${file.name}" data-index="${aaa}" id="${noreset_id-1}">
//                     <div class=' item-image__content'>
//                       <div class='item-image__content--icon'>
//                         <img src=${src} width="188" height="180" >
//                       </div>
//                     </div>
//                     <div class='item-image__operetion'>
//                       <div class='item-image__operetion--edit__delete__file'>削除</div>
//                     </div>
//                   </div>`
//         const buildFileField1 = (num)=> {
// // ③
//           const html = `<div  class="js-file_group" data-index="${num}" id=1>
//                           <input class="js-file-edit" type="file"
//                           name="item[images_attributes][${append_div_count+9}][image]"
//                           id="img-file" data-index="${num}value="${noreset_id}" >
//                         </div>`;
//           return html;
//         }
//         $('.js-file-edit').removeAttr('id');
//         //image_box__container要素の前にhtmlを差し込む
//         $('.img-label').before(html);
//         $('#append-js-edit').append(buildFileField1(num));
//       };
//       //image-box__containerのクラスを変更し、CSSでドロップボックスの大きさを変えてやる。
//       $('#image-box__container').attr('class', `item-num-${num}`)
//     });
//   });
// // ④
//   // 10枚登録されていた場合にボックスを消す
//   $(document).ready(function(){
//     var image_num = $('.item-image').length
//     if (image_num==10){
//       $('#image-box__container').css('display', 'none')
//     }
//   });
// // ⑤
//   $(document).ready(function(){
//     $('.js-file-edit').removeAttr('id');
//     var num = $('.item-image').length - 1
//     var image_id = Number($('#image-box-1').attr('class'))
//     var append_div_count = Number($('div[id=1]').length) 
//     var noreset_id = image_id + append_div_count
//     const buildFileField = (num)=> {
//       const html = `<div  class="js-file_group" data-index="${num}" id=1>
//                       <input class="js-file-edit" type="file"
//                       name="item[images_attributes][100][image]"
//                       id="img-file" data-index="${num}" value="${noreset_id}" >
//                     </div>`;
//       return html;
//     }
//     $('#append-js-edit').append(buildFileField(num));
//   });
// // ⑥
//   $(document).on("click", '.item-image__operetion--edit__delete__hidden', function(){
//     //削除を押されたプレビュー要素を取得
//     var target_image = $(this).parent().parent();
//     //削除を押されたプレビューimageのfile名を取得
//     var target_id = $(target_image).attr('id');
//     var target_image_file = $('input[value="'+target_id+'"][type=hidden]');
//     //プレビューを削除
//     target_image.remove()
//     target_image_file.remove()
//     //image-box__containerクラスをもつdivタグのクラスを削除のたびに変更
//     var num = $('.item-image').length
//     $('#image-box__container').show()
//     $('#image-box__container').attr('class', `item-num-${num}`)
//   });
// // ⑦
//   $(document).on("click", '.item-image__operetion--edit__delete__file', function(){
//     //削除を押されたプレビュー要素を取得
//     var target_image = $(this).parent().parent();
//     var target_id = Number($(target_image).attr('id'));
//     //削除を押されたプレビューimageのfile名を取得
//     var target_image_file = $('#append-js-edit').children('div').children('input[value="'+target_id+'"][type=file]');
//     //プレビューを削除
//     target_image.remove()
//     target_image_file.remove()
//     //image-box__containerクラスをもつdivタグのクラスを削除のたびに変更
//     var num = $('.item-image').length
//     $('#image-box__container').show()
//     $('#image-box__container').attr('class', `item-num-${num}`)
//   });
// });
