/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//Header Scroll
let nav=document.querySelector(".navbar");
window.onscroll = function(){
    if(document.documentElement.scrollTop>50){
        nav.classList.add("header-scrolled");
    }
    else{
        nav.classList.remove("header-scrolled");
    }
}
//nav hide
let navbar=document.querySelectorAll(".nav-link");
let navCollapse=document.querySelector(".navbar-collapse.collapse");
navbar.forEach(function(e){
    e.addEventListener("click",function(){
        navCollapse.classList.remove("show");
    })
})





