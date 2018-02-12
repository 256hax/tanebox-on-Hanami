// Ajax処理するaタグ(href="#ajax")をリンク無効化
$(function(){
	$('a[href="#ajax"]').click(function(){
		return false;
	})
});


// --- Controller（クリックイベント監視） --------------- //
$(function() {
  $('.like-actions').on('click',function() {
		// カスタムデータ属性の取得に「.data」は使わないこと。「.attr」かネイティブjsのdatasetを使うこと。
		// 「.data」を使った場合、その値がキャッシュされて残ってしまうため、カスタムデータを書き換えた後の値の参照ができなくなるため。
		var like = JSON.parse($(this).attr('data-like')); // data-like属性があるタグのクリックイベントをobjectで取得
    var method = like.method; // POST/PATCH
    var url = like.url; // リクエスト先URL
    var action = like.action; // action(create/update)
    var data = JSON.stringify(GenerateData(action, like));
		var clicked_tag_obj = $(this);

    SendJsonAsync(method, url, data, clicked_tag_obj, action);
  });
});


// --- Services ----------------------------------- //
function SendJsonAsync(method, url, data, clicked_tag_obj, action) {
  var xhr = new XMLHttpRequest();

	// XHRでリクエスト後のレスポンスを取得
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200) {
			if(this.response) {
				response_json = JSON.parse(this.response);
				var message_id = response_json.message_id;
				var target_like_sum_tag_id = '#like-' + message_id + '-sum'; // 書き換え対象のタグID

				RewriteLikesSum(response_json, target_like_sum_tag_id);
				if(action == 'create') {
					ChangeCreateToUpdateLike(response_json, clicked_tag_obj);
				}
			}
		}
	}

  xhr.open(method, url);
  xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
  xhr.send(data);
}

// 概要：Ajaxで投げるデータを作成
// 引数：action(create/update), like object（likeのカスタムデータ属性）
// 戻値：object(投げるデータ)
function GenerateData(action, like) {
  switch(action) {
    case "create":
      var data = {
        "like" : {
          "message_id" : like.message_id
        }
      };
      return data;
      break;

    case "update":
      var data = {
        "like" : {
          "action" : "countup"
        }
      };
      return data;
      break;
  }
}

// Ajax処理が正常に完了したらlikeの合計数をAjaxでDBから参照してview側の値を書き換える
function RewriteLikesSum(response_json, target_tag_id) {
	var like_sum = response_json.sum; // DBからlikeの数を参照
	$(target_tag_id).text(like_sum);
}

// like#createが完了したら、like#updateが実行できるようにカスタムデータ属性をupdate用に書き換える
function ChangeCreateToUpdateLike(response_json, clicked_tag_obj) {
	var url = '"url":"' + response_json.update_likes_path; // リクエスト先URL
	var custom_data = {
		"action":"update",
		"method":"PATCH",
		"url":response_json.update_likes_path,
		"message_id":response_json.message_id
	};

	clicked_tag_obj.attr('data-like', JSON.stringify(custom_data));
}
