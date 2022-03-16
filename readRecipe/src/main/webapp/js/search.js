/**
 * 
 */
 $(window).on('load', function () {
    load('#js-load', '5');
    $("#js-btn-wrap .btn").on("click", function () {
        load('#js-load', '5', '#js-btn-wrap');
    })
});
 
function load(id, cnt, btn) {
    var recipes_list = id + " .js-load:not(.active)";
    var recipes_length = $(recipes_list).length;
    var recipes_total_cnt;
    if (cnt < recipes_length) {
        recipes_total_cnt = cnt;
    } else {
        recipes_total_cnt = recipes_length;
     	$('.btn').hide()
    }
    $(recipes_list + ":lt(" + recipes_total_cnt + ")").addClass("active");
}



 $(window).on('load', function () {
    load('#js-load2', '5');
    $("#js-btn-wrap2 .btn2").on("click", function () {
        load('#js-load2', '5', '#js-btn-wrap2');
    })
});
 
function load(id, cnt, btn) {
    var recipes_list = id + " .js-load:not(.active)";
    var recipes_length = $(recipes_list).length;
    var recipes_total_cnt;
    if (cnt < recipes_length) {
        recipes_total_cnt = cnt;
    } else {
        recipes_total_cnt = recipes_length;
       	$('.btn2').hide()
    }
    $(recipes_list + ":lt(" + recipes_total_cnt + ")").addClass("active");
}