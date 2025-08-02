# Minecraft Server Web Management Panel

**[中文版本 (Chinese Version)](docs/README_CN.md)**

A **lightweight** Minecraft server web management panel with modern UI and comprehensive server management features.


**Currently Supported Servers:**
- ✅ Minecraft Bedrock Server
- Minecraft Java Server

## 🚀 Features

### 🌍 Minecraft Server Download
- **Server Download** Support for downloading specific server versions directly from the management page
- **Server Version Switching** Support for one-click server version switching

### 🎮 Server Control
- **One-click Start/Stop/Restart** Minecraft Bedrock server
- **Real-time Status Monitoring** Display server running status

### ⚙️ Configuration Management
- **Support for all major configuration options**:
  - Server name and description
  - Game mode (Survival/Creative/Adventure)
  - Difficulty settings (Peaceful/Easy/Normal/Hard)
  - Maximum player count
  - Server port configuration
  - Cheats and whitelist toggles
- **Server Configuration File Management** Automatically maintains `server.properties` file

### 👥 Whitelist Management
- **Add/Remove Players** Manage the list of players allowed to join the server
- **Whitelist File Management** Automatically maintains `allowlist.json` file

### 🛡️ Permission Management
- **Three-tier Permission System**:
  - **Visitor** - Basic game permissions
  - **Member** - Standard player permissions
  - **Operator** - Full administrative permissions
- **Player Permission Settings** Assign permission levels to specific players
- **Permission File Management** Automatically maintains `permissions.json` file

### 🌍 World Management
- **World File Upload** Support for `.zip` and `.mcworld` formats with automatic extraction
- **World Switching** One-click activation of different worlds
- **World Deletion** Safe deletion of unwanted world files
- **Current World Identification** Clear display of the currently active world

### 🌍 Resource Pack Management
- **Resource File Upload** Support for `.zip` and `.mcpack` formats
- **Resource Activation** One-click activation of different resource packs
- **Resource Deletion** Safe deletion of unwanted resource packs

## 👀 Management Panel Preview
![Management Panel Preview](docs/resources/screenshot-en-home.png)
![Server Download Panel Preview](docs/resources/screenshot-en-download.png)

## 📋 System Requirements

### Server Environment
- **Operating System**: Windows 10+ or Ubuntu 18.04+ (Linux)
- **Memory**: At least 2GB RAM
- **Storage**: At least 10GB available space
- **Network**: Open ports 8080 (management panel) and 19132 (Minecraft server)

## 🛠️ Installation Guide

### Quick Start (Recommended)

1. **Download Pre-built Release**:
   - Download the appropriate version for your operating system from the [Releases](https://github.com/ckfanzhe/bedrock-easy-server/releases) page
   - `minecraft-server-manager-windows.exe` for Windows
   - `minecraft-server-manager-linux` for Linux

2. **Run the Application**:
   ```bash
   # For Linux
   chmod +x minecraft-server-manager-linux
   ./minecraft-server-manager-linux
   
   # For Windows
   minecraft-server-manager-windows.exe
   ```

### Docker Deployment

1. **Using Docker Compose (Recommended)**:
   ```bash
   # Clone the repository
   git clone https://github.com/ckfanzhe/bedrock-easy-server.git
   cd minecraft-easy-server
   
   # Create data directory for persistent storage
   mkdir -p data
   
   # Start with Docker Compose
   docker-compose up -d
   ```

2. **Using Docker directly**:
   ```bash
   # Build the image
   docker build -t minecraft-easyserver .
   
   # Run the container
   docker run -d \
     --name minecraft-easyserver \
     -p 8080:8080 \
     -p 19132:19132/udp \
     -p 19133:19133/udp \
     -v ./data:/data/bedrock-server \
     minecraft-easyserver
   ```

3. **Access the application**:
   - Open browser and visit: `http://localhost:8080`
   - Server data will be persisted in the `./data` directory

### Build from Source (For Developers)

1. **Prerequisites**: Go 1.21 or higher
2. **Clone Repository**:
   ```bash
   git clone https://github.com/ckfanzhe/bedrock-easy-server.git
   cd minecraft-easy-server
   ```
3. **Build All Platforms**:
   ```bash
   chmod +x build.sh
   ./build.sh
   ```
4. **Or Build Single Platform**:
   ```bash
   go build -o minecraft-server-manager
   ```

## 🚀 Usage Guide

### Start Management Panel

1. **Run the Application**:
   ```bash
   # For Linux
   ./minecraft-server-manager-linux
   
   # For Windows
   minecraft-server-manager-windows.exe
   ```

2. **Access Management Interface**:
   - Open browser and visit: `http://localhost:8080`
   - The management panel will load automatically

## 🔥 Firewall Configuration

### Windows Firewall
```powershell
# Allow management panel port (8080)
netsh advfirewall firewall add rule name="Minecraft Management Panel" dir=in action=allow protocol=TCP localport=8080

# Allow Minecraft server port (19132)
netsh advfirewall firewall add rule name="Minecraft Bedrock Server" dir=in action=allow protocol=UDP localport=19132
```

Ensure the following ports are open in the firewall:
- **8080**: Management panel access port
- **19132**: Minecraft Bedrock server default port
- **19133**: Minecraft Bedrock server IPv6 port

## 📝 Additional Information

### TODO Planned Features
- ✅ Support for one-click mcpackage mod import
- ✅ Linux operating system support
- 🔄 Real-time Bedrock server log viewing
- 🔄 Direct command execution to Bedrock server through web interface
- 🔄 Player online status monitoring
- 🔄 Server performance monitoring
- 🔄 Automatic world backup functionality
- ✅ Multi-language interface support
- 🔄 Java Server Support - Support for Minecraft Java Edition servers
- ✅ Docker Support - Containerized deployment support

## 🤝 Contributing

Welcome to submit issue reports, feature suggestions, and code contributions!

### Development Environment Setup
1. Fork the project repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Commit changes: `git commit -am 'Add new feature'`
4. Push branch: `git push origin feature/new-feature`
5. Create Pull Request

### Code Standards
- Use Go standard code formatting
- Add appropriate comments and documentation
- Ensure code passes tests
- Follow the project's architectural patterns

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Gin Web Framework](https://gin-gonic.com/) - High-performance Go web framework
- [Tailwind CSS](https://tailwindcss.com/) - Utility-first CSS framework
- [Font Awesome](https://fontawesome.com/) - Icon library
- [Minecraft Bedrock](https://www.minecraft.net/) - Game server