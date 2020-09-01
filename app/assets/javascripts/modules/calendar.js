// $(function () {
//   $('#calendar').fullCalendar({
//     height: 500, 
//     events: 'events.json',
//     timeFormat: 'H:mm',
//     eventColor: '#63ceef',
//     lang: 'ja',
//     dayClick: function (start, end, jsEvent, view) {
//       //クリックした日付情報を取得
//       const year = moment(start).year();
//       const month = moment(start).month()+1; //1月が0のため+1する
//       const day = moment(start).date();
//       $.ajax({
//         type: 'GET',
//         url: 'events/new',
//       }).done(function (res) {
//         //イベント登録用のhtmlを作成
//         $('.modal-body').html(res);
//         //イベント登録フォームの日付をクリックした日付とする
//         $('#event_start_time_1i').val(year);
//         $('#event_start_time_2i').val(month);
//         $('#event_start_time_3i').val(day);
//         //イベント登録フォームのモーダル表示
//         $('#modal').modal();
//         // 成功処理
//       }).fail(function (result) {
//         // 失敗処理
//         alert('エラーが発生しました。運営に問い合わせてください。')
//       });
//     },
//   });
// });
$(function () {
  // 画面遷移を検知
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

          //events: '/events.json', 以下に追加
          $('#calendar').fullCalendar({
              events: '/events.json',
              //カレンダー上部を年月で表示させる
              titleFormat: 'YYYY年 M月',
              //曜日を日本語表示
              dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
              //ボタンのレイアウト
              header: {
                  left: '',
                  center: 'title',
                  right: 'today prev,next'
              },
              //終了時刻がないイベントの表示間隔
              defaultTimedEventDuration: '03:00:00',
              buttonText: {
                  prev: '前',
                  next: '次',
                  prevYear: '前年',
                  nextYear: '翌年',
                  today: '今日',
                  month: '月',
                  week: '週',
                  day: '日'
              },
              // Drag & Drop & Resize
              editable: true,
              //イベントの時間表示を２４時間に
              timeFormat: "HH:mm",
              //イベントの色を変える
              eventColor: '#87cefa',
              //イベントの文字色を変える
              // eventTextColor: '#000000',
              eventRender: function(event, element) {
                  element.css("font-size", "0.8em");
                  element.css("padding", "5px");
              }
          });
      }
  });
});