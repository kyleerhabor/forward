//
//  LibraryInfoScene.swift
//  Sampled
//
//  Created by Kyle Erhabor on 10/12/24.
//

import SwiftUI

struct LibraryInfoScene: Scene {
  @FocusedValue(\.tracks) private var tracks

  var body: some Scene {
    UtilityWindow("Info", id: "info") {
      LibraryInfoView(tracks: tracks)
        .frame(
          width: 224, // 192 - 256
          height: 496, // 480 - 512
          alignment: .top
        )
    }
    .keyboardShortcut("i", modifiers: .command)
    .windowResizability(.contentSize)
    .restorationBehavior(.disabled)
  }
}
