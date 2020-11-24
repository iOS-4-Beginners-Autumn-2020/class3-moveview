import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// 1. Create a new UIView
		let square = UIView(frame: CGRect(x: 100, y: 100, width: 150, height: 150))


		// 2. Set its Background Color
		square.backgroundColor = .yellow

		// 3. Add it as subview

		self.view.addSubview(square)

		// 4. Profit

		let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))

		square.addGestureRecognizer(tap)
	}

	@objc func handleTap(sender: UITapGestureRecognizer) {
		guard let squareView = sender.view else { return }
		// TODO – rotate view by 45 deg
		UIView.animate(withDuration: 0.5, animations: {
			squareView.center.x += 50
			squareView.center.y += 50
		})
	}
}
