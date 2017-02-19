extension UIStackView {

    func addArrangedSubview(_ view: UIView, withMargins margins: UIEdgeInsets) {
        let containerView = UIView()
        containerView.addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: margins.left),
            view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -margins.right),
            view.topAnchor.constraint(equalTo: containerView.topAnchor, constant: margins.top),
            view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -margins.bottom)
        ])

        addArrangedSubview(containerView)
    }

}
