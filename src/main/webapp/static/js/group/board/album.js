var inputtedImages = [];

let appendAlbumForm = function(formData){
    for(var num = 0 ; num < inputtedImages.length ; num++){
        formData.append('albumPicList', inputtedImages[num]);
    }
    // formData.delete('filesInput');
    return formData;
};

const btnDivHTML = function(){
    const div= $($.parseHTML('<div>'))
        .attr('class', 'mx-auto d-flex justify-content-end');
    const btn = $($.parseHTML('<button>'))
        .attr('class', 'removeUploadingImageBtn btn btn-xs btn-default')
        .attr('type', 'button');
    const trashIcon = $($.parseHTML('<span>'))
        .attr('class', 'far fa-trash-alt');
    return div.append(btn.append(trashIcon));
};

const imgDivHTML = function(fImg){
    const thumbnailWrappper = $('<div>')
        .attr('style', 'width: 100%');
    const thumbnail = $('<div>')
        .attr('style', 'position: relative; padding-top: 100%; overflow: hidden;');
    const centered = $('<div>')
        .attr('style', 'position: absolute; top: 0; left: 0; right: 0; bottom: 0; -webkit-transform: translate(50%,50%); -ms-transform: translate(50%,50%); transform: translate(50%,50%);');
    const img = $('<img>')
        .attr('src', fImg)
        .attr('style', 'position: absolute; top: 0; left: 0; max-width: 100%; height: auto; -webkit-transform: translate(-50%,-50%); -ms-transform: translate(-50%,-50%); transform: translate(-50%,-50%);');
    return thumbnailWrappper.append(thumbnail.append(centered.append(img)));
};

const imagesPreview = function(input, ulInputGallery) {
    if (input.files) {
        const tempFormData = new FormData($("#albumForm")[0]);
        const tempFiles = tempFormData.getAll("filesInput");
        const preFilesAmount = inputtedImages.length;
        inputtedImages = inputtedImages.concat(tempFiles);
        const postFilesAmount = inputtedImages.length;

        for (let i = 0; i < tempFiles.length ; i++) {
            const imageJsID = preFilesAmount + i;
            const reader = new FileReader();
            reader.onload = function(event) {
                const li = $($.parseHTML('<li>'))
                    .attr('imgID', imageJsID)
                    .attr('class', 'img-thumbnail mr-1')
                    .attr('style', 'width: 100px; display: inline-block;');
                const div1 = btnDivHTML();
                const div2 = imgDivHTML(event.target.result);
                li.append(div1).append(div2).appendTo(ulInputGallery);
            };
            reader.readAsDataURL(input.files[i]);
        }
    }
};
$('#filesInput').on('change', function(){
    imagesPreview(this, 'ul.inputGallery');
});

$(document).on('click','button.removeUploadingImageBtn',function(e){
    let thisLiTag = $(this).parent().parent();
    console.log($(this)[0]);
    inputtedImages.splice($(this).parent().parent().attr('imgID')*1, 1);
    thisLiTag.remove();
    let thisUlTag = $(this).parent().parent().parent();
    let arrLiTag = thisUlTag.children('li').toArray();
    var i = 0;
    for(var liTag of arrLiTag){
        $(liTag).attr('imgID', i);
        i += 1;
    }
});

// $('#setPicDate').change(function(){
//     if($("#setPicDate").is(":checked")){
//         $('#picDateDiv').css('display', 'block');
//     }else{
//         $('#picDateDiv').css('display', 'none');
//     }
// });

$(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox({
        alwaysShowClose: true,
        onShown: function() {
            console.log('Checking our the events huh?')
        },
        onNavigate: function(direction, itemIndex){
            console.log('Navigating '+direction+'. Current item: '+itemIndex)
        }
    })
});