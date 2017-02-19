import UIKit

protocol ReusableIdentifier: AnyObject {
    static var identifier: String { get }
}

extension ReusableIdentifier {
    static var identifier: String {
        return String(describing: self.self)
    }
}

extension UITableViewCell: ReusableIdentifier { }
extension UICollectionReusableView: ReusableIdentifier {}

extension UICollectionView {
    func register(_ cellClass: UICollectionViewCell.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(ofType type: T.Type, forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: (type as ReusableIdentifier.Type).identifier, for: indexPath) as! T
    }

    func register(_ viewClass: UICollectionReusableView.Type, forSupplementaryViewOfKind kind: String) {
        register(viewClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: viewClass.identifier)
    }
}

extension UITableView {
    func registerCellsWithClass(_ cellClass: UITableViewCell.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(ofType type: T.Type, forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: (type as ReusableIdentifier.Type).identifier, for: indexPath) as! T
    }
}
