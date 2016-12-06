Requirements

Users stories
•	User can create, edit, update, delete posts / projects.
•	Other users can only view
•	Set up CRUD

Features
•	pagination
•	devise
•	email notification (sendgrid)
•	contact form
•	markdown / synthax highlighting
•	comments

DATA

POST has_many :episodes
•	title:string
•	content:string
•	title
•	description

PROJECT belongs_to :podcast
•	title:string
•	description:text
•	link:string (button)

USER belongs_to :podcast
•	use devise for this

Pages
•	Home 
•	Posts#index
•	Posts#show
•	Projects#index
•	Projects#show
•	Contact 
