// const input = document.querySelector('input[type="file"]')
//     input.addEventListener('change', function(e){
//     console.log(input.files)
//     const reader = new FileReader()
//     reader.onload = function () {
//         // const lines = reader.result .split('\n').map(function(line){
//         //     return line.split(',')
//         // })
//         // console.log(lines)

//         // const img = new Image()
//         // img.src = reader.result
//         // document.body.appendChild(img)
//     }
//     //reader.readAsDataText(input.files[0])
//     reader.readAsDataURL(input.files[0])
// }, false);



const input = document.querySelector('input[type="file"]')
function handleFiles (files) {
  console.log(files)
  const reader = new FileReader()
  reader.onload = function () {
    // const lines = reader.result.split('\n').map(function (line) {
    //   return line.split(',')
    // })
    // console.log(lines)
    const img = new Image()
    img.onload = function () {
      const canvas = document.createElement('canvas')
      const context = canvas.getContext('2d')
    

    canvas.width = canvas.width*2;
    canvas.height = canvas.height*2;

    //context.drawImage(img, 0, 0, canvas.width * 0.5, canvas.height * 0.5)
    context.drawImage(img, 0, 0, img.width, img.height, 
                    0, 0, canvas.width, canvas.height)

      //const imageData = context.getImageData(10, 10, canvas.width, canvas.height)
      //const data = imageData.data
    //   for (var i = 0; i <= data.length; i += 4) {
    //     const avg = (data[i] + data[i + 1] + data[i + 2]) / 3
    //     data[i] = avg
    //     data[i + 1] = avg
    //     data[i + 2] = avg
    //   }
    //   context.putImageData(imageData, 0, 0)

      document.body.appendChild(canvas)
      //canvas.toDataURL()
      //const csvfile = new Blob(['one,two,three'], { type: 'text/csv' })
      canvas.toBlob(function (blob) {
        const form = new FormData()
        form.append('image', blob, 'moody.jpg')
        const xhr = new XMLHttpRequest()
        xhr.open('POST', '/fileuploader', true)
        xhr.send(form)
      })
    }
    img.src = reader.result
    //document.body.appendChild(img)
  }
  //reader.readAsText(files[0])
  reader.readAsDataURL(files[0])
}

input.addEventListener('change', function (e) {
  handleFiles(input.files)
}, false)

document.addEventListener('dragover', function (e) {
  e.preventDefault()
  e.stopPropagation()
}, false)
document.addEventListener('drop', function (e) {
  e.preventDefault()
  e.stopPropagation()
  handleFiles(e.dataTransfer.files)
}, false)



//module.exports = router;