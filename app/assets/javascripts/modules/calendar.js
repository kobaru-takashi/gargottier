$(function () {
  $(document).on('turbolinks:load', function () {
      if ($('#calendar').length) {
          function Calendar() {
              return $('#calendar').fullCalendar({
              });
          }
          function clearCalendar() {
              $('#calendar').html('');
          }
          $(document).on('turbolinks:load', function () {
              Calendar();
          });
          $(document).on('turbolinks:before-cache', clearCalendar);
          $('#calendar').fullCalendar({
              events: '/events.json',

              titleFormat: 'YYYY年 M月',
              //曜日を日本語表示
              dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
              //ボタンのレイアウト
              header: {
                  left: '',
                  center: 'title',
                  right: 'today prev,next'
              },
              timeFormat: "HH:mm",
              eventColor: '#fff',
              eventTextColor:'#E73820',
              eventRender: function(event, element) {
                  element.css("font-size", "0.8em");
                  element.css("padding", "5px");
              }
        });
      }
  });
});
