enum Result<V, E: Error> {
    case success(V)
    case failure(E)

    @discardableResult func ifSuccess(closure: (V) -> Void) -> ElseResult<E> {
        switch self {
        case .success(let value):
            closure(value)
            return .success
        case .failure(let error):
            return .failure(error)
        }
    }
}

enum ElseResult<E: Error> {
    case success
    case failure(E)

    func `else`(closure: (E) -> Void) {
        if case .failure(let error) = self {
            closure(error)
        }
    }
}
