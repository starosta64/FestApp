import UIKit


//struct User {
//    var name, family, login, email, password: String
//}
//class UserSet {
//    let profile = User(name: "Vadim", family: " Ivanov", login: "admin", email: "kro@mail.ru", password: "")
//
//    func verif(password: String) ->String {
//        if password != "" {
//            return self.profile.name
//        } else {
//        return "Поле пароля пустое"
//
//        }
//    }
//}
//let userset = UserSet()
//print(userset.verif(password: userset.profile.password))



struct User {
    var name, family, login, email, password: String
}
class UserSet {
    var profile = User(name: "", family: "", login: "", email: "", password: "")
    
    func verif(email: String, password: String) ->String {
        if self.profile.email == email && self.profile.password == password {
            return "Авторизация прошла успешно"
        } else {
        return "Авторизация не удалась"
            
        }
    }
    func checkin(name: String, family: String, login: String, email: String, password: String, passrepid: String)  -> String {
        profile = User(name: name, family: family, login: login, email: email, password: password)
        if password !=  passrepid {
        return "Поле пароля не совпадает"
        } else {
        
        return "Регистрация прошла успешно"
    }
}
}
    let user = UserSet()
    print(user.checkin(name: "Vadim", family: "family", login: "login", email: "kro00@mail.ru", password: "1245678", passrepid: "12345678"))
print(user.verif(email: "kro00@mail.ru", password: "12345678"))




