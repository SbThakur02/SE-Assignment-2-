# SE_Assignment
# File Organization System

## Overview
The **File Organization System** is a Linux-based automation tool that categorizes files in a specified directory based on their extensions. This improves file management efficiency and ensures a structured storage system.

## Features
- **Automatic File Sorting:** Moves files into subdirectories based on extensions.
- **Logging:** Maintains a log (`file_organizer.log`) of all operations performed.
- **Error Handling:** Ensures valid input directories and prevents data loss.
- **Backup Mechanism:** Creates a backup before moving files.
- **Performance Optimized:** Handles large numbers of files efficiently.

## Prerequisites
- Linux OS (Ubuntu, Fedora, etc.)
- Bash Shell (Pre-installed in Linux)

## Installation & Usage
### 1. Clone the Repository
```bash
git clone https://github.com/your-repository/file-organizer.git
cd file-organizer
```

### 2. Provide Execution Permission
```bash
chmod +x file_organizer.sh
```

### 3. Run the Script
```bash
./file_organizer.sh /path/to/target-directory
```

## Software Design Documentation
For detailed architecture, design principles, and SCM implementation, refer to the following documents:
- [Software Architecture Document](./file_organization_sad.md)
- [SCM Implementation](./file_organization_scm.md)
- [Performance Testing & Risk Management](./file_organization_testing.md)

## Performance & Optimization
- Uses `xargs` for parallel execution.
- Processes large files efficiently.

## Risks & Mitigation
- **File Loss Prevention:** Backup is created before file movement.
- **Performance Bottlenecks:** Optimized using batch processing.

## Contribution
1. Fork the repository.
2. Create a new feature branch.
3. Submit a pull request after testing.

## License
This project is licensed under the MIT License.

## Contact
Team Members 1)Thakur Digvijay Singh - 23BCS11888 2)Mayank - 23BCS13014 3)Paras - 23BCS11281 4)Shashi Bhushan Thakur - 23BCS10663 5)Kishan - 23BCS10777

