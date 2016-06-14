<todo>

  <!-- layout -->
  <h3>{ opts.title }</h3>

  <ul>
    <li each={ item, i in items } class="{changeColor(i)}">{ item } <button onclick={ remove } data-id={ i }>削除</button></li>
  </ul>
  
  <button onclick={ removeAll } if={hasitem()} >すべて削除</button>

  <form onsubmit={ add }>
    <input>
    <button>Add #{ items.length + 1 }</button>
  </form>

  <!-- style -->
  <style scoped>
    h3 {
      font-size: 14px;
    }
    
    .red {
	    color: red;
    }
    
  </style>

  <!-- logic -->
  <script>
    this.items = []

	//項目を追加する
    add(e) {
      var input = e.target[0];
      //inputが空の場合、項目追加ができないようにする処理（うまく動かない。。。）
      //if(!imput.value){
	  //    return false;
      //}
      this.items.push(input.value);
      input.value = '';
    }
	
	//項目を1つ消す
    remove(e) {
		//alert("消す");
		var id = e.target.dataset.id;
		//alert(removeButton);
		this.items.splice(id,1);

		//シンプルな書き方
		//splice:配列の何番目を削除するかを指定したものを「1」つ削除する
		//this.items.splice(e.item.i,1);
    }
	
	//項目をすべて消す
    removeAll() {
	    //中身を空にする
	    this.items = [];
    }

	//項目がない場合は、「すべて削除」ボタンを非表示
    hasitem() {
		if(this.items.length){
			return true;
		}
		return false;
    }
    
    //classの操作（3番目以降の項目にclassを追加する）
    changeColor(i) {
		if(i > 2){
			//classにredを追加する
			return "red";
		}
		return "";
    }

  </script>

</todo>




<!--
	＜ヒント＞
	
	//イベントを実行させたい要素に書く
	//remove を定義していく
	onclick = { remove }
	
	//定義の中身
	remove(e) {
		処理
	}
	
	e.target.dataset.id
	
	splice(消したい番号,i)
	
-->