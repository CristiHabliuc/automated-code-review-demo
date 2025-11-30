import UIKit

class ImageLoader {
    var onImageLoaded: ((UIImage?) -> Void)?

    var image: UIImage? {
        didSet {
            onImageLoaded?(image)
        }
    }

    func loadAsync(url: URL) {
        DispatchQueue.global().async { [weak self] in
            guard let self = self else { return }

            // Simulated work
            sleep(1)
            let img = UIImage()

            self.image = img
        }
    }

    deinit {
        print("ImageLoader deinit")
    }
}
