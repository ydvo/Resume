#import "template.typ": *

// Put your personal information here
#let name = "Yan Dvoretskiy"
#let phone = "801-755-2124"
#let email = "yandvo@gmail.com"
#let github = "ydvo"
#let linkedin = "yan-dvoretskiy"

// Since the following arguments are within the `with` block,
// you can remove/comment any argument to fallback to the preset value and/or
// remove it.
#show: resume.with(
  top-margin: 0.25in,
  // font: "Lato",
  personal-info-font-size: 10pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  linkedin-user-id: linkedin,
  github-username: github,
)

#custom-title("Education")[
  #education-heading(
    "Dartmouth College", // institution
    "Hanover, NH",
    "Bachelor of Arts (B.A.) in Computer Science modified with Engineering Science",
    "Bachelor of Engineering (B.E.) in Computer Engineering", // degree
    "3.5/40",
    datetime(year: 2022, month: 8, day: 1), // start-date
    datetime(year: 2026, month: 6, day: 1), // end-date
  )[
    Relevant Coursework: #emph("Embedded Systems, Digital Electronics, Microprocessors, Computer Architecture, Operating Systems")
  ]
  // More educational qualifications ...
]

#custom-title("Experience")[
  #work-heading(
    "Wilcox Industries", // company
    "Newington, NH", // location
    "Firmware / Electrical Engineering Intern", // title
    datetime(year: 2025, month: 6, day: 1), // start-date
    datetime(year: 2025, month: 8, day: 1), // end-date
  )[
    - Designed, prototyped, and debugged a modular embedded software platform on STM32 for scalable sensor testing across current and future product lines reducing test setup from hours to minutes
    - Created a custom PCB in Altium and led hardware bring-up, validation, and firmware integration, which enabled repeatable testing across peripherals and eliminated an entire class of manual regression errors
    - Developed embedded firmware in C++ with modular, layered abstractions (drivers, interfaces, CLI), enabling extensibility and reuse across 3+ hardware variants
    - Built Python + Qt tooling for real-time visualization and analysis of sensor response, enabling rapid identification of calibration errors and reducing debugging effort during validation.
    - Contributed across the full engineering lifecycle (requirements, schematic/PCB reviews, implementation, validation, and documentation) within Git-based workflows on large legacy codebases

  ]
  #work-heading(
    "Thayer School of Engineering at Dartmouth", // company
    "Hanover, NH", // location
    "Teaching Assistant, Digital Electronics", // title
    datetime(year: 2024, month: 6, day: 1), // start-date
    datetime(year: 2024, month: 8, day: 1), // end-date
  )[
    - Supported 40+ students in logic design, state machines, FPGA programming, and debugging complex hardware/software interactions
    - Led weekly help sessions and 1:1 instruction, translating abstract technical concepts into clear, actionable explanations

  ]
]

#custom-title("Projects")[
  #project-heading(
    "9 Axis Attitude Estimation System (C++)", // name
  )[
    - Developed bare-metal C++ firmware on ARM Cortex-M STM32 using SPI/I²C interfaces and interrupt-driven sensor acquisition.
    - Implemented a real-time Extended Kalman Filter and supporting math routines from scratch fusing accelerometer, gyroscope, and magnetometer data for 3D orientation estimation using quaternion representation
    - Built a Python simulation framework generating synthetic sensor data from known orientation sequences to validate filter accuracy without physical data collection
  ]
  #project-heading(
    "Ski Performance & Injury Prevention Wearable (C++)", // name
  )[
    - Built the full hardware-to-software stack for a sponsor-funded ESP32 wearable, integrating an IMU, force sensor, and haptic/LED feedback into real-time coaching for beginner-to-intermediate skiers
    - Implemented FreeRTOS firmware in C++ using Madgwick sensor fusion for orientation and dual-core parallelism to stream data to a companion app; achieved ~90% turn-detection accuracy
    - Debugged and patched open-source sensor libraries against datasheets, upstreaming fixes accepted by maintainers
  ]
  #project-heading(
    "Yalnix Operating System (C)", // name
  )[
    - Built a Unix-like operating system featuring Round-Robin scheduling, virtual memory (page tables/TLB), context switching, and interrupt handling. Designed system calls and terminal I/O drivers to support concurrent process execution, memory allocation, file operations, and multi-terminal access.
  ]
]

#custom-title("Leadership & Extracurricular")[
  #work-heading(
    "Dartmouth Swimming and Diving", // company
    "Hanover, NH", // location
    "Varsity Swim Team Captain", // title
    datetime(year: 2022, month: 8, day: 1), // start-date
    datetime(year: 2026, month: 6, day: 1), // end-date
  )[
    - Balanced 20+ hours/week of Division I athletics with a rigorous dual degree engineering curriculum
    - Elected Team Captain for two consecutive years; served as primary liaison between 50 athlete roster and coaching staff, coordinating schedules and team-wide initiatives
    - Won a national championship in the 200-yard butterfly and set numerous program records, demonstrating sustained discipline, accountability, and performance under pressure

  ]
]
// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Technical Skills")[
  #skills()[
    - *Programming:* C++, C, Rust, Python, VHDL, MATLAB, SQL, Git, Linux
    - *Embedded & HW:* STM32, ESP32, FreeRTOS, SPI, I2C, UART, Oscilloscopes, Logic Analyzers, Altium Designer, Vivado
    - *Languages:* English (Fluent), Russian (Fluent)
  ]
]
