//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["username": username, "createdAt": createdAt, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateConversationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var members: [String] {
    get {
      return graphQLMap["members"] as! [String]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "members")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelConversationConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelConversationConditionInput?]? = nil, or: [ModelConversationConditionInput?]? = nil, not: ModelConversationConditionInput? = nil) {
    graphQLMap = ["name": name, "createdAt": createdAt, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelConversationConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelConversationConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelConversationConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelConversationConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelConversationConditionInput? {
    get {
      return graphQLMap["not"] as! ModelConversationConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct CreateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var authorId: String? {
    get {
      return graphQLMap["authorId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var messageConversationId: GraphQLID {
    get {
      return graphQLMap["messageConversationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageConversationId")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelMessageConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(authorId: ModelStringInput? = nil, content: ModelStringInput? = nil, messageConversationId: ModelIDInput? = nil, createdAt: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelMessageConditionInput?]? = nil, or: [ModelMessageConditionInput?]? = nil, not: ModelMessageConditionInput? = nil) {
    graphQLMap = ["authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var authorId: ModelStringInput? {
    get {
      return graphQLMap["authorId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var messageConversationId: ModelIDInput? {
    get {
      return graphQLMap["messageConversationId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageConversationId")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMessageConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, authorId: String? = nil, content: String? = nil, messageConversationId: GraphQLID? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var authorId: String? {
    get {
      return graphQLMap["authorId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var messageConversationId: GraphQLID? {
    get {
      return graphQLMap["messageConversationId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageConversationId")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct DeleteMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateConvoLinkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var convoLinkUserId: GraphQLID? {
    get {
      return graphQLMap["convoLinkUserId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkUserId")
    }
  }

  public var convoLinkConversationId: GraphQLID {
    get {
      return graphQLMap["convoLinkConversationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkConversationId")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelConvoLinkConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(convoLinkUserId: ModelIDInput? = nil, convoLinkConversationId: ModelIDInput? = nil, createdAt: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelConvoLinkConditionInput?]? = nil, or: [ModelConvoLinkConditionInput?]? = nil, not: ModelConvoLinkConditionInput? = nil) {
    graphQLMap = ["convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var convoLinkUserId: ModelIDInput? {
    get {
      return graphQLMap["convoLinkUserId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkUserId")
    }
  }

  public var convoLinkConversationId: ModelIDInput? {
    get {
      return graphQLMap["convoLinkConversationId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkConversationId")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelConvoLinkConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelConvoLinkConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelConvoLinkConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelConvoLinkConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelConvoLinkConditionInput? {
    get {
      return graphQLMap["not"] as! ModelConvoLinkConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateConvoLinkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
    graphQLMap = ["id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var convoLinkUserId: GraphQLID? {
    get {
      return graphQLMap["convoLinkUserId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkUserId")
    }
  }

  public var convoLinkConversationId: GraphQLID? {
    get {
      return graphQLMap["convoLinkConversationId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "convoLinkConversationId")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
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
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateConvoMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateConvo($input: CreateConversationInput!, $condition: ModelConversationConditionInput) {\n  createConvo(input: $input, condition: $condition) {\n    __typename\n    id\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    associated {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    name\n    members\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateConversationInput
  public var condition: ModelConversationConditionInput?

  public init(input: CreateConversationInput, condition: ModelConversationConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createConvo", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateConvo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createConvo: CreateConvo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createConvo": createConvo.flatMap { $0.snapshot }])
    }

    public var createConvo: CreateConvo? {
      get {
        return (snapshot["createConvo"] as? Snapshot).flatMap { CreateConvo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createConvo")
      }
    }

    public struct CreateConvo: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("associated", type: .object(Associated.selections)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var associated: Associated? {
        get {
          return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "associated")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Associated: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessage($input: CreateMessageInput!, $condition: ModelMessageConditionInput) {\n  createMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    author {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    authorId\n    content\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    messageConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: CreateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessage: CreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessage": createMessage.flatMap { $0.snapshot }])
    }

    public var createMessage: CreateMessage? {
      get {
        return (snapshot["createMessage"] as? Snapshot).flatMap { CreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessage")
      }
    }

    public struct CreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .object(Author.selections)),
        GraphQLField("authorId", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "author")
        }
      }

      public var authorId: String? {
        get {
          return snapshot["authorId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var messageConversationId: GraphQLID {
        get {
          return snapshot["messageConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class UpdateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessage($input: UpdateMessageInput!, $condition: ModelMessageConditionInput) {\n  updateMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    author {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    authorId\n    content\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    messageConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: UpdateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessage: UpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessage": updateMessage.flatMap { $0.snapshot }])
    }

    public var updateMessage: UpdateMessage? {
      get {
        return (snapshot["updateMessage"] as? Snapshot).flatMap { UpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessage")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .object(Author.selections)),
        GraphQLField("authorId", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "author")
        }
      }

      public var authorId: String? {
        get {
          return snapshot["authorId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var messageConversationId: GraphQLID {
        get {
          return snapshot["messageConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class DeleteMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessage($input: DeleteMessageInput!, $condition: ModelMessageConditionInput) {\n  deleteMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    author {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    authorId\n    content\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    messageConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: DeleteMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessage: DeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessage": deleteMessage.flatMap { $0.snapshot }])
    }

    public var deleteMessage: DeleteMessage? {
      get {
        return (snapshot["deleteMessage"] as? Snapshot).flatMap { DeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessage")
      }
    }

    public struct DeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .object(Author.selections)),
        GraphQLField("authorId", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "author")
        }
      }

      public var authorId: String? {
        get {
          return snapshot["authorId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var messageConversationId: GraphQLID {
        get {
          return snapshot["messageConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateConvoLinkMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateConvoLink($input: CreateConvoLinkInput!, $condition: ModelConvoLinkConditionInput) {\n  createConvoLink(input: $input, condition: $condition) {\n    __typename\n    id\n    user {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    convoLinkUserId\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    convoLinkConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateConvoLinkInput
  public var condition: ModelConvoLinkConditionInput?

  public init(input: CreateConvoLinkInput, condition: ModelConvoLinkConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createConvoLink", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateConvoLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createConvoLink: CreateConvoLink? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createConvoLink": createConvoLink.flatMap { $0.snapshot }])
    }

    public var createConvoLink: CreateConvoLink? {
      get {
        return (snapshot["createConvoLink"] as? Snapshot).flatMap { CreateConvoLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createConvoLink")
      }
    }

    public struct CreateConvoLink: GraphQLSelectionSet {
      public static let possibleTypes = ["ConvoLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var convoLinkUserId: GraphQLID? {
        get {
          return snapshot["convoLinkUserId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkUserId")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var convoLinkConversationId: GraphQLID {
        get {
          return snapshot["convoLinkConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class UpdateConvoLinkMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateConvoLink($input: UpdateConvoLinkInput!, $condition: ModelConvoLinkConditionInput) {\n  updateConvoLink(input: $input, condition: $condition) {\n    __typename\n    id\n    user {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    convoLinkUserId\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    convoLinkConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateConvoLinkInput
  public var condition: ModelConvoLinkConditionInput?

  public init(input: UpdateConvoLinkInput, condition: ModelConvoLinkConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateConvoLink", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateConvoLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateConvoLink: UpdateConvoLink? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateConvoLink": updateConvoLink.flatMap { $0.snapshot }])
    }

    public var updateConvoLink: UpdateConvoLink? {
      get {
        return (snapshot["updateConvoLink"] as? Snapshot).flatMap { UpdateConvoLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateConvoLink")
      }
    }

    public struct UpdateConvoLink: GraphQLSelectionSet {
      public static let possibleTypes = ["ConvoLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var convoLinkUserId: GraphQLID? {
        get {
          return snapshot["convoLinkUserId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkUserId")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var convoLinkConversationId: GraphQLID {
        get {
          return snapshot["convoLinkConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetConvoQuery: GraphQLQuery {
  public static let operationString =
    "query GetConvo($id: ID!) {\n  getConvo(id: $id) {\n    __typename\n    id\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    associated {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    name\n    members\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getConvo", arguments: ["id": GraphQLVariable("id")], type: .object(GetConvo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getConvo: GetConvo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getConvo": getConvo.flatMap { $0.snapshot }])
    }

    public var getConvo: GetConvo? {
      get {
        return (snapshot["getConvo"] as? Snapshot).flatMap { GetConvo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getConvo")
      }
    }

    public struct GetConvo: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("associated", type: .object(Associated.selections)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var associated: Associated? {
        get {
          return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "associated")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Associated: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnCreateConvoLinkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateConvoLink($convoLinkUserId: ID!) {\n  onCreateConvoLink(convoLinkUserId: $convoLinkUserId) {\n    __typename\n    id\n    user {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    convoLinkUserId\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    convoLinkConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var convoLinkUserId: GraphQLID

  public init(convoLinkUserId: GraphQLID) {
    self.convoLinkUserId = convoLinkUserId
  }

  public var variables: GraphQLMap? {
    return ["convoLinkUserId": convoLinkUserId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateConvoLink", arguments: ["convoLinkUserId": GraphQLVariable("convoLinkUserId")], type: .object(OnCreateConvoLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateConvoLink: OnCreateConvoLink? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateConvoLink": onCreateConvoLink.flatMap { $0.snapshot }])
    }

    public var onCreateConvoLink: OnCreateConvoLink? {
      get {
        return (snapshot["onCreateConvoLink"] as? Snapshot).flatMap { OnCreateConvoLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateConvoLink")
      }
    }

    public struct OnCreateConvoLink: GraphQLSelectionSet {
      public static let possibleTypes = ["ConvoLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var convoLinkUserId: GraphQLID? {
        get {
          return snapshot["convoLinkUserId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkUserId")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var convoLinkConversationId: GraphQLID {
        get {
          return snapshot["convoLinkConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnCreateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMessage($messageConversationId: ID!) {\n  onCreateMessage(messageConversationId: $messageConversationId) {\n    __typename\n    id\n    author {\n      __typename\n      id\n      username\n      conversations {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    authorId\n    content\n    conversation {\n      __typename\n      id\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          authorId\n          content\n          messageConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      associated {\n        __typename\n        items {\n          __typename\n          id\n          convoLinkUserId\n          convoLinkConversationId\n          createdAt\n          updatedAt\n        }\n        nextToken\n      }\n      name\n      members\n      createdAt\n      updatedAt\n    }\n    messageConversationId\n    createdAt\n    updatedAt\n  }\n}"

  public var messageConversationId: GraphQLID

  public init(messageConversationId: GraphQLID) {
    self.messageConversationId = messageConversationId
  }

  public var variables: GraphQLMap? {
    return ["messageConversationId": messageConversationId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMessage", arguments: ["messageConversationId": GraphQLVariable("messageConversationId")], type: .object(OnCreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMessage: OnCreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMessage": onCreateMessage.flatMap { $0.snapshot }])
    }

    public var onCreateMessage: OnCreateMessage? {
      get {
        return (snapshot["onCreateMessage"] as? Snapshot).flatMap { OnCreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMessage")
      }
    }

    public struct OnCreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .object(Author.selections)),
        GraphQLField("authorId", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
        GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "author")
        }
      }

      public var authorId: String? {
        get {
          return snapshot["authorId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var conversation: Conversation {
        get {
          return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "conversation")
        }
      }

      public var messageConversationId: GraphQLID {
        get {
          return snapshot["messageConversationId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageConversationId")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversations", type: .object(Conversation.selections)),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var conversations: Conversation? {
          get {
            return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Conversation: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .object(Message.selections)),
          GraphQLField("associated", type: .object(Associated.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: Message? = nil, associated: Associated? = nil, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(snapshot: ["__typename": "Conversation", "id": id, "messages": messages.flatMap { $0.snapshot }, "associated": associated.flatMap { $0.snapshot }, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public var associated: Associated? {
          get {
            return (snapshot["associated"] as? Snapshot).flatMap { Associated(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "associated")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("authorId", type: .scalar(String.self)),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, authorId: String? = nil, content: String, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "authorId": authorId, "content": content, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var authorId: String? {
              get {
                return snapshot["authorId"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "authorId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var messageConversationId: GraphQLID {
              get {
                return snapshot["messageConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "messageConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }

        public struct Associated: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelConvoLinkConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["ConvoLink"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
              GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, convoLinkUserId: GraphQLID? = nil, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "ConvoLink", "id": id, "convoLinkUserId": convoLinkUserId, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var convoLinkUserId: GraphQLID? {
              get {
                return snapshot["convoLinkUserId"] as? GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkUserId")
              }
            }

            public var convoLinkConversationId: GraphQLID {
              get {
                return snapshot["convoLinkConversationId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser($id: String!) {\n  onCreateUser(id: $id) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser($id: String!) {\n  onUpdateUser(id: $id) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser($id: String!) {\n  onDeleteUser(id: $id) {\n    __typename\n    id\n    username\n    conversations {\n      __typename\n      items {\n        __typename\n        id\n        user {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        convoLinkUserId\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        convoLinkConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        author {\n          __typename\n          id\n          username\n          createdAt\n          updatedAt\n        }\n        authorId\n        content\n        conversation {\n          __typename\n          id\n          name\n          members\n          createdAt\n          updatedAt\n        }\n        messageConversationId\n        createdAt\n        updatedAt\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversations", type: .object(Conversation.selections)),
        GraphQLField("messages", type: .object(Message.selections)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, conversations: Conversation? = nil, messages: Message? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "conversations": conversations.flatMap { $0.snapshot }, "messages": messages.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var conversations: Conversation? {
        get {
          return (snapshot["conversations"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversations")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelConvoLinkConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelConvoLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["ConvoLink"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("convoLinkUserId", type: .scalar(GraphQLID.self)),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("convoLinkConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, user: User, convoLinkUserId: GraphQLID? = nil, conversation: Conversation, convoLinkConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "ConvoLink", "id": id, "user": user.snapshot, "convoLinkUserId": convoLinkUserId, "conversation": conversation.snapshot, "convoLinkConversationId": convoLinkConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var convoLinkUserId: GraphQLID? {
            get {
              return snapshot["convoLinkUserId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkUserId")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var convoLinkConversationId: GraphQLID {
            get {
              return snapshot["convoLinkConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "convoLinkConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("authorId", type: .scalar(String.self)),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("conversation", type: .nonNull(.object(Conversation.selections))),
            GraphQLField("messageConversationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, author: Author? = nil, authorId: String? = nil, content: String, conversation: Conversation, messageConversationId: GraphQLID, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "author": author.flatMap { $0.snapshot }, "authorId": authorId, "content": content, "conversation": conversation.snapshot, "messageConversationId": messageConversationId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var author: Author? {
            get {
              return (snapshot["author"] as? Snapshot).flatMap { Author(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "author")
            }
          }

          public var authorId: String? {
            get {
              return snapshot["authorId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "authorId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var conversation: Conversation {
            get {
              return Conversation(snapshot: snapshot["conversation"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "conversation")
            }
          }

          public var messageConversationId: GraphQLID {
            get {
              return snapshot["messageConversationId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "messageConversationId")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return snapshot["updatedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, username: String, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "User", "id": id, "username": username, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, members: [String], createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(snapshot: ["__typename": "Conversation", "id": id, "name": name, "members": members, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var members: [String] {
              get {
                return snapshot["members"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "members")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return snapshot["updatedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}