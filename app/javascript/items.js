$(document).on('turbolinks:load', ()=> {
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {
    const html = `<div data-index="${index}" class="items_new-js-file_group">
                    <input class="items_new-js-file" type="file"
                    name="item[item_imgs_attributes][${index}][src]"
                    id="item_imgs_attributes_${index}_src"><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('#previews').on('change', '.items_new-js-file', function(e) {
    $('#previews').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('#previews').on('click', '.js-remove', function() {
    $(this).parent().remove();
    if ($('.item_new-js-file').length == 0) $('#previews').append(buildFileField(fileIndex[0]));
  });
});
