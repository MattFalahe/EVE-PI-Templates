# EVE Online PI Templates ![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)

This repository contains a collection of templates for Planetary Interaction (PI) in **EVE Online**. These templates are designed to optimize your planet setups and production processes for various resources across different Command Center Upgrades skill levels (CCU).

## Features

- **Preconfigured Templates**: Ready-to-use templates for various planetary resources.
- **Support for Different Command Center Levels (CCU)**: Templates tailored for different CCU skills (CCU IV - CCU V).
- **Resource Optimization**: Templates optimized for maximum efficiency and minimal resource waste.
- **Simple Integration**: Easy to integrate into your EVE Online PI setup.

## What's Included?
- **P0 (RAW) → P1 Templates** (Extracting raw resources and refining them into P1 products)
- **P1 → P2 Templates** (Further processing P1 products into P2 items)

## Setup

To use these templates in your **EVE Online** Planetary Interaction, follow these steps:

1. Navigate to `/users/<user>/Documents/EVE/PlanetaryInteractionTemplates`
2. Unzip and paste all json files in the folder above.
3. Refresh your templates menu in game.

You can chose specific files from the Miners group. Those are divided on 2 folders. 
- CCU IV for all with skill Command Center Upgrades IV
- CCU V for all with skill Command Center Upgrades V

## 🖼️ Miners Setup & P2 Factory Preview
Here are some example setups to help visualize the planetary layouts:

### **Miners Setup**

<div style="display: flex; justify-content: center; align-items: flex-start;">
    <img src="Templates/images/Miners_setup_preview.png" style="height: auto; width: auto;">
</div>

*This setup is optimized for maximum extraction efficiency, ensuring a steady flow of raw materials for P1 production.*  

- The **extra Launchpad** (left) is designed for **convenient P1 transfers**, allowing uninterrupted production even when you're not in the same system to pick up resources or transfer them to Orbital Skyhooks.  
- Over time, **resource depletion** will require you to move the extractor head across the planet.  
  - **CCU V templates** allow for this without modifications, as they have spare power.  
  - **CCU IV templates** may require deleting the left Launchpad on some planets to free up power.  
- To keep your facilities running **24/7**, your extractor must produce **1,152,000 P0 (raw materials) per day**.  

### P2 Factory Setup  

<div style="display: flex; justify-content: center; align-items: flex-start;">
    <img id="img1" src="Templates/images/1_x_P2_Factory_preview.png" style="width: 45%; height: auto;">
    <img id="img2" src="Templates/images/2_x_P2_Factory_preview.png" style="width: 45%; height: auto;">
</div>

*This is a single **P2 factory** layout. If you have **Command Center Upgrades V (CCU V)**, you can place **two** of these setups on one planet.  
If you have **CCU IV**, you may need to **delete 1 or 2 facilities** from the template to fit within power limits.*  

### **Why this model?**  
- This layout **gives you flexibility**, allowing you to produce **one or multiple P2 products** per planet, depending on your industrial needs.  
- The **central Launchpad** stores **P1 products** and supplies them to the factories to produce **P2 products**.  
- **P2 products** will be stored in the same Launchpad, ensuring **easy access**.  
- **Orbital Skyhooks** can be used to store extra P1 materials and transfer them when production requires it.  
- This setup **maximizes efficiency** while keeping logistics simple.

### P3 Factory Setup  

<div style="display: flex; justify-content: center; align-items: flex-start;">
    <img id="img1" src="Templates/images/1_x_P3_Factory_preview.png" style="width: 45%; height: auto;">
    <img id="img2" src="Templates/images/2_x_P3_Factory_preview.png" style="width: 45%; height: auto;">
</div>

*This is a single **P3 factory** layout. If you have **Command Center Upgrades V (CCU V)**, you can place **two** of these setups on one planet.  
If you have **CCU IV**, you may need to **delete 1 or 2 facilities** from the template to fit within power limits.*  

### **Why this model?**  
- This layout **gives you flexibility**, allowing you to produce **one or multiple P3 products** per planet, depending on your industrial needs.
- According to your needs this model will work with mix **P2 + P3 model on one planet**.   
- The **central Launchpad** stores **P2 products** and supplies them to the factories to produce **P3 products**.  
- **P3 products** will be stored in the same Launchpad, ensuring **easy access**.  
- **Orbital Skyhooks** can be used to store extra P2 materials and transfer them when production requires it.  
- This setup **maximizes efficiency** while keeping logistics simple. Allows you to mix models **P2 + P3 / P3 + P3** to be flexible. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

We welcome contributions from the community! If you have a template to add or an enhancement to suggest, please feel free to fork this repository, make your changes, and submit a pull request.

### [Factory Default Schema](https://github.com/MattFalahe/EVE-PI-Templates/blob/dev/Templates/Schema/Default%20Schema%20for%20Factory.json)

*In the Schema folder, you'll find the default schema describing how factory templates are structured. This file serves as a reference to help you understand how templates are built and what format they follow. It provides a basic overview of the expected structure and fields used in the factory templates.*

### Steps for contributing:

1. Fork this repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -am 'Add new template for Biofuels'`).
4. Push to your forked repository (`git push origin feature/your-feature`).
5. Open a pull request with a description of your changes.

## Acknowledgements

- EVE Online for providing the rich world of Planetary Interaction.
- The community for contributing feedback and suggestions to improve these templates.

## Contact

For any questions, suggestions, or issues, please feel free to open an issue on the repository or contact the project maintainer directly in game - Matt Falahe.
