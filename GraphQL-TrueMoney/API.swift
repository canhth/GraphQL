//  This file was automatically generated and should not be edited.

import Apollo

public final class UpdateBalanceMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBalance($id: Int!, $balance: Int!) {\n  updateUser(id: $id, balance: $balance) {\n    __typename\n    name\n    balance\n  }\n}"

  public var id: Int
  public var balance: Int

  public init(id: Int, balance: Int) {
    self.id = id
    self.balance = balance
  }

  public var variables: GraphQLMap? {
    return ["id": id, "balance": balance]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["id": GraphQLVariable("id"), "balance": GraphQLVariable("balance")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { (value: UpdateUser) -> Snapshot in value.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("balance", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String? = nil, balance: Int? = nil) {
        self.init(snapshot: ["__typename": "User", "name": name, "balance": balance])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var balance: Int? {
        get {
          return snapshot["balance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "balance")
        }
      }
    }
  }
}

public final class UsersAndTransactionsQuery: GraphQLQuery {
  public static let operationString =
    "query UsersAndTransactions($id: Int!) {\n  user(id: $id) {\n    __typename\n    id\n    name\n    balance\n    transactions {\n      __typename\n      amount\n    }\n  }\n}"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .object(User.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(user: User? = nil) {
      self.init(snapshot: ["__typename": "Query", "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }])
    }

    public var user: User? {
      get {
        return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("balance", type: .scalar(Int.self)),
        GraphQLField("transactions", type: .list(.object(Transaction.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, name: String? = nil, balance: Int? = nil, transactions: [Transaction?]? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "balance": balance, "transactions": transactions.flatMap { (value: [Transaction?]) -> [Snapshot?] in value.map { (value: Transaction?) -> Snapshot? in value.flatMap { (value: Transaction) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var balance: Int? {
        get {
          return snapshot["balance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "balance")
        }
      }

      public var transactions: [Transaction?]? {
        get {
          return (snapshot["transactions"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Transaction?] in value.map { (value: Snapshot?) -> Transaction? in value.flatMap { (value: Snapshot) -> Transaction in Transaction(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Transaction?]) -> [Snapshot?] in value.map { (value: Transaction?) -> Snapshot? in value.flatMap { (value: Transaction) -> Snapshot in value.snapshot } } }, forKey: "transactions")
        }
      }

      public struct Transaction: GraphQLSelectionSet {
        public static let possibleTypes = ["Transaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("amount", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(amount: String? = nil) {
          self.init(snapshot: ["__typename": "Transaction", "amount": amount])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var amount: String? {
          get {
            return snapshot["amount"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "amount")
          }
        }
      }
    }
  }
}

public final class TransactionsQuery: GraphQLQuery {
  public static let operationString =
    "query Transactions($id: Int!) {\n  transaction(id: $id) {\n    __typename\n    id\n    status\n    amount\n    user {\n      __typename\n      name\n    }\n  }\n}"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("transaction", arguments: ["id": GraphQLVariable("id")], type: .object(Transaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(transaction: Transaction? = nil) {
      self.init(snapshot: ["__typename": "Query", "transaction": transaction.flatMap { (value: Transaction) -> Snapshot in value.snapshot }])
    }

    public var transaction: Transaction? {
      get {
        return (snapshot["transaction"] as? Snapshot).flatMap { Transaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "transaction")
      }
    }

    public struct Transaction: GraphQLSelectionSet {
      public static let possibleTypes = ["Transaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("status", type: .scalar(String.self)),
        GraphQLField("amount", type: .scalar(String.self)),
        GraphQLField("user", type: .object(User.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, status: String? = nil, amount: String? = nil, user: User? = nil) {
        self.init(snapshot: ["__typename": "Transaction", "id": id, "status": status, "amount": amount, "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var status: String? {
        get {
          return snapshot["status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var amount: String? {
        get {
          return snapshot["amount"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "amount")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String? = nil) {
          self.init(snapshot: ["__typename": "User", "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class AllTransactionQuery: GraphQLQuery {
  public static let operationString =
    "query AllTransaction {\n  transactionsList {\n    __typename\n    ...TransactionDetails\n  }\n}"

  public static var requestString: String { return operationString.appending(TransactionDetails.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("transactionsList", type: .list(.object(TransactionsList.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(transactionsList: [TransactionsList?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "transactionsList": transactionsList.flatMap { (value: [TransactionsList?]) -> [Snapshot?] in value.map { (value: TransactionsList?) -> Snapshot? in value.flatMap { (value: TransactionsList) -> Snapshot in value.snapshot } } }])
    }

    public var transactionsList: [TransactionsList?]? {
      get {
        return (snapshot["transactionsList"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [TransactionsList?] in value.map { (value: Snapshot?) -> TransactionsList? in value.flatMap { (value: Snapshot) -> TransactionsList in TransactionsList(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [TransactionsList?]) -> [Snapshot?] in value.map { (value: TransactionsList?) -> Snapshot? in value.flatMap { (value: TransactionsList) -> Snapshot in value.snapshot } } }, forKey: "transactionsList")
      }
    }

    public struct TransactionsList: GraphQLSelectionSet {
      public static let possibleTypes = ["Transaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("amount", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(user: User? = nil, id: Int? = nil, amount: String? = nil) {
        self.init(snapshot: ["__typename": "Transaction", "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }, "id": id, "amount": amount])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var amount: String? {
        get {
          return snapshot["amount"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "amount")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var transactionDetails: TransactionDetails {
          get {
            return TransactionDetails(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String? = nil) {
          self.init(snapshot: ["__typename": "User", "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public struct TransactionDetails: GraphQLFragment {
  public static let fragmentString =
    "fragment TransactionDetails on Transaction {\n  __typename\n  user {\n    __typename\n    name\n  }\n  id\n  amount\n}"

  public static let possibleTypes = ["Transaction"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("user", type: .object(User.selections)),
    GraphQLField("id", type: .scalar(Int.self)),
    GraphQLField("amount", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(user: User? = nil, id: Int? = nil, amount: String? = nil) {
    self.init(snapshot: ["__typename": "Transaction", "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }, "id": id, "amount": amount])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var user: User? {
    get {
      return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "user")
    }
  }

  public var id: Int? {
    get {
      return snapshot["id"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  public var amount: String? {
    get {
      return snapshot["amount"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "amount")
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(name: String? = nil) {
      self.init(snapshot: ["__typename": "User", "name": name])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }
  }
}