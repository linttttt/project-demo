$(function(){
    $("#app-title").text("equipmet")
    $("#myapp").append(Ebookcard())
})


function eCard(){
    return `<div class="card" style="width: 18rem;">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
  </div>`
}

function Ebookcard(
  eqpt="電子閱讀器",
  state="借用",
  iconCardimage="R/img/iconEbook.svg",
  iconStateLight="R/img/iconAvailable.svg",
  number="9")
  {
  return `
<div class="ebookcard">
  <div class="ebookcard-icon">
    <div class="ebookcard-icon-icon">
    <img src="${iconCardimage}"/></div>
    <div class="ebookcard-icon-iconName">${eqpt}</div>
  </div>
  <div class="ebookcard-pill">
    <div class="ebookcard-pill-availability" style="border-color:#27AE60;">
      <div class="ebookcard-pill-availability-icon">
      <img src="${iconStateLight}"/></div>
      <div class="ebookcard-pill-availability-number">${number+"/10"}</div>
    </div>
    <div class="ebookcard-pill-action">
      <div class="ebookcard-pill-action-type">${state}</div>
    </div>
  </div>
</div>
`
}

function FindthingPage(){
  return `
  <div class="findthingPageContent">
    <div class="findthingPageContent-announcement">
      <div class="findthingPageContent-announcement-name">重要消息</div>
      <div class="findthingPageContent-announcement-icon"></div>
    </div>
  <div class="findthingPageContent-lecture">
    <div class="findthingPageContent-lecture-name">講座資訊</div>
    <div class="findthingPageContent-lecture-icon"></div>
  </div>
  <div class="findthingPageContent-borrow">
    <div class="findthingPageContent-borrow-name">器材借用</div>
    <div class="findthingPageContent-borrow-icon"></div>
  </div>
  <div class="findthingPageContent-classmap">
    <div class="findthingPageContent-classmap-name">課程地圖</div>
    <div class="findthingPageContent-classmap-icon"></div>
  </div>
</div>
  `
}