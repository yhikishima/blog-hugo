var YHBLOG = YHBLOG || {};
(function(YHBLOG) {
  var $headerRightBars = $('#header-right-bars');

  if ($headerRightBars.length > 0) {
    $headerRightBars.click(function() {
      $(this).toggleClass('is-open');
      $(this).next('ul').toggleClass('util-block');
    });
  }

})(YHBLOG);