# KIFPOC
This is POC project to understand the configuration of KIF.I am writting this for CocoPod as of now

step by step 

1)create a unit test target(for KIF) not iOS UI test target and add Pod file in the project and edit that file with this text

target 'Your Apps' do
  ...
end

target 'Acceptance Tests' do      ----- Acceptance Tests is the name of your unit test target
  pod 'KIF', '~> 3.0', :configurations => ['Debug']
end
2)run pod install,now close your current xcode project and open .xcworkspace file from project dir.
3)Select your unit test target and add Objective-C File add that file and then Xcode will prompt for bridging header file.Add that file and then now you are free to delete your Objective-C file(its a hack to create bridging header)
4)Add KIF+SwiftExtension.swift file in the unit test target(for KIF) and following code

import XCTest
import KIF

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

6)Now you are all set to write to write your firs test script

Rest you can take a look at my small POC.
