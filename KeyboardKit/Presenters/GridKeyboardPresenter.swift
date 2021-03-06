//
//  GridKeyboardPresenter.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2019-04-27.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

/*
 
 This class inherits CollectionKeyboardPresenter and extends
 it with a grid layout that presents the keyboard buttons in
 an even-sized, horizontally scrolling grid.
 
 This class is well suited for emoji keyboards, since emojis
 are often evenly distributed with the same button size. You
 can modify the grid layout at any time.
 
 
 TODO:
 
 The class overrides `action(at:)` to account for the way it
 splits up the keyboard actions into chunks and presents one
 section per page. This is needed, since the collection view
 distributes horizontally flowing cells in a different order
 than the original array.
 
 This presenter lets you set the top and bottom insets for a
 collection view, which means that you can set the insets as
 you see fit. Left and right insets currently don't work.
 
 FIXME: Remove the system buttons from this class. It should
 be a separate keyboard that we can present in a stack view.
 
 TODO: The `reloadData` in `viewWillAppear` is needed, since
 it fixes a rendering bug in the collection view. Without it,
 the last four bottom-right buttons shows in incorrect order,
 but a log shows that everything is correctly setup. I guess
 it has to be caused by something in the collection view.
 
 */

//import UIKit
//
//open class GridKeyboardPresenter: CollectionKeyboardPresenter {
//
//
//    // MARK: - Initialization
//
//    public init(
//        id: String? = nil,
//        viewController: KeyboardInputViewController,
//        collectionView: KeyboardCollectionView,
//        configuration: GridConfiguration) {
//        self.configuration = configuration
//        self.keyboardRows = viewController.keyboard.actions.batched(withBatchSize: configuration.buttonsPerRow)
//        super.init(id: id, viewController: viewController, collectionView: collectionView)
//    }
//
//
//    // MARK: - Setup
//
//    open override func setupCollectionView(_ view: KeyboardCollectionView) {
//        super.setupCollectionView(view)
//        let height = configuration.rowHeight * configuration.rowsPerPage
//        view.height = CGFloat(height)
//    }
//
//
//    // MARK: - Properties
//
//    private let configuration: GridConfiguration
//
//    public let keyboardRows: [[KeyboardAction]]
//
//
//    // MARK: - Types
//
//    public struct GridConfiguration {
//
//        public init(rowsPerPage: Int, buttonsPerRow: Int, rowHeight: Int) {
//            self.rowsPerPage = rowsPerPage
//            self.buttonsPerRow = buttonsPerRow
//            self.rowHeight = rowHeight
//        }
//
//        public let rowsPerPage: Int
//        public let buttonsPerRow: Int
//        public let rowHeight: Int
//    }

    
    // MARK: - Public Properties
    
//    public var canRestoreLastPageIndex: Bool {
//        return !collectionView.isDragging
//    }
//
//    public var currentPageIndex: Int {
//        get {
//            return pageControl.currentPage
//        } set {
//            let index = newValue
//            collectionView.currentPageIndex = index
//            pageControl.currentPage = index
//        }
//    }
    
//    public var gridLayout: GridKeyboardLayout {
//        didSet { collectionView.collectionViewLayout = gridLayout }
//    }

//    public var hasMultiplePages: Bool {
//        return keyboardPages.count > 1
//    }
//
//    public var hasSystemButtons: Bool {
//        return leftSystemButtons.count + rightSystemButtons.count > 0
//    }
//
//    public var keyboardButtonsPerPage: Int {
//        return gridLayout.rowsPerPage * gridLayout.buttonsPerRow
//    }
//
//    public private(set) var keyboardPages: [[KeyboardAction]] = [[]] {
//        didSet {
//            pageControl.numberOfPages = keyboardPages.count
//            collectionView.reloadData()
//        }
//    }
//
//    open var needsInputModeSwitchKey: Bool {
//        return viewController.needsInputModeSwitchKey
//    }
//
//    open var needsSystemButtons: Bool {
//        return needsInputModeSwitchKey || hasSystemButtons || hasMultiplePages
//    }
//
//    public var numberOfPages: Int {
//        return pageControl.numberOfPages
//    }
//
//    open var systemAreaHeight: CGFloat {
//        let itemHeight = gridLayout.itemSize.height
//        return needsSystemButtons ? itemHeight : 0
//    }
    
    
    // MARK: - Public Functions
    
//    open func getActions(from actions: [KeyboardAction], evenlyFitting pageSize: Int) -> [KeyboardAction] {
//        var buttons = keyboard.actions
//        while buttons.count % pageSize > 0 {
//            buttons.append( .none)
//        }
//        return buttons
//    }
//
//    open func layoutKeyboardButtons() {
//        gridLayout.adjustButtonSize(for: collectionView)
//        collectionView.layoutIfNeeded()
//    }
//
//    open func layoutSystemButtons() {
//        let buttonSize = gridLayout.itemSize
//        layoutLeftSystemButtons(buttonSize: buttonSize)
//        layoutRightSystemButtons(buttonSize: buttonSize)
//    }
//
//    open func layoutLeftSystemButtons(buttonSize: CGSize) {
//        let x = collectionView.frame.origin.x
//        let y = collectionView.frame.maxY
//        layoutSystemButtons(leftSystemButtons, buttonSize: buttonSize, startX: x, y: y)
//    }
//
//    open func layoutRightSystemButtons(buttonSize: CGSize) {
//        let buttonCount = CGFloat(rightSystemButtons.count)
//        let x = collectionView.frame.maxX - buttonCount * buttonSize.width
//        let y = collectionView.frame.maxY
//        layoutSystemButtons(rightSystemButtons, buttonSize: buttonSize, startX: x, y: y)
//    }
//
//    open func layoutSystemButtons(_ buttons: [UIView], buttonSize: CGSize, startX: CGFloat, y: CGFloat) {
//        guard let view = viewController.view else { return }
//        var x = startX
//        buttons.forEach {
//            view.addSubview($0)
//            $0.frame.size = buttonSize
//            $0.frame.origin.x = x
//            $0.frame.origin.y = y
//            x += buttonSize.width
//        }
//    }
//
//    open func layoutPageControl() {
//        pageControl.frame.size.height = gridLayout.itemSize.height
//        pageControl.center = collectionView.center
//        pageControl.frame.origin.y = collectionView.frame.maxY
//    }
    
    
    // MARK: - Public Functions
    
//    open override func keyboardAction(at indexPath: IndexPath) -> KeyboardAction? {
//        let indexPath = gridLayout.sourceIndexPathForItem(at: indexPath)
//        let section = indexPath.section
//        let row = indexPath.row
//        guard keyboardPages.count > section else { return nil }
//        let buttons = keyboardPages[section]
//        guard buttons.count > row else { return nil }
//        return buttons[row]
//    }
//
//    open func createSystemButton(image: UIImage?, action: KeyboardAction) -> UIButton? {
//        if action == .nextKeyboard && !needsInputModeSwitchKey { return nil }
//        let button = UIButton(type: .custom)
//        button.setImage(image, for: .normal)
//        button.setImage(image, for: .highlighted)
//        button.imageView?.contentMode = .scaleAspectFit
//        setupSystemButtonGesture(for: button, action: action)
//        return button
//    }
//
//    open func setExtensionHeight(to height: CGFloat) {
//        viewController.setHeight(to: height + systemAreaHeight)
//        collectionViewHeight.constant = height
//    }
    
    
    // MARK: - UICollectionViewDataSource
    
//    open override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return keyboardPages.count
//    }
//
//    open override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return keyboardPages[section].count
//    }
    
    
    // MARK: - UICollectionViewDelegate
    
//    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let index = Int(scrollView.currentPageIndex)
//        pageControl.currentPage = index
//        viewController.settings.setCurrentPageIndex(index, for: self)
//    }
//}
