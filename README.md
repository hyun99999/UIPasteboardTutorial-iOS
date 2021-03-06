# UIPasteboardTutorial-iOS
๐ ํด๋ฆฝ๋ณด๋๋ก ๋ณต์ฌํ๊ธฐ ๋์์ 

**๋ด์ฉ**
- ๋ฒํผ์ ํตํด์ ํน์  ๋ฌธ์์ด์ ์์ฝ๊ฒ ํด๋ฆฝ๋ณด๋์ ๋ณต์ฌํ๊ธฐ.

# ์์ ์ 

๋จผ์  `UIPateboard` ์ ๋ํด์ ๊ฐ๋ฐ์๋ฌธ์๋ฅผ ํตํด ์์๋ณด์.

## ๐ [UIPasteboard](https://developer.apple.com/documentation/uikit/uipasteboard)

์ฌ์ฉ์๊ฐ ์ฑ ๋ด์ ํ ์์น์์ ๋ค๋ฅธ ์์น๋ก ๋ฐ์ดํฐ๋ฅผ ๊ณต์ ํ๋ ๊ฒ์ ๋๋ ๊ฐ์ฒด.

**Overview**

๋ค๋ฅธ ์ฑ๊ณผ ๋ฐ์ดํฐ๋ฅผ ๊ณต์ ํ๋ ค๋ฉด ์์คํ ์ ์ฒด์ genaral pasteboard ๋ฅผ ์ฌ์ฉํด๋ผ.

๊ฐ์ team ID ๋ฅผ ๊ฐ์ง๋ ๋ค๋ฅธ ์ฑ์ผ๋ก ๋ฐ์ดํฐ๋ฅผ ๊ณต์ ํ๋ ค๋ฉด pasteboards ์ ์ด๋ฆ์ ์ฌ์ฉํด๋ผ. 

์ผ๋ฐ์ ์ผ๋ก ์ฑ์ ๊ฐ์ฒด๋ ์ ์ ๊ฐ ์ธํฐํ์ด์ค์ ์ ํํญ๋ชฉ์ ๋ํ ๋ณต์ฌ, ์๋ผ๋ด๊ธฐ, ๋ณต์  ์์์ ์์ฒญํ  ๋ ๋ฐ์ดํฐ๋ฅผ ์ด๋ค. ๊ทธ๋ฐ ๋ค์ ๊ฐ๊ฑฐ๋ ๋ค๋ฅธ ์ฑ์ ๋ค๋ฅธ ๊ฐ์ฒด๊ฐ pasteboard ์์ ๋ฐ์ดํฐ๋ฅผ ์ฝ๊ณ  ์ ์์น์์ ์ ๊ณตํ๋ค. ์ด๊ฒ์ ์ผ๋ฐ์ ์ผ๋ก ๋ถ์ฌ๋ฃ๊ธฐ ์์์ ์์ฒญํ  ๋ ๋ฐ์ํ๋ค.

**Note**

iOS 14 ๋ถํฐ ์์คํ์ ๋ค๋ฅธ์ฑ์ pasteboard ์ปจํ์ธ ๋ฅผ ๊ฐ์ ธ์ค๋ฉด ์ฌ์ฉ์์๊ฒ ์๋ฆฐ๋ค. 

### The General Pasteboard and Named Pasteboards

์์คํ ์ ์ฒด์ general pasteboard ๋ [general](https://developer.apple.com/documentation/uikit/uipasteboard/1622106-general) ์์๋ก ์๋ณ๋๋ค. ๋ชจ๋  ์ ํ์ ๋ฐ์ดํฐ๋ฅผ ์ด๋ฅผ ํตํด์ paste board ๋ฅผ ์ป์ด์ ์ฌ์ฉ๊ฐ๋ฅํ๋ค.

[init(name:create:)](https://developer.apple.com/documentation/uikit/uipasteboard/1622074-init) ๋ฐ [withUniqueName()](https://developer.apple.com/documentation/uikit/uipasteboard/1622087-withuniquename) ํด๋์ค ๋ฉ์๋๋ก pasteboards ๋ฅผ ์์ฑํ์ฌ ๋์ผํ Team ID ๋ฅผ ๊ฐ์ง ๋ค๋ฅธ ์ฑ์ผ๋ก ๋ฐ์ดํฐ๋ฅผ ๊ณต์ ํ  ์ ์๋ค.

### Using Pasteboards

UIPasteboard ํด๋์ค๋ ๊ฐ๋ณ์ ์ธ pasteboard items ๋ฅผ ์ฝ๊ณ  ์ฐ๋ ๋ฐฉ๋ฒ๊ณผ ์ฌ๋ฌ๊ฐ์ง pasteboard items ๋ฅผ ํ๋ฒ์ ์ฝ๊ณ  ์ฐ๋ ๋ฐฉ๋ฒ์ ์ ๊ณตํ๋ค. ์์ธํ ๋ด์ฉ์ ์ด ๋ฌธ์ ํ๋จ์ `Getting and Setting pasteboard Items` ๋ฅผ ์ฐธ์กฐํด๋ผ.

pasteboard ์ ์ธ ๋ฐ์ดํฐ๋ ๋ค์ ๋ ํ์์ค ํ๋์ผ ์ ์๋ค.

- ๋ฐ์ดํฐ๊ฐ NSString, NSArray, NSDictionary, NSDate, NSNumber, UIImage, or NSURL ๊ณผ ๊ฐ์ ๊ฐ์ฒด๋ก ํํ๋  ์ ์๋ ๊ฒฝ์ฐ ๊ฐ์ผ๋ก ํ์๋  ์ ์๋ค. [setValue(_:forPasteboardType:)](https://developer.apple.com/documentation/uikit/uipasteboard/1622079-setvalue) ์ ๊ฐ์ ๋ฉ์๋๋ฅผ ์ฌ์ฉํด์ pastboard ์ ์ด๋ค.
- ๋ง์ฝ ๋ฐ์ดํฐ๊ฐ binary ์ธ ๊ฒฝ์ฐ, [setData(_:forPasteboardType:)](https://developer.apple.com/documentation/uikit/uipasteboard/1622075-setdata) ๋ฉ์๋๋ฅผ ์ฌ์ฉํ์ฌ pastboard ์ ์ด๋ค.

UIPasteboard ํด๋์ค๋ ๋จ์ผ ํน์ ์ฌ๋ฌ pasteboard items ์ ๋ฌธ์์ด, ์ด๋ฏธ์ง, URLs, colors ์ ์ฝ๊ณ  ์ฐ๊ธฐ์ํ ํธ๋ฆฌํ ๋ฉ์๋๋ฅผ ์ ๊ณตํ๋ค. (๋ฌธ์ ํ๋จ์ `Getting and Setting Pasteboard Items of Standard Data Types` ์ฐธ์กฐ)

<img src ="https://user-images.githubusercontent.com/69136340/135217531-c7a96469-6512-4326-b8cf-27a12146b42a.png" width ="500">

๋ค์์ ์ฌ์ฉํด์ UIPasteboard ์ ๋ฐ์ดํฐ๋ฅผ ๊ธฐ๋กํด๋ณด๊ฒ ๋ค. ๊ฝค ๊ฐ๋จํ๋ค!

# ์์ํ๊ธฐ

- ๋ฒํผ์ ์ด๋ฒคํธ๋ฅผ ๋ถ์ฌํด์ ํด๋ฆฝ๋ณด๋๋ก ์์ฝ๊ฒ ๋ณต์ฌํด๋ณด๊ธฐ๋ก ํ๋ค.
- ๋ฐ์ดํฐ ๊ณต์ ํ๊ธฐ ์ํด์ general pasteboard ๋ฅผ ์ป์ด์ ์ฌ์ฉํด๋ณด์

### ๐ Main ๋ทฐ

<img src="https://user-images.githubusercontent.com/69136340/135217419-667cfd71-a612-40e5-bd1a-feaa7b49aa9c.png" width ="550">

### ๐ UIPasteboard ์ด์ฉ

- MainViewController

```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

// โ ๋ฒํผ ํด๋ฆญ์ idText ์ ํ์คํธ pastebaord ์ ๋ณต์ฌ.
    @IBAction func pasteText(_ sender: Any) {
        UIPasteboard.general.string = idText.text
    }
}
```

### ๐ ์์ฑ

<img src ="https://user-images.githubusercontent.com/69136340/135217448-89cabcc4-c7a6-4a15-bc24-1e3a2706938f.gif" width="250">


