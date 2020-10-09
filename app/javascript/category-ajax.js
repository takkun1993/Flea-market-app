$(function(){
  $('#category-btn').mouseover(
    // 親要素表示
    function() {
      $('category1 ul li').fadeIn();
    });
})
//   let btn = $(".category-btn")
//   let category_downlists = $(".category-downlists")
//   valGlobal1 = "nextbox"; 

//   btn.hover(
//   function(){
//     category_downlists.removeClass("non-show-list").addClass("show-list");
//   });

//   $(".header__inner__main").hover(
//     function(){
//       category_downlists.removeClass("show-list").addClass("non-show-list");
//     $(".ones").eq(1).empty();
//     $(".ones").eq(2).empty();
//     });
  

//   category_downlists.mouseleave(
//     function(){
//       category_downlists.removeClass("show-list").addClass("non-show-list");
//     $(".ones").eq(1).empty();
//     $(".ones").eq(2).empty();
//     });

//     $(".category-downlist").on("mouseenter","#oya",(function () {
//       $(".ones").eq(2).empty();
//     }));

//       function childrenDownBuild(children){
//         $(".ones").eq(nextBox).empty();
//         $.each(children,
//           function(index,child) {
//           let html = 
//           `<div class= "category-downlist__in__one" data-id = ${child.id}>
//             <a href= "/items/${child.id}/list_from_category">${child.name}</a>
//           </div>`
//           $(".ones").eq(nextBox).append(html)
//           });
//       };

//     let parentIDs = [];
//     var jqxhr;
//       $(".ones").on("mouseenter",".category-downlist__in__one",(function () {
//         nextBox = $(this).closest(".ones").data("next");
//         $(this).siblings().removeClass("red");
//         $(this).addClass("red");
//         if(jqxhr){
//           jqxhr.abort();
//           }
//             let parentID = $(this).data('id'); 
//             parentIDs.push(parentID);
//               var nextParentID = parentIDs.shift();
//               jqxhr = $.ajax({
//                       url: "/items/category_children",
//                       type: "GET",
//                       data: {
//                         parent_id: nextParentID
//                       },
//                       dataType: "json",
//               })
//                   .done(function (children) {
//                     childrenDownBuild(children);
//                   }).fail(function (jqxhr,textStatus) {
//                     if (textStatus === 'abort'){return;}
//                     alert("カテゴリー取得に失敗しました");
//                   })
//         }));
// });
