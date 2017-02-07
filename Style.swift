import UIKit

protocol View {}
extension UIView: View {}

extension View  {

    func apply(style: Style<Self>) {
        style.stylize(self)
    }
}

class Style<T> {

    let stylize: ((T) -> Void)

    init(stylize: @escaping (T) -> Void) {
        self.stylize = stylize
    }
}

infix operator +: AdditionPrecedence
func + <T>(left: Style<T>, right: Style<T>) -> Style<T> {
    return Style { view in
        left.stylize(view)
        right.stylize(view)
    }
}
