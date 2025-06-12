//
//  PostHogEventsSanitizer.swift
//  PostHog
//
//  Created by Kirill Tsyvaka on 12.06.25.
//

import Foundation

/// Protocol to sanitize the event
@objc(PostHogEventsSanitizer) public protocol PostHogEventsSanitizer {
    /// Sanitizes the event properties
    /// - Parameter event: the event to sanitize
    /// - Returns: the sanitized event
    ///
    /// ```swift
    /// private class ExampleSanitizer: PostHogEventsSanitizer {
    ///     public func shouldDrop(_ event: String, properties: [String: Any]) -> Bool {
    ///         return event == "some_event_name" || properies["should_drop_event"] as? Bool == true
    ///     }
    /// }
    /// ```
    @objc func shouldDrop(_ event: String, properties: [String: Any]) -> Bool
}
