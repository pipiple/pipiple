(function () {
  if (typeof window.microadBladeViewableImpCall != "function") {
    window.microadBladeViewableImpCall = function (encBidId, viewableUrl, undeterminedUrl) {
      var ad = document.getElementById(encBidId);
      var outputTag = function (url) {
        var tag = document.createElement("img");
        tag.width = '0';
        tag.height = '0';
        tag.style = 'width: 0px; height: 0px; display:none;';
        tag.alt = '';
        tag.src = url;
        ad.appendChild(tag);
      };
      var onSuccess = function (json) {
        var url = viewableUrl + "?enc_bid_id=" + encBidId +
          "&measure_id=" + json.viewable.measure_id +
          "&threshold_per=" + json.viewable.threshold_per +
          "&continuous_ms=" + json.viewable.continuous_ms;
        outputTag(url);
      };
      var onFailure = function (json) {
        var url = undeterminedUrl + "?enc_bid_id=" + encBidId;
        if (json.undetermined.error_id) url += "&error_id=" + json.undetermined.error_id;
        if (json.undetermined.error_message) url += "&error_message=" + encodeURI(json.undetermined.error_message);
        outputTag(url);
      };
      var measure = function () {
        if (typeof window.microadViewableImpMeasure == "function") {
          window.microadViewableImpMeasure(ad, onSuccess, onFailure);
        }
      };
      if (window.addEventListener) {
        window.addEventListener("load", measure , false);
      } else if (window.attachEvent) {
        window.attachEvent("onload", measure);
      }
    };
  }
})();
