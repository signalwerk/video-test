// const video = document.createElement("video");
// // const videoElement = document.getElementById("demo");
// if (video && !video.canPlayType("video/webm")) {
//   // if (
//   //   /iP(od|hone|ad)/.test(window.userAgent) &&
//   //   videoElement.attr("crossorigin")
//   // ) {
//   //   // do not use cdn on iOS as it doesn't support crossorigin attribute on video elements
//   //   videoElement.find("source").each((index, s) => {
//   //     s.src = s.src.replace(/http(s|):\/\/[^/]*/, "");
//   //   });
//   // }
//   // this.sequences[switchId] = seeThru.create(videoElement, { alphaMask: true });
//   var transparentVideo = seeThru.create("#demo", { alphaMask: true });
// }



var video = seeThru.create('#demo', {
  start: 'external',
  width: 620,
  height: 620
});
video.play();

      
