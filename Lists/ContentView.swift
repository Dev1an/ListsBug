//
//  ContentView.swift
//  Lists
//
//  Created by Damiaan on 21/01/2020.
//  Copyright © 2020 Devian. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var selectionOne = Set<Int>()
	@State var selectionTwo = Set<Int>()

    var body: some View {
		HStack{
			list(20..<30, binding: $selectionOne)
			list(66..<76, binding: $selectionTwo)
		}
    }

	func list(_ range: Range<Int>, binding: Binding<Set<Int>>) -> some View {
		VStack {
			List(range, id: \.self, selection: binding) { Text("Item \($0)") }
			Text(binding.wrappedValue.map{"\($0)"}.joined(separator: ", "))
		}.frame(minWidth: 100, minHeight: 100)
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView().frame(width: 200)
    }
}
