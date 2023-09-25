//
//  
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restauraunt",
                 description: "Where do you go to restauraunt."),
            Task(title: "Your favorite local cafe",
                 description: "Where do you go to do cafe."),
            Task(title: "Your go to brunch place",
                 description: "When you want brunch!"),
            Task(title: "Your favorite hiking place", description: "Your favorite place to hike")
        ]
    }
}
