/**
 * 
 */
 $(window).on('load', function () {
    load('#js-load', '8');
    $("#js-btn-wrap .btn").on("click", function () {
        load('#js-load', '8', '#js-btn-wrap');
    })
});
 
function load(id, cnt, btn) {
    var girls_list = id + " .js-load:not(.active)";
    var girls_length = $(girls_list).length;
    var girls_total_cnt;
    if (cnt < girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.btn').hide()
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}

 $(window).on('load', function () {
    load('#js-load2', '8');
    $("#js-btn-wrap2 .btn").on("click", function () {
        load('#js-load2', '8', '#js-btn-wrap2');
    })
});
 
function load(id, cnt, btn) {
    var girls_list = id + " .js-load:not(.active)";
    var girls_length = $(girls_list).length;
    var girls_total_cnt;
    if (cnt < girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.btn').hide()
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}