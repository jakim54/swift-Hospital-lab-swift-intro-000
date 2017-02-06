//
//  School.swift
//  Hospital

enum Punishment {
    
    case severe, medium, light
}

enum Subject {
    
    case math, science, english
}

protocol Payable {
    
    func wages() -> Double
}

protocol TimeOff {
    
    var vacationDays: Int { get set }
    
    func requestForVacation(days: Int) -> Bool
}

protocol Reprimand {
    
    func disciplineStudent(scale: Punishment) -> String
    
    func callParentDeliveringMessage(scale: Punishment) -> String
}

protocol Employee {
    //TODO
}

protocol Teach {
    
    func teachSubject(subject: Subject) -> String
}

extension Payable {
    
    func wages() -> Double {
        return 50_000.00
    }
}

extension TimeOff {
    
    func requestForVacation(days: Int) -> Bool {
        return days <= vacationDays
    }
}

extension Reprimand {
    
    func disciplineStudent(scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from school!"
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        case .light:
            return "You're to go back to class, don't do it again."
        }
    }
    
    func callParentDeliveringMessage(scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from school!"
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        case .light:
            return "You're to go back to class, don't do it again."
        }
    }
}

extension Teach {
    
    func teachSubject(subject: Subject) -> String {
        switch subject {
        case .math:
            return "Take out your books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyout take our your english books."
        }
    }
    
}

