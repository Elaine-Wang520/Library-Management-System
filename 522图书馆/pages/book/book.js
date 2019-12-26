// pages/BookAdmin/BookAdmin.js
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
    str += '&id=' + formdata['id'] + ''
    var that = this
    console.log(str)
    wx.request({
      url: 'http://localhost:8080/BookAdmin?dispatch=getbyid' + str,
      method: 'get',
      success: function (result) {
        console.log(result)
        that.setData({
          listData: result.data
        })
      }
    })
  },
  handleTap: function (ev) {
    // 使用事件对象获取自定义参数
    var bar_code = this.data.goodsid
    // console.log(this.data.listData.userName)
    var bar_code1 = this.data.listData.userName
      wx.navigateTo({
        url: '/pages/adPersonal/adPersonal?bar_code=' + bar_code + ' &bar_code1=' + bar_code1,
      })
  },
  logout: function (ev) {
    var bar_code = this.data.goodsid
    wx.request({
      url: 'http://localhost:8080/BookAdmin?dispatch=logout&AdId=' + bar_code,
      method: 'get',
      success: function (result) {
        console.log(result.data)
        wx.switchTab({
          url: '/pages/index/index',
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