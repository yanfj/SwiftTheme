# SwiftTheme
[![Language: Swift 2](https://img.shields.io/badge/language-swift2-f48041.svg?style=flat)](https://developer.apple.com/swift)
![Platform: iOS 7+](https://img.shields.io/badge/platform-iOS%207%2B-blue.svg?style=flat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Cocoapods compatible](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg?style=flat)](https://cocoapods.org)
[![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/jiecao-fm/SwiftTheme/blob/master/LICENSE)
[![Release version](https://img.shields.io/badge/release-0.1-blue.svg)]()

[前言](#前言) - [示例](#示例) - [安装](#安装) - [文档](#文档) - [贡献](#贡献)

![](https://github.com/jiecao-fm/SwiftThemeResources/blob/master/Screenshots/day.png)
![](https://github.com/jiecao-fm/SwiftThemeResources/blob/master/Screenshots/night.png)

## 前言
### 灵感
为了在主题切换时及时更新UI，不可避免的要在多个界面注册通知，需要针对不同的主题设置UI，当主题和界面逐渐增多，会造成大量的重复及冗余代码，给主要的业务造成干扰。

### 目标
使用SwiftTheme，通过简单的改写UI设置，就可以在初始化及切换主题时，自动更新UI。

### 主要特点
- [x] 纯Swift
- [x] 兼容Objective-C
- [x] 基于runtime
- [x] 易于集成
- [x] 支持UIAppearance
- [x] 自动监听主题切换，更新UI
- [x] 支持通过字面量设置不同主题，通过索引进行切换
- [x] 支持使用plist设置主题，可直接通过项目资源加载，或远程下载至沙盒中加载
- [x] 主题参数配置错误时日志提示
- [x] 强类型ThemePicker
- [x] 完整的Demo

## 示例

下面通过实现夜间模式，比较三种实现方法：

### 未使用SwiftTheme

```swift

var isNight: Bool = false

class ViewController: UIViewController {

	@IBOutlet weak var label     : UILabel
	@IBOutlet weak var button    : UIButton
	@IBOutlet weak var imageView : UIImageView
	
	override fund viewDidLoad() {
		super.viewDidLoad()
		setupUI()
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "setupUI", name: "ThemeUpdateNotification", object: nil)
	}
	
	func setupUI() {	
		if isNight {
			view.backgroundColor = UIColor.blackColor()
			label.textColor = UIColor.whiteColor()
			button.setTitleColor(UIColor.whiteColor(), state: .Normal)
			imageView.image = UIImage(named: "night")
		} else {
			view.backgroundColor = UIColor.whiteColor()
			label.textColor = UIColor.blackColor()
			button.setTitleColor(UIColor.blackColor(), forState: .Normal)
			imageView.image = UIImage(named: "day")
		}
	}
	
	@IBAction func toggleNight() {
		isNight = !isNight		
		NSNotificationCenter.defaultCenter().postNotificationName("ThemeUpdateNotification", object: nil)
	}
	
}
```

### SwiftTheme（索引）

```swift

var isNight: Bool = false

class ViewController: UIViewController {

	@IBOutlet weak var label     : UILabel
	@IBOutlet weak var button    : UIButton
	@IBOutlet weak var imageView : UIImageView
	
	override fund viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	
	func setupUI() {
		view.theme_backgroundColor = ThemeColorPicker(colors: "#FFF", "#000")
		label.theme_textColor = ThemeColorPicker(colors: "#000", "#FFF")
		button.theme_setTitleColor(ThemeColorPicker(colors: "#000", "#FFF"), forState: .Normal)
		imageView.theme_image = ThemeImagePicker(names: "day", "night")
	}
	
	@IBAction func toggleNight() {
		isNight = !isNight		
		ThemeManager.setTheme(isNight ? 1 : 0)
	}
	
}
```

> 直接根据索引切换样式，便于快速开发，适合主题不多、无需下载主题的App。

### SwiftTheme（plist）

```swift

var isNight: Bool = false

class ViewController: UIViewController {

	@IBOutlet weak var label     : UILabel
	@IBOutlet weak var button    : UIButton
	@IBOutlet weak var imageView : UIImageView
	
	override fund viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	
	func setupUI() {
		view.theme_backgroundColor = ThemeColorPicker(keyPath: "Global.bg")
		label.theme_textColor = ThemeColorPicker(keyPath: "ViewController.labelText")
		button.theme_setTitleColor(ThemeColorPicker(keyPath: "ViewController.buttonNormal"), forState: .Normal)
		imageView.theme_image = ThemeImagePicker(keyPath: "ViewController.image")
	}
	
	@IBAction func toggleNight() {
		isNight = !isNight
		ThemeManager.setTheme(isNight ? "Night" : "Day", path: .MainBundle)
	}
	
}
```

> 增加主题无需修改代码，适合多主题、包含下载主题的App。

## 安装

> *Cocopods、Carthage和Framework安装基于动态链接库，动态链接库最低支持iOS8。*
> 
> **如果你的项目需要支持iOS7，必须手动拷贝源文件**

#### Cocoapods
```swift
pod 'SwiftTheme'
use_frameworks!
```

#### Carthage
```swift
github "jiecao-fm/SwiftTheme"
```

#### Framework
运行项目中名为SwiftTheme的Target，将生成的framework链到你自己的项目中

#### 源文件（iOS7）
拷贝Source文件夹下的所有文件到你的项目中

## 文档

注：`①` 索引的使用方法 `②` plist的使用方法

### *基本用法*
***

#### 设置样式

SwiftTheme为每个UI相关的属性提供了 theme_backgroundColor 、 theme_image 这种以 theme_ 开头的属性，来实现对相应属性的监听与更新，你需要设置这些属性来设置主题，例如：
```swift
①
view.theme_backgroundColor = ThemeColorPicker(colors: "#FFF", "#000")
view.theme_image = ThemeImagePicker(names: "day", "night")
②
view.theme_backgroundColor = ThemeColorPicker(keyPath: "SomeColorKeyPath")
view.theme_image = ThemeImagePicker(keyPath: "SomeImageKeyPath")
```
> 不同的属性会接收不同类型的Picker，来帮助你避免传入错误的参数，并提供更简便的设置，即便你使用了错误的Picker，编译器也会提示你。

#### 切换主题

切换主题时，所有通过 theme_ 设置的属性都会立即更新，并带有渐变动画，切换方法：
```swift
①
ThemeManager.setTheme(0) // 使用第一个主题，如 "#FFF" "day"
ThemeManager.setTheme(1) // 使用第二个主题，如 "#000" "night"
②
// 使用项目资源中的day.plist作为主题
ThemeManager.setTheme("day", path: .MainBundle)
// 使用沙盒的someURL路径中的night.plist作为主题，someURL也会作为读取资源的相对路径
ThemeManager.setTheme("night", path: .Sandbox(someURL))
// 使用传入的字典dict作为主题，someURL也会作为读取资源的相对路径
ThemeManager.setTheme(dict, path: .Sandbox(someURL))
```

#### 自定义行为

切换主题时会发送名为`ThemeUpdateNotification`的通知，你可以在任何地方观察这个通知，来实现自定义的行为：
```swift
NSNotificationCenter.defaultCenter().addObserver(self, selector: "doSomething", name: ThemeUpdateNotification, object: nil)
```
```objective-c
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doSomething) name:@"ThemeUpdateNotification" object:nil];
```

### *目前支持的属性*
***

> 子类会拥有父类的属性，例如UILabel也会拥有UIView的theme_alpha等属性，这种属性不一一列出

##### UIView
- var theme_alpha: ThemeCGFloatPicker?
- var theme_backgroundColor: ThemeColorPicker?
- var theme_tintColor: ThemeColorPicker?

##### UIApplication
- func theme_setStatusBarStyle(picker: ThemeStatusBarStylePicker, animated: Bool)

##### UIBarButtonItem
- var theme_tintColor: ThemeColorPicker?

##### UILabel
- var theme_textColor: ThemeColorPicker?
- var theme_highlightedTextColor: ThemeColorPicker?
- var theme_shadowColor: ThemeColorPicker?

##### UINavigationBar
- var theme_barTintColor: ThemeColorPicker?
- var theme_titleTextAttributes: ThemeDictionaryPicker?

##### UITabBar
- var theme_barTintColor: ThemeColorPicker?

##### UITableView
- var theme_separatorColor: ThemeColorPicker?

##### UITextField
- var theme_textColor: ThemeColorPicker?

##### UITextView
- var theme_textColor: ThemeColorPicker?

##### UIToolbar
- var theme_barTintColor: ThemeColorPicker?

##### UISwitch
- var theme_onTintColor: ThemeColorPicker?
- var theme_thumbTintColor: ThemeColorPicker?

##### UISlider
- var theme_thumbTintColor: ThemeColorPicker?
- var theme_minimumTrackTintColor: ThemeColorPicker?
- var theme_maximumTrackTintColor: ThemeColorPicker?

##### UISearchBar
- var theme_barTintColor: ThemeColorPicker?

##### UIProgressView
- var theme_progressTintColor: ThemeColorPicker?
- var theme_trackTintColor: ThemeColorPicker?

##### UIPageControl
- var theme_pageIndicatorTintColor: ThemeColorPicker?
- var theme_currentPageIndicatorTintColor: ThemeColorPicker?

##### UIImageView
- var theme_image: ThemeImagePicker?

##### UIButton
- func theme_setImage(picker: ThemeImagePicker, forState state: UIControlState)
- func theme_setBackgroundImage(picker: ThemeImagePicker, forState state: UIControlState)
- func theme_setTitleColor(picker: ThemeColorPicker, forState state: UIControlState)

##### CALayer
- var theme_borderColor: ThemeCGColorPicker?
- var theme_shadowColor: ThemeCGColorPicker?

### *Picker*
***

#### ThemeColorPicker
```swift
// 目前支持的颜色格式有：
// "#ffcc00"		RGB十六进制 
// "#ffcc00dd"		+alpha
// "#FFF"			RGB十六进制缩写
// "#013E"			+alpha
①
ThemeColorPicker(colors: "#FFFFFF", "#000")
ThemeColorPicker.pickerWithColors(["#FFFFFF", "#000"])
②
ThemeColorPicker(keyPath: "someStringKeyPath")
ThemeColorPicker.pickerWithKeyPath("someStringKeyPath")
```

#### ThemeImagePicker
```swift
①
ThemeImagePicker(names: "image1", "image2")
ThemeImagePicker.pickerWithNames(["image1", "image2"])
ThemeImagePicker(images: UIImage(named: "image1")!, UIImage(named: "image2")!)
ThemeImagePicker.pickerWithImages([UIImage(named: "image1")!, UIImage(named: "image2")!])
②
ThemeImagePicker(keyPath: "someStringKeyPath")
ThemeImagePicker.pickerWithKeyPath("someStringKeyPath")
```

#### ThemeCGFloatPicker
```swift
①
ThemeCGFloatPicker(floats: 1.0, 0.7)
ThemeCGFloatPicker.pickerWithFloats([1.0, 0.7])
②
ThemeCGFloatPicker(keyPath: "someNumberKeyPath")
ThemeCGFloatPicker.pickerWithKeyPath("someNumberKeyPath")
```

#### ThemeCGColorPicker
```swift
①
ThemeCGColorPicker(colors: "#FFFFFF", "#000")
ThemeCGColorPicker.pickerWithColors(["#FFFFFF", "#000"])
②
ThemeCGColorPicker(keyPath: "someStringKeyPath")
ThemeCGColorPicker.pickerWithKeyPath("someStringKeyPath")
```

#### ThemeDictionaryPicker
```swift
①
ThemeDictionaryPicker(dicts: ["key": "value"], ["key": "value"])
ThemeDictionaryPicker.pickerWithDicts([["key": "value"], ["key": "value"]])
②
// 暂时不支持从plist中读取字典
```

#### ThemeStatusBarStylePicker
```swift
①
ThemeStatusBarStylePicker(styles: .Default, .LightContent)
ThemeStatusBarStylePicker.pickerWithStyles([.Default, .LightContent])
②
// 在自定的Key中设置指定的Value，匹配字符串即可生效
// 可选的值有："UIStatusBarStyleDefault" 和 "UIStatusBarStyleLightContent"
ThemeStatusBarStylePicker(keyPath: "someStringKeyPath")
ThemeStatusBarStylePicker.pickerWithKeyPath("someStringKeyPath")
```

### *更多*

下载SwiftTheme项目，了解如何在项目中使用，其中包含两个Demo Target：

- `Demo`演示了如何使用索引进行管理，退出时保存上次使用的主题等常见需求
- `PlistDemo`演示了如何使用plist进行管理，并包含下载保存主题Zip包等功能

## 贡献

### Issue
如果你需要帮助或者遇到Bug，请[创建一个Issue](https://github.com/jiecao-fm/SwiftTheme/issues/new)


### Pull Request
期待你的贡献 :D

### Todo
- [ ] 完善文档
- [ ] 增加ThemeColorPicker支持的格式
- [ ] [Open Issue](https://github.com/jiecao-fm/SwiftTheme/issues)

### Contributors
[GeSen](https://github.com/wxxsw), [Zhoujun](https://github.com/shannonchou)


## Lisence

The MIT License (MIT)

Copyright (c) 2016 节操精选 http://jiecao.fm

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
