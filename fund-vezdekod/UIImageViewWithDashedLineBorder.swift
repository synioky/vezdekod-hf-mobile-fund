import UIKit

class UIImageViewWithDashedLineBorder: UIView {

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath(roundedRect: rect, cornerRadius: 10)

        UIColor.init(cgColor: CGColor.init(srgbRed: CGFloat(63), green: CGFloat( 138), blue: CGFloat( 224), alpha: CGFloat( 1.0))).setFill()
        path.fill()
        UIColor.init(cgColor: CGColor.init(srgbRed: CGFloat(63), green: CGFloat( 138), blue: CGFloat( 224), alpha: CGFloat( 100))).setStroke()

        path.lineWidth = 1

        let dashPattern : [CGFloat] = [10, 4]
        path.setLineDash(dashPattern, count: 2, phase: 0)
        path.stroke()
    }
}
