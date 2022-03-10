/**
 * 
 */
 const arrows = document.querySelectorAll(".arrow");
const recipeLists = document.querySelectorAll(".recipe-list");

arrows.forEach((arrow,i)=>{
    const itemNumber = recipeLists[i].querySelectorAll("img").length;
    let clickCounter = 0;
    arrow.addEventListener("click",()=>{
        clickCounter++;
        if(itemNumber-(4+clickCounter)>=0){
            recipeLists[i].style.transform =`translateX(${
                recipeLists[i].computedStyleMap().get("transform")[0].x.value-300
            }px)`;
        }else{
            recipeLists[i].style.transform="translateX(0)";
            clickCounter = 0;
        }
    });
    console.log(recipeLists[i].querySelector("img").length);
});