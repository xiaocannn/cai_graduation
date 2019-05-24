<template>
  <div>
    <div class="kong">
    </div>
     <div class="sale">
        <h3 class="line-bottom">促销</h3>
        <div class="saleIn">
          <div class="saleList saleListTwo line-bottom">
            <i class="label">优惠</i>
            <p class="title">第2件9.9元</p>
            <div class="list clear">
              <p class="txt">满2件减33</p>
            </div>
          </div>
        </div>
      </div>
      <div class="kong">
        </div>
  </div>
</template>

<style scoped>
.kong {
  width: 100%;
  height: 10px;
  background: #f8f8f8;
}
 .sale {
    background: #fff;
}
 .sale h3 {
    position: relative;
    padding: .43rem .32rem;
    box-sizing: border-box;
    font-size: .42rem;
    color: #808080;
}
.line-bottom:after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    background: #ddd;
    -webkit-transform: scaleY(0.5);
    transform: scaleY(0.5);
    -webkit-transform-origin: 0 100%;
    transform-origin: 0 100%;
}
 .sale .saleIn {
    padding-left: .32rem;
}
 .sale .saleIn .saleListTwo {
    position: relative;
    padding: .45rem .32rem .45rem 1.1rem;
}
 .sale .saleIn .saleList .label {
    position: absolute;
    top: .45rem;
    left: 0;
    padding: 5px 3px;
    background: #fd3d3d;
    border-radius: 0.15rem 0 0.15rem 0;
    font-size: .34rem;
    line-height: .34rem;
    color: #fff;
    font-style: normal;
}
 .sale .saleIn .saleList .title {
    font-size: 10px;
    color: #333;
    padding-bottom: .2rem;
    line-height: .5rem;
    padding-left: 20px;
}
 .sale .saleIn .saleList .list {
    padding: .1rem 0;
}
 .sale .saleIn .saleList .list .txt {
    font-size: .34rem;
    color: #333;
    padding-left: 20px;
}
.clear:after {
    content: ' ';
    display: block;
    height: 0;
    clear: both;
}

</style>


