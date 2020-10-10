$(function(){
  $('#form-btn').on('click', function(){
    if($('#name').val() === ''){
      alert('名前を入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#email').val() === ''){
      alert('メールアドレスを入力して下さい！');
      $(this).focus();
      return false;
    }
    if($('#content').val() === ''){
      alert('内容を入力して下さい！');
      $(this).focus();
      return false;
    }
  });
});