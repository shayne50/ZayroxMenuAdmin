-- Table des administrateurs/staff
CREATE TABLE staff (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(100) NOT NULL UNIQUE, -- SteamID / license / etc
    name VARCHAR(100) NOT NULL,
    rank VARCHAR(50) NOT NULL,               -- Rôle / rang (ex : admin, mod, superadmin)
    permissions TEXT,                        -- Liste JSON ou CSV des permissions
    added_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table des bans
CREATE TABLE bans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(100) NOT NULL,        -- SteamID / license / ip
    reason TEXT NOT NULL,
    banned_by VARCHAR(100) NOT NULL,         -- Staff qui a banni
    ban_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    ban_expire DATETIME DEFAULT NULL,
    active BOOLEAN DEFAULT TRUE
);

-- Table des kicks (expulsions)
CREATE TABLE kicks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(100) NOT NULL,
    reason TEXT NOT NULL,
    kicked_by VARCHAR(100) NOT NULL,
    kick_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table des logs d’actions staff
CREATE TABLE staff_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_identifier VARCHAR(100) NOT NULL,
    action VARCHAR(255) NOT NULL,
    target_identifier VARCHAR(100),
    details TEXT,
    log_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table des téléportations (historique ou points rapides)
CREATE TABLE teleport_points (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    x FLOAT NOT NULL,
    y FLOAT NOT NULL,
    z FLOAT NOT NULL,
    created_by VARCHAR(100),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table des véhicules spawnés (optionnel)
CREATE TABLE spawned_vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_model VARCHAR(100) NOT NULL,
    owner_identifier VARCHAR(100),
    spawned_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    x FLOAT,
    y FLOAT,
    z FLOAT
);
