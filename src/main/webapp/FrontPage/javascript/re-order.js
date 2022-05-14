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

      let inputStoreName =  $(this).closest('div[class="content-post"]').find('span[id^=storeName]').text();  
      console.log(inputStoreName);
        formdata.append("orderTime", orderTime);
        formdata.append("orderDate", $('#inputDate').val());
        formdata.append("orderStoreName",inputStoreName);
        formdata.append("orderStorePop", $('#inputNumber').val());

        $.ajax({
          url: "/myapp/re/saveReservation",
          type: "POST",
          data: formdata,
          processData:false,  //google這兩個
          contentType:false,
          success: function (result) {
            console.log(result);
            Swal.fire({
                title: '預約成功',
                icon:'success',
                text:`${result.orderStoreName}`,
                confirmButtonText: '確定'
              }).then(() => {
                location.href="/myapp/front/Re-Order";
              })
            
          },
          error: function (err) {
            console.log(err);
          }
        })

      })




    });
