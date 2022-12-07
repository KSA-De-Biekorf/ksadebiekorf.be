type PhotoSettings = {
  src: string;
  offset?: {
    x: number,
    y: number,
  },
  zoom?: number
};

export default function composite(photos: PhotoSettings[], canvas: HTMLCanvasElement) {
  switch (photos.length) {
    case 3:
      composite3(photos, canvas);
      break;
    default:
      console.error("Invalid layout ${photos.length}");
  }
}

function composite3(photos: PhotoSettings[], canvas: HTMLCanvasElement) {
  // let ctx = canvas.getContext("2d")!;
  // let img = document.createElement("img");
  // img.src = photos[0].src;
  // console.log(img);
  // ctx.drawImage(img, 0, 0);

}
