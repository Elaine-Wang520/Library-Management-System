
var app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    items: [
      { name: '读者', checked: 'true' },
      { name: '图书管理员' },
      { name: '系统管理员' },
    ],
    answer: 0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  radioChange(e) {
    // console.log(e)
    console.log('radio发生change事件，携带value值为：', e.detail.value)
    // this.setData({ answer: e.detail.value });
    this.answer = e.detail.value
  },
  handleLogin(ev) {
    var judge = 0
    if (this.answer) {
      judge = this.answer
    }
    var formdata = ev.detail.value
    var str = '';
    for (var attr in formdata) {
      str += '&' + attr + '=' + formdata[attr] + ''
    }
    const bar_code = formdata['UserId']
    if (judge == 0) {
      wx.request({
        url: 'http://localhost:8080/UserInfo?dispatch=login',
        method: 'get',
        data: formdata,
        success: function (result) {
          console.log(result)
          if (result.data.result != 0) {
            console.log("result")
            wx.navigateTo({
              url: '/pages/userInfo/userInfo?bar_code=' + bar_code + '',
            })
          }
        }
      })
    }

    if (judge == 1) {
      wx.request({
        url: 'http://localhost:8080/BookAdmin?dispatch=login',
        method: 'get',
        data: formdata,
        success: function (result) {
          console.log(result.data.result)
          if (result.data.result != 0) {
            console.log("result")
            wx.navigateTo({
              url: '/pages/book/book?bar_code=' + bar_code + '',
            })
          }
        }
      })
    }
    if (judge == 2) {
      wx.request({
        url:'http://localhost:8080/SystemAdmin?dispatch=login',
        method: 'get',
        data: formdata,
        success: function (result) {
          console.log(result.data.result)
          if (result.data.result != 0) {
            console.log("result")
            wx.navigateTo({
              url: '/pages/system/system?bar_code=' + bar_code + '',
            })
          }

        }
      })
    }
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})