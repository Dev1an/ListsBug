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
			List(20..<30, selection: $selectionOne) { Text(String($0)) }
			List(66..<76, selection: $selectionTwo) { Text(String($0)) }
		}
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView().frame(width: 200)
    }
}
