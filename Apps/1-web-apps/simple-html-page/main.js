$(function () {
  console.log("Loading main...");
  fetch("http://localhost:8080/greeting", { mode: 'no-cors' }).then(function(response) {
    return response.json();
  }).then(function(resBody) {
    $('.greeting-id').append(resBody.id);
    $('.greeting-content').append(resBody.content);

    console.log(resBody);
  });
});
