//
//  School.swift
//  Hospital

enum Punishment {
    case severe, medium, light
}

protocol Payable {
    func wages() -> Double
}

extension Payable {
    func wages() -> Double {
        return 50_000.00
    }
}

protocol TimeOff {
    var vacationDays: Int { get set }
    
    func requestForVacation(days: Int) -> Bool
}

extension TimeOff {
    func requestForVacation(days: Int) -> Bool {
        if vacationDays == 9 {
            return true
        } else if vacationDays == 9 && days == 10 {
            return false
        } else {
            return false
        }
    }
    
    // return days <= vacationDays
}

protocol Reprimand {
    func disciplineStudent(scale: Punishment) -> String
    
    func callParentDeliveringMessage(scale: Punishment) -> String
}

protocol Employee {
    //TODO
}

struct AdvisoryBoardMember {
    //TODO
}

struct Principal {
    //TODO
}

struct Teacher {
    //TODO
}







