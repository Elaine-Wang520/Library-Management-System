// pages/readerBorrowing/readerBorrowing.js
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(options)
    this.setData({ goodsid: options.bar_code })
    var formdata = { 'id': this.data.goodsid }
    var str = ''
    str += '&UserId=' + formdata['id']+''
    var that = this
    var borrowdBook=0
    wx.request({
      url: 'http://localhost:8080/BorrowRecord?dispatch=getBorrowbyUserId' + str,
      method: 'get',
      success: function (result) {
        console.log(result)
        console.log(result.data.length)
        borrowdBook = result.data.length
        that.setData({
          listData: result.data,
          borrowed: result.data.length
        })
      }
    })
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=getUserInfo&id=' + formdata['id'],
      method: 'get',
      success: function (result) {
        that.setData({
          rest: result.data.lendedNum - borrowdBook
        })
      }
    })
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