🎬 Movie App

A Flutter-based movie discovery app connected to the TMDB (The Movie Database) API, with user authentication powered by Supabase. This project follows clean architecture principles and uses Get It for dependency injection.

📱 Features

	•	Explore Movies: Browse trending, popular, or top-rated movies from the extensive TMDB database.
	•	Search: Find movies by name or genre.
	•	User Authentication: Sign up, log in, and manage user profiles using Supabase.
	•	Favorites: Save your favorite movies and access them later.
	•	Responsive Design: Optimized for both mobile and tablet views.
	•	Clean Architecture: Ensures a scalable, maintainable codebase.

🛠️ Technologies Used

	•	Flutter - Framework for building cross-platform applications.
	•	TMDB API - Source for movie data.
	•	Supabase - Backend as a Service for user authentication and data storage.
	•	Get It - Dependency injection.
	•	Clean Architecture - Organizes code in a structured, testable, and modular way.

🚀 Getting Started

Prerequisites

	•	Flutter SDK installed
	•	TMDB API key (Create an account on TMDB to get an API key)
	•	Supabase project setup (Get started with Supabase)

Installation

	1.	Clone the repository:

git clone <repo-url>
cd <project-folder>


	2.	Install dependencies:

flutter pub get


	3.	Configure API keys:
	•	Add your TMDB API key in a secure place within the project configuration.
	•	Set up Supabase with your project details for authentication.
	4.	Run the project:

flutter run



📂 Project Structure

This project uses Clean Architecture principles for a well-organized and modular codebase. Here’s an overview:
	•	lib/core: Common utilities, constants, and helpers.
	•	lib/features: Contains feature-specific folders (e.g., movie discovery, authentication).
	•	lib/data: Handles data sources, repositories, and API integration.
	•	lib/domain: Defines entities, use cases, and repositories interfaces.
	•	lib/presentation: Contains UI components and view logic.
