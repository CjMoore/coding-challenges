
class CustomArray {
  constructor(arr) {
    this.arr = arr
  }

  flatten() {
    let flat = []
    this.arr.forEach ( (element) => {
      if (Array.isArray(element)) {
        this.sub_flatten(element, flat)
      } else {
        flat.push(element)
      }
    })
    console.log(flat)
  }

  sub_flatten(arr, flat) {
    arr.forEach ( (subElement) => {
      if (Array.isArray(subElement)) {
        this.sub_flatten(subElement, flat)
      } else {
        flat.push(subElement)
      }
    })
    return flat
  }
}


let c = new CustomArray([[1,2],[3,[4,5]]])
c.flatten()
