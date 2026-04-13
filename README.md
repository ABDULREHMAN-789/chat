# Chat Auto-Scroll Implementation (Gemini AI)

## Overview
This repository contains an optimized implementation of a Gemini-powered Flutter chat application. The primary focus of this project was to resolve critical User Experience (UX) issues related to chat scrolling, ensuring a smooth, intuitive, and natural conversational interface.

## UX Issues Identified & Resolved

1. **Basic Auto-Scroll:** The chat screen initially failed to automatically scroll down when a long AI response was streaming. This was fixed by implementing custom logic using `ScrollController.animateTo()`, which smoothly pushes the view to the bottom as new text chunks arrive.
2. **Pause on Manual Scroll:** Previously, if a user scrolled up to read past messages while a response was actively streaming, the auto-scroll would abruptly pull them back down. A scroll listener and an `_isAtBottom` state variable were introduced to seamlessly pause the auto-scroll during manual user navigation.
3. **Send While Scrolled Up:** Sending a new message while scrolled up did not snap the view back to the latest message. Now, invoking `_scrollController.animateTo(0.0)` immediately forces the chat list to scroll to the bottom the moment a new message is dispatched.
4. **Resume Auto-Scroll After Scroll Down:** Auto-scroll would fail to resume if the user scrolled back down during an active stream. The scroll listener now accurately detects when the user returns to the bottom (`_isAtBottom == true`) and smoothly reactivates the auto-scroll behavior.
5. **Bonus Fix (Android Network Configuration):** The application was initially failing to execute API calls on physical Android devices. This was resolved by explicitly declaring the `<uses-permission android:name="android.permission.INTERNET"/>` requirement in the primary `AndroidManifest.xml`.

## Project Links

- **Repository / Deployed Code:** [View Project](https://github.com/ABDULREHMAN-789/chat)
- **Comprehensive Demo Recording:** [Watch Video Demonstration](https://drive.google.com/file/d/1VUXdKsXqrn0BvrtZ9aLUdGlKvlOaVTig/view?usp=sharing) 
*(Note: This single video covers all testing scenarios including basic auto-scroll, manual pause, sending while scrolled up, and resuming auto-scroll).*

## How to Run Locally

If you want to test this project on your local machine, follow these steps:

1. Clone this repository.
2. Obtain a free Gemini API key from [ai.google.dev](https://ai.google.dev).
3. Run `flutter pub get` to install all required dependencies.
4. Run `flutter run` on your preferred platform (Web, Android, iOS, or macOS).
5. Enter your API key on the welcome screen to start chatting.