//
//  PassengerRatingViewModel.swift
//  UIKonfExercise
//
//  Created by Lluís Gómez on 22/05/2019.
//  Copyright © 2019 Intelligent's App. All rights reserved.
//

import Foundation

struct ViewModel: Equatable {
    let passengerImageURL: String
    let passengerName: String
    let rating: RatingTitle
    let feedback: FeedbackTitle
    let filledStarColor: StarColor
    let showExplanationAndSubmit: Bool
    let explanationPlaceholder: ExplanationPlaceholder
    let submitButtonEnabled: Bool
    let submitButtonTitle: SubmitButtonTitle
    let starRatingEnabled: Bool
}
    
extension ViewModel {
    static func initial(passengerImageURL: String = "",
                        passengerName: String = "",
                        ratingTitle: RatingTitle = .ok,
                        ratingText: FeedbackTitle = .empty,
                        filledStarColor: StarColor = .yellow,
                        showExplanationAndSubmit: Bool = false,
                        explanationPlaceholder: ExplanationPlaceholder = .optional,
                        submitButtonEnabled: Bool = false,
                        submitButtonTitle: SubmitButtonTitle = .submit,
                        starRatingEnabled: Bool = true) -> ViewModel {
        return ViewModel(passengerImageURL: passengerImageURL, passengerName: passengerName, rating: ratingTitle, feedback: ratingText, filledStarColor: filledStarColor, showExplanationAndSubmit: showExplanationAndSubmit, explanationPlaceholder: explanationPlaceholder, submitButtonEnabled: submitButtonEnabled, submitButtonTitle: submitButtonTitle, starRatingEnabled: starRatingEnabled)
        
    }

    enum StarColor: String {
        case red = "ic_red_circle"
        case yellow = "ic_yellow_circle"
        case green = "ic_green_circle"
    }

    enum RatingTitle: String {
        case veryBad = "Very bad"
        case bad  = "Bad"
        case ok = "Ok"
        case good = "Good"
        case great = "Great"
        case empty = ""
    }

    enum FeedbackTitle: String {
        case empty = ""
        case requestExplanation = "Please let us know what happened."
    }

    enum SubmitButtonTitle: String {
        case submit = "Submit"
        case submitting = "Submitting"
    }

    enum ExplanationPlaceholder: String {
        case optional = "Add a comment (optional)"
        case compulsory = "Add a comment"
    }

}
