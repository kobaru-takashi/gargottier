$(function(){
  $('#form-btn').on('click', function(){
    if($('#reservation-time').val() === ''){
      alert('ご来店時間を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#number-of-people').val() === ''){
      alert('ご来店人数を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#family-name-btn').val() === ''){
      alert('代表者名(姓)を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#first-name-btn').val() === ''){
      alert('代表者名(名)を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#family-name-kana-btn').val() === ''){
      alert('代表者名(セイ)を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#first-name-kana-btn').val() === ''){
      alert('代表者名(メイ)を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#phone-btn').val() === ''){
      alert('電話番号を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#email-btn').val() === ''){
      alert('メールアドレスを入力して下さい！');
      $(this).focus();
      return false;
    }
  });
});