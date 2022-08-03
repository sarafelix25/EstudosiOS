//
//  TestView.swift
//  RevisionXIB
//
//  Created by Sara Batista dos Santos Felix on 8/3/22.
//

import UIKit

class TestView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
