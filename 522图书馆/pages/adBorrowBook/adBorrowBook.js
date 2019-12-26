var app = getApp()
var util = require('../../utils/util.js');  
var userId;
var bookId; 
var bookName;
var borrowTime='null';
var shouldTime;
var returnTime;
var count=0;
var len=0;
Page({
  data: {
    
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    borrowTime= util.formatTime(new Date());
    var timestamp = Date.parse(new Date());
    timestamp = timestamp / 1000;
    console.log("当前时间戳为：" + timestamp);
    //获取当前时间  
    var n = timestamp * 1000;
    var date = new Date(n);
    //年  
    var Y = date.getFullYear();
    //月  
    var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 2) : date.getMonth() + 2);
    //日  
    var D = date.getDate() < 10 ? '0' + date.getDate() : date.getDate();
    //时  
    var h = date.getHours();
    //分  
    var m = date.getMinutes();
    //秒  
    var s = date.getSeconds();
    var returntime = Y + '-' + M + '-' + D + ' ' + h + ":" + m + ":" + s;
    this.setData({
      returntime:returntime
    });  
    shouldTime = returntime;
    console.log("应还时间：" + Y+'-' + M +'-'+ D +' '+ h + ":" + m + ":" + s);
  },
  handleAdd: function (ev) {
    var that=this
    var formdata = ev.detail.value
    bookId = formdata['BookId']
    userId = formdata['UserId'] 
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=getUserInfo' + '&id=' + userId + '',
      method: 'post',
      data: formdata,
      success: function (result1) {
        console.log(result1.data) 
        that.setData({
          detailUser: result1.data
        })
      }
    }) 
    wx.request({
      url: 'http://localhost:8080/BookInfo?dispatch=getbyid'+'&id='+bookId+'',
      method: 'post',
      data: formdata,
      success: function (result) {    
        console.log(result.data)
        console.log(result.data.state)
        bookName = result.data.bookName    
        if (result.data.state==0)
            console.log("图书不在库")
        else
        {
           that.setData({
            detailD: result.data
          })
        }       
      }
    })
   },
  borrow:function(ev){
    var that = this;
    var formdata = ev.detail.value
    wx.request({
      url: 'http://localhost:8080/BorrowRecord?dispatch=list',
      method:'get',
      success:function(result1){
        console.log(result1)
        console.log(result1.data.length) 
        count = result1.data.length + 1  
        console.log(count) 
        wx.request({
          url: 'http://localhost:8080/BorrowRecord?dispatch=add' + '&BorrowId=' + count + '&UserId=' + userId + '&BookId=' + bookId + '&BookName=' + bookName + '&BorrowTime=' + borrowTime + '&ShouldTime=' + shouldTime + '&ReturnTime=' + returnTime + '&State=' + 0 + '',
          method: 'get',
          data: formdata,
          success: function (result) {
            console.log(result.data)
          }
        })
      }
    })
    wx.request({
      url: 'http://localhost:8080/BookInfo?dispatch=updateState&BookId='+bookId+'&State='+0+'',
      method: 'get',
      success:function(reslut2){
          console.log(reslut2.data)
      }
    })
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=getUserInfo&id=' + userId,
      method: 'get',
      data: formdata,
      success: function (result) {    
        len = result.data.lendedNum-1              
        wx.request({
          url: 'http://localhost:8080/UserInfo?dispatch=updateLendedNum&UserId=' + userId + '&LendedNum=' + len,
          method: 'get',
          data: formdata,
          success: function (result) {
            console.log(result)
          },
          fail: function (result) {
            console.log("修改失败")
          }
        })
      },
      fail:function(result){
        console.log("查询失败")
      }
    })
    wx.request({
      url: 'http://localhost:8080/BookInfo?dispatch=updateState' + '&BookId=' + bookId + ''+'&State='+0+'',
      method: 'post',
      data: formdata,
      success: function (result) {
        console.log(result.data)         
      }
    })
  },
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