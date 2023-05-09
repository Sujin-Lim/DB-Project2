
/**
 *
 *
 */


 $(window).on('load', function () {
            load('#js-load', '3');
        
            $("#js-btn-wrap").on("click", function () {
                load('#js-load', '3', '#js-btn-wrap');
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
                $(btn).hide();
            }
            $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
        }