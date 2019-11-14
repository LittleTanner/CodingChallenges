import UIKit

/*
 
 Task

 King Arthur and his knights are having a New Years party. Last year Lancelot was jealous of Arthur, because Arthur had a date and Lancelot did not, and they started a duel.

 To prevent this from happening again, Arthur wants to make sure that there are at least as many women as men at this year's party. He gave you a list of integers of all the party goers.

 Arthur needs you to return true if he needs to invite more women or false if he is all set.

 Input/Output

 [input] integer array L ($a in PHP)

 An array (guaranteed non-associative in PHP) representing the genders of the attendees, where -1 represents women and 1 represents men.

 2 <= L.length <= 50
 [output] a boolean value

 true if Arthur need to invite more women, false otherwise.

 
 */

func inviteMoreWomen(_ arr: [Int]) -> Bool {
    
    var women = 0
    var men = 0
    var needToInviteMoreWomen = false
    
    for person in arr {
        if person == -1 {
            women += 1
        } else {
            men += 1
        }
    }
    
    if women < men {
        needToInviteMoreWomen = true
    }
    
    return needToInviteMoreWomen
}


inviteMoreWomen([1, -1, 1]) // true
inviteMoreWomen([-1, -1, -1]) // false
inviteMoreWomen([1, -1]) // false
inviteMoreWomen([1, 1, 1]) // true
