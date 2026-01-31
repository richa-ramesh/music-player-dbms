# Music Player Management System

A Database Management System for managing music streaming platform data including users, artists, songs, albums, and podcasts.

## Team Members
- **Richa Ramesh**
- **Rhea Sudheer** 

## Project Overview

This project implements a centralized music album management system that stores and manages information about:
- Users and their login credentials
- Premium subscriptions
- Artists and their songs
- Albums and podcasts
- User listening preferences

## Database Schema

### Entities
1. **User** - Stores user information (ID, name, email, phone)
2. **User_login** - Login credentials (username, password)
3. **Premium_subscription** - Subscription details (type, start/end dates)
4. **Podcaster** - Podcaster information
5. **Podcasts** - Podcast details
6. **Artist** - Artist information and verification status
7. **Song** - Song details (name, genre, listeners)
8. **Album** - Album information
9. **listens_to** - User-song relationships
10. **song_features** - Links songs to artists and albums

### Normalization
All tables are in **Boyce-Codd Normal Form (BCNF)**.

## Setup Instructions

### Prerequisites
- MySQL Server (5.7 or higher)
- MySQL Workbench (optional)

### Installation Steps

1. **Clone the repository**
```bash
   git clone https://github.com/YOUR_USERNAME/music-player-dbms.git
   cd music-player-dbms
```

2. **Create the database**
```sql
   CREATE DATABASE music_player_management;
   USE music_player_management;
```

3. **Run the schema file**
```bash
   mysql -u your_username -p music_player_management < database/schema.sql
```

4. **Load sample data**
```bash
   mysql -u your_username -p music_player_management < database/data.sql
```

5. **Test with sample queries**
```bash
   mysql -u your_username -p music_player_management < database/queries.sql
```

## Features Implemented

### SQL Queries

#### Join Queries
- **Left Outer Join**: Get user email, premium subscription ID, and type for all users
- **Right Outer Join**: Display user email, username, and password for all users
- **Inner Join**: Find podcasts by specific podcaster

#### Aggregate Functions
- Average number of listeners across all songs
- Total followers of all podcasters
- Count of songs in each genre

#### Nested Queries
- Find songs with listeners less than 2500
- Find verified artists with above-average followers

### Triggers

1. **Premium Subscription Validation**
   - Validates subscription end date
   - Prevents insertion of expired subscriptions

2. **Artist Verification**
   - Automatically marks artists with <100K followers as "Not Verified"

## Database Features

- **Foreign Key Constraints**: Ensures referential integrity
- **Primary Keys**: All tables have appropriate primary keys
- **Triggers**: Automated data validation
- **Complex Queries**: Joins, aggregations, nested queries

## ER Diagram

See `diagrams/ER_Diagram.jpg` for the complete Entity-Relationship diagram.

## Sample Data

The database includes sample data for:
- 20 users
- 8 artists (Taylor Swift, Drake, Justin Bieber, etc.)
- 12 songs across multiple genres
- 10 podcasters
- 15 podcasts

## Queries Documentation

All sample queries are documented in `database/queries.sql` with comments explaining:
- Purpose of the query
- Expected results
- Use case


## Technologies Used

- **Database**: MySQL 8.0
- **Tools**: MySQL Workbench
- **Version Control**: Git & GitHub

## Future Enhancements

- Add stored procedures for common operations
- Implement user authentication functions
- Create views for frequently accessed data
- Add indexing for performance optimization
- Develop a web frontend using PHP/Python

## License

This project is for academic purposes as part of the DBMS course at PES University.

