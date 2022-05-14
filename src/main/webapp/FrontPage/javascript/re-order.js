$(function () {

  // 日期更換時觸發
  $('#inputDate').on('change', function () {

    // 取得輸入日期
    let searchDate = $(this).val();
    // console.log(searchDate);

    // 找到每個select給全部的option
    $('select[name="selectTime"]').each(function () {
      $(this).html(
        `<option value="0930">9:30~10:30</option>
                    <option value="1030">10:30~11:30</option>
                    <option value="1330">13:30~14:30</option>
                    <option value="1430">14:30~15:30</option>
                    <option value="1530">15:30~16:30</option>
                    <option value="1630">16:30~17:30</option>`
      );
    });

    // 整個畫面中所有店名的span , 迴圈處理每一個span
    $('span[id^="storeName"]').each(function () {

      // 這裡的$(this)代表當下的那個span 
      // console.log($(this).text());
      let storeName = $(this).text();

      // 取得當下那個span最靠近的下拉選單的所有option
      // console.log($(this).closest('div[class="content-post"]').find('select[name="selectTime"] > option'));
      let options = $(this).closest('div[class="content-post"]').find(
        'select[name="selectTime"] > option');

      $.ajax({
        url: '/myapp/front/orderList?orderStoreName=' + storeName + '&orderDate=' +
          searchDate,
        type: 'GET',
        success: function (res) {
          // console.log(res);
          $.each(res, function (index, value) {
            // console.log(value.orderTime);

            //比較每個option的value是否與回傳的orderTime相等
            options.each(function () {
              if ($(this).val() == value.orderTime) {
                $(this).remove();
                // $(this).addClass('text-danger')
              }
            });

          });
        },
        error: function (err) {
          console.log(err)
        }
      });





    });

  });


  // $("#searchStore").click(function () {

  //   $.ajax({
  //     url: "${contextRoot}/re/saveReservation",
  //     type: "POST",
  //     data: $("form").serialize(),
  //     success: function (result) {
  //       alert("新增成功")
  //     },
  //     error: function (err) {
  //       console.log(err);
  //     }
  //   })
  // });

  $('button[name=reservation]').on('click', function () {
    // console.log(document.getElementById("#selectTime"));
    // console.log(document.getElementById("#selectPlace"));

    let formdata = new FormData();
    let orderTime = $(this).closest('div[class="content-post"]').find(
      'select[name="selectTime"] > option:selected').val();

    let inputStoreName = $(this).closest('div[class="content-post"]').find('span[id^=storeName]').text();
    console.log(inputStoreName);
    formdata.append("orderTime", orderTime);
    formdata.append("orderDate", $('#inputDate').val());
    formdata.append("orderStoreName", inputStoreName);
    formdata.append("orderStorePop", $('#inputNumber').val());


        //預約防呆
        Swal.fire({
          title: '確定預約?',
          showDenyButton: true,
          confirmButtonText: '預約',
          denyButtonText: `回去修改`,
        }).then((result) => {
          if (result.isConfirmed) {
            $.ajax({
              url: "/myapp/re/saveReservation",
              type: "POST",
              data: formdata,
              processData: false, //google這兩個
              contentType: false,
              success: function (result) {
                console.log(result);
        
                let orderDate1 = result.orderDate;
                let orderStoreName1 = result.orderStoreName;
                let orderStorePop1 = result.orderStorePop;
        
                let timeStr;
                if (result.orderTime == '0930') {
                  timeStr = '0930 ~ 1030';
                } else if (result.orderTime == '1030') {
                  timeStr = '1030 ~ 1130';
                } else if (result.orderTime == '1330') {
                  timeStr = '1330 ~ 1430';
                } else if (result.orderTime == '1430') {
                  timeStr = '1430 ~ 1530';
                } else if (result.orderTime == '1530') {
                  timeStr = '1530 ~ 1630';
                } else if (result.orderTime == '1630') {
                  timeStr = '1630 ~ 1730';
                }
        
                Swal.fire({
                  title: '預約成功',
                  icon: 'success',
                  html: `<p>預約日期:${orderDate1}</p></br><p>預約地點:${orderStoreName1}</p></br><p>預約人數:${orderStorePop1}</p></br><p>預約時段:${timeStr}</p>`,
                  // html: `<p>預約日期:${orderDate1}</p></br><p>預約地點:${result.orderStoreName}</p></br><p>預約人數:${result.orderStorePop}</p></br><p>預約時段:${timeStr}</p>`,
                  //  text:`${result.orderStoreName}`,
                  //	text:`${result.orderStorePop}`,
                  confirmButtonText: '確定'
                }).then(() => {
                  location.href = "/myapp/front/Re-Order";
                })
      
                //舊的
                // Swal.fire({
                //   title: '預約成功',
                //   icon: 'success',
                //   html: `<p>預約日期:${result.orderDate}</p></br><p>預約地點:${result.orderStoreName}</p></br><p>預約人數:${result.orderStorePop}</p></br><p>預約時段:${timeStr}</p>`,
                //   //  text:`${result.orderStoreName}`,
                //   //	text:`${result.orderStorePop}`,
                //   confirmButtonText: '確定'
                // }).then(() => {
                //   location.href = "/myapp/front/Re-Order";
                // })
        
              },
              error: function (err) {
                console.log(err);
              }
            })
           }
          //  else if (result.isDenied) {
          //   Swal.fire('未完成修改', '', 'info')
          // }
        })

  })

});