!function(e){e("#jtm_currency-update").on("click",function(r){r.preventDefault(),$trigger_container=e(this).parent();var t={action:"update_currencies",refresh:"false"};$trigger_container.html("<em>Updating...</em>"),jQuery.post(ajaxurl,t,function(e){$trigger_container.html("<em>Currency tables updated</em>"),console.log(e)})})}(jQuery);
//# sourceMappingURL=ajax.js.map
