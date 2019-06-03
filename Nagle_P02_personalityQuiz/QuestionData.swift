import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: DisneyType
}

enum DisneyType: String  {
    case belle = "Belle", ariel = "Ariel", stitch = "Stitch", nemo = "Nemo"
    
    var definition: String {
        switch self {
        case .belle:
            return "You are incredibly outgoing and kind. You are very studious and brave."
        case .ariel:
            return "You enjoy doing things on your own terms and can be quite mischevoius. You make your own rules and love looking for new adventures."
        case .stitch:
            return "You are full of energy and love trying new things. You would do anything for your ohana."
        case .nemo:
            return "You always put your friends before yourself. You never take no for an answer. You always keep trying."
        }
    }
}
