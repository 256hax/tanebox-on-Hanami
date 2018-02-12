// --- Controller（クリックイベント監視） --- //
// メッセージ用
$(function() {
  var event_listener_id = 'message-content';
  var display_target_id = 'count-text-lengths';

  $('#' + event_listener_id).on('keyup',function() {
    CountTextLengths(event_listener_id, display_target_id);
  });
});

// 返信用
$(function() {
  var event_listener_id = 'reply-content';
  var display_target_id = 'count-text-lengths';

  $('#' + event_listener_id).on('keyup',function() {
    CountTextLengths(event_listener_id, display_target_id);
  });
});

// --- Service --- //
// display_idにフォームに入力された文字数をカウントして表示する
// 引数：カウント対象のテキストフォームのクラスid(string), カウントした文字数を表示するクラスid(string)
function CountTextLengths(event_listener_id, display_target_id) {
  var text_value = document.getElementById(event_listener_id).value;
  document.getElementById(display_target_id).innerHTML = text_value.length;
}
