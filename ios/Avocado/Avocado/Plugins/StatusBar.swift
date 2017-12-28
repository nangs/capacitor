import Foundation

/**
 * StatusBar plugin. Requires "View controller-based status bar appearance" to
 * be "NO" in Info.plist
 */
@objc(StatusBar)
public class StatusBar: AVCPlugin {
  @objc public func setStyle(_ call: AVCPluginCall) {
    let options = call.options!

    if let style = options["style"] as? String {
      if style == "DARK" {
        UIApplication.shared.statusBarStyle = .lightContent
      } else if style == "LIGHT" {
        UIApplication.shared.statusBarStyle = .default
      }
    }
    
    call.success([:])
  }
}
