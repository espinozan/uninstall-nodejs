# uninstall-nodejs
This script completely uninstalls Node.js and npm from your Ubuntu/Debian system, removes unnecessary dependencies, cleans up residual configuration files, and ensures all traces of Node.js are deleted. It also handles Node.js installations made with NVM (Node Version Manager).


Este script desinstala completamente Node.js y npm de tu sistema Ubuntu/Debian, elimina dependencias innecesarias, limpia archivos de configuración residuales y asegura que todos los rastros de Node.js sean eliminados. También maneja las instalaciones de Node.js realizadas con NVM (Node Version Manager).


```markdown
# Uninstall Node.js Completely

This script completely uninstalls Node.js and npm from your Ubuntu/Debian system, removes unnecessary dependencies, cleans up residual configuration files, and ensures all traces of Node.js are deleted. It also handles Node.js installations made with NVM (Node Version Manager).

## Requirements

- Ubuntu/Debian (works on APT-based systems).
- Sudo privileges.

## What the script does

1. Uninstalls Node.js and npm using `apt-get remove`.
2. Removes unnecessary dependencies using `autoremove`.
3. Cleans the package cache with `apt-get clean`.
4. Deletes residual files and configurations related to Node.js in common directories like `/usr/local/lib/node_modules`, `/usr/local/bin/node`, and user directories (`~/.npm`, `~/.nvm`).
5. If **nvm** (Node Version Manager) is installed, it also uninstalls Node.js versions managed by **nvm**.
6. Verifies that Node.js and npm have been successfully uninstalled.

## Instructions

### 1. Clone or download the repository
Clone this repository or download the `uninstall-nodejs.sh` script to your machine.

### 2. Grant execution permissions to the script

Open the terminal in the folder where the script is located and grant it execution permissions with the following command:
```

```bash
chmod +x uninstall-nodejs.sh
```

### 3. Run the script

Once you have the proper permissions, run the script with the following command:

```bash
./uninstall-nodejs.sh
```

### 4. Verify uninstallation

The script will verify that **Node.js** and **npm** have been uninstalled successfully and will display a final message indicating if the process was successful.

## Note

This script is designed for **Ubuntu/Debian** systems and may not be suitable for other distributions. If you're using a different distribution, such as **CentOS** or **RHEL**, the commands may vary slightly.
```
