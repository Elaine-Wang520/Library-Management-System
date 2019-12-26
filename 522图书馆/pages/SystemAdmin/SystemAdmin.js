// pages/SystemAdmin/SystemAdmin.js
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
      url: 'http://localhost:8080/SystemAdmin?dispatch=getbyid' + str,
      method: 'get',
      success: function (result) {
        console.log(result)
        that.setData({
          listData: result.data
        })
      }
    })
  },
  logout: function (ev) {
    var bar_code = this.data.goodsid
    wx.request({
      url: 'http://localhost:8080/SystemAdmin?dispatch=logout&UserId=' + bar_code,
      method: 'get',
      success: function (result) {
        console.log(result.data)
        wx.navigateTo({
          url: '/pages/login/login',
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },
  handleTap: function (ev) {
    // 使用事件对象获取自定义参数
    var bar_code = this.data.goodsid
    // console.log(this.data.listData.userName)
    var bar_code1 = this.data.listData.userName
    var num = ev.currentTarget.dataset.num;
    console.log(num)
    if (num == 1) {
      wx.navigateTo({
        url: '/pages/adminPersonal/adminPersonal?bar_code=' + bar_code + ' &bar_code1=' + bar_code1,
      })
    }
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