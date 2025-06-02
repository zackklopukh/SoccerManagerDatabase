# Soccer Management Application

## 📚 Executive Summary
The **Soccer Management Application** provides a web-based solution for efficiently managing soccer teams and players. Users can add new players, view team rosters, manage traits, and delete records with ease. Built using **Flask** for the backend and **MySQL** for data storage, the application offers an intuitive and organized management system that enhances sports data management.

---

## 🚀 Business Problem to be Solved
Managing soccer teams and players can be a complex and time-consuming task. The **Soccer Management Application** addresses this challenge by:
- Allowing detailed tracking of players, teams, positions, and traits.
- Streamlining operations such as adding, deleting, and viewing records.
- Reducing manual effort and increasing data accuracy.

---

## 🛠️ Technical Specifications

### Technology Stack
- **Backend**: Flask (Python-based micro web framework)
- **Database**: MySQL
- **Frontend**: HTML templates rendered using Jinja2
- **Libraries**: `flask_mysqldb` for MySQL connectivity

### Configuration
- MySQL setup with database `SoccerManager`
- Database credentials (in `app.py`):
  ```python
  app.config['MYSQL_HOST'] = 'localhost'
  app.config['MYSQL_USER'] = 'root'
  app.config['MYSQL_PASSWORD'] = '7804'
  app.config['MYSQL_DB'] = 'SoccerManager'
  ```

---

## ⚙️ Main Functionalities
- **View Players**: Displays player details sorted by team and name.
- **View Teams**: Lists all soccer teams and their information.
- **Add Player**: Adds a new player with team and position assignments.
- **Manage Players**: Allows deleting players and managing traits.
- **View Team Roster**: Displays players for a specific team, organized by position.
- **View Player Traits**: Shows traits associated with a player.

---

## 📂 Source File Descriptions
- **`app.py`**: Contains Flask logic, routes for managing players, teams, traits, and database interactions.
- **Templates**:
  - `main_menu.html`: Application home page.
  - `view_players.html`: Player list view.
  - `teams.html`: Team list view.
  - `add_player.html`: Form to add a new player.
  - `view_team.html`: Detailed team information.
  - `view_player_traits.html`: Player traits display.
  - `manage_players.html`: Delete players and manage records.
  - `success.html`: Confirmation page for successful actions.

---

## 🗄️ Database Schema

### Tables
- **Players**: Player details (PlayerID, Name, Age, Height, etc.)
- **Teams**: Team details (TeamID, Name, Coach, Colors, etc.)
- **Positions**: Position details (PositionID, PositionName)
- **PlayerTraits**: Available player traits (TraitID, Name)
- **AcquiredTraits**: Links players to their traits
- **AcquiredTeamTactics**: Links teams to tactics

### Relationships
- `Players` → Foreign keys for `PositionID` and `TeamID`
- `AcquiredTraits` → Links `Players` to `PlayerTraits`
- `AcquiredTeamTactics` → Links `Teams` to tactics

### Usage
- **SQL Queries**:  
  - `SELECT`: View data  
  - `INSERT`: Add players and traits  
  - `DELETE`: Manage players and traits  

---

## 🏃 How to Run the Application

### Setup
1. Install MySQL and create the `SoccerManager` database.
2. Load the provided SQL schema to set up tables.

### Install Dependencies
```bash
pip install flask flask-mysqldb
```

### Run the Application
1. Start the Flask server:
   ```bash
   python app.py
   ```
2. Access the application at `http://localhost:5000`.

### Navigation
- Use the home page to access options like:
  - **View Players**
  - **View Teams**
  - **Add Player**
- Use forms to add or delete records.

---

## 🐞 Issues and Blockers

### MySQL Connector for Unity
- Faced challenges integrating MySQL with Unity due to plugin compatibility.
- Resolved the issue through extensive testing and proper plugin configuration.

### Database Configuration
- Resolved minor credential mismatches after MySQL connector setup.

### Edge Cases
- Addressed missing player or team data by implementing error handling and fallback messages.

---

## 👥 Team Contributions
- **Your glorious developer Zack**

---

## 🏆 Conclusion
The **Soccer Management Application** effectively addresses the challenges of managing soccer teams and players. It combines a robust **Flask** backend with a **MySQL** database to deliver accurate, efficient, and scalable soccer management operations.