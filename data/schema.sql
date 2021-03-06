CREATE TABLE speakers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(80) NOT NULL,
  bio TEXT
);

CREATE TABLE talks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  type VARCHAR(80) NOT NULL,
  abstract TEXT NOT NULL,
  day DATE,
  start_time TIME,
  end_time TIME,
  room VARCHAR(80)
);

CREATE TABLE talks_speakers (
  talk_id INTEGER NOT NULL,
  speaker_id INTEGER NOT NULL,
  FOREIGN KEY (talk_id) REFERENCES talks(id) ON DELETE CASCADE,
  FOREIGN KEY (speaker_id) REFERENCES speakers(id) ON DELETE CASCADE
);
