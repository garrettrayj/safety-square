//
//  SpecialHazard.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

enum SpecialHazard: Int, HazardProtocol {
    case notApplicable
    // Standard
    case oxidizer
    case reactsWithWater
    case simpleAsphyxiant
    // Non-standard
    case corrosive
    case acid
    case alkaline
    case bio
    case poisonous
    case radioactive
    case cryogenic

    var color: Color {
        .white
    }
    
    var hazardTypeName: Text {
        Text("Special Hazard")
    }
    
    var hazardTypeSymbol: String {
        "scope"
    }
    
    var pictogram: Text? {
        switch self {
        case .bio:
            Text("\u{2623}\u{FE0E}")
        case .poisonous:
            Text("\u{2620}\u{FE0E}")
        case .radioactive:
            Text("\u{2622}\u{FE0E}")
        default:
            nil
        }
    }
    
    var code: Text {
        switch self {
        case .notApplicable:
            Text("")
        case .oxidizer:
            Text("OX")
        case .reactsWithWater:
            Text("W").strikethrough()
        case .simpleAsphyxiant:
            Text("SA")
        case .corrosive:
            Text("COR")
        case .acid:
            Text("ACID")
        case .alkaline:
            Text("ALK")
        case .bio:
            Text("BIO")
        case .poisonous:
            Text("POI")
        case .radioactive:
            Text("RA")
        case .cryogenic:
            Text("CRY")
        }
    }
    
    var title: Text {
        switch self {
        case .notApplicable:
            Text("None")
        case .oxidizer:
            Text("Oxidizer")
        case .reactsWithWater:
            Text("Reacts with Water")
        case .simpleAsphyxiant:
            Text("Simple Asphyxiant")
        case .corrosive:
            Text("Corrosive")
        case .acid:
            Text("Acid")
        case .alkaline:
            Text("Alkali")
        case .bio:
            Text("Biological")
        case .poisonous:
            Text("Poisonous")
        case .radioactive:
            Text("Radioactive")
        case .cryogenic:
            Text("Cryogenic")
        }
    }
    
    var information: Text {
        switch self {
        case .notApplicable:
            Text("")
        case .oxidizer:
            Text("""
            Oxidizer materials present significant hazards due to their ability to facilitate combustion and support the rapid spread of fires. These substances, often found in chemicals like peroxides or nitrates, provide oxygen to fuel the ignition and intensify fires, making them difficult to control. Contact with oxidizers can result in skin or eye irritation and may lead to respiratory issues if inhaled. Additionally, oxidizers can react violently when in contact with combustible materials, increasing the risk of explosions or flash fires.

            Examples:

            - Potassium perchlorate
            - Ammonium nitrate
            - Hydrogen peroxide
            """)
        case .reactsWithWater:
            Text("""
            Materials that react with water pose significant hazards due to their potential for producing flammable, corrosive, or toxic byproducts upon contact with moisture. Substances such as alkali metals (e.g., sodium, potassium) and certain metal hydrides react violently with water, releasing hydrogen gas, which can ignite or explode in the presence of air. Other materials, such as certain acids or bases, can undergo exothermic reactions with water, leading to thermal burns or the release of hazardous gases. Additionally, reactive materials may generate heat, spatter, or release toxic fumes upon contact with water, posing risks of chemical burns, respiratory irritation, or environmental contamination.

            Examples:

            - Caesium
            - Sodium
            - Diborane
            - Sulfuric acid
            """)
        case .simpleAsphyxiant:
            Text("""
            Simple asphyxiant gas. The SA symbol shall also be used for liquified carbon dioxide vapor withdrawal systems and where large quantities of dry ice are used in confined areas.

            Examples:

            - Helium
            - Nitrogen
            - Neon
            - Argon
            - Krypton
            - Xenon
            - Methane
            - Ethane
            - Carbon dioxide
            """)
        case .corrosive:
            Text("""
            Corrosive materials pose significant hazards due to their ability to chemically degrade or destroy other substances upon contact. Exposure to corrosive materials can lead to severe chemical burns on skin and eyes, potentially causing permanent damage or blindness. Inhalation of corrosive fumes or vapors can damage the respiratory system, leading to difficulty breathing or other respiratory complications. Additionally, corrosive materials can corrode or deteriorate equipment, infrastructure, and the environment, posing risks of structural failures or environmental contamination.

            Examples:

            - Sulfuric acid
            - Potassium hydroxide
            """)
        case .acid:
            Text("""
            Acids present significant hazards due to their corrosive properties and ability to cause severe damage upon contact. Exposure to acids can result in chemical burns on the skin and eyes, leading to tissue damage and potential blindness. Inhalation of acidic fumes or vapors can irritate the respiratory system, causing breathing difficulties or lung damage. Ingestion of acids can lead to internal burns and damage to the digestive tract, resulting in serious health complications or even death. Acids can also corrode metals, equipment, and infrastructure, posing risks of structural failure or environmental contamination.
            """)
        case .alkaline:
            Text("""
            Alkali materials present significant hazards due to their caustic nature and high pH levels. Exposure to alkali materials can cause severe burns on skin and eyes upon contact, leading to tissue damage and potential blindness. Inhalation of alkali dust or fumes can irritate the respiratory tract and cause respiratory distress. Ingestion of alkali substances can result in internal chemical burns and damage to the digestive system, leading to serious health complications or even death. Furthermore, alkali materials can corrode metals and other materials, posing risks of structural damage or equipment failure.

            Examples:

            - Sodium hydroxide
            - Potassium hydroxide
            """)
        case .bio:
            Text("""
            Biological hazards encompass a wide range of organisms, substances, or processes that pose risks to human health or the environment. These hazards can include bacteria, viruses, fungi, parasites, toxins, allergens, and other biological agents. Exposure to biological hazards can lead to infectious diseases, allergic reactions, poisoning, or other health problems. Biological hazards are often found in various settings, including healthcare facilities, laboratories, agricultural settings, and natural environments.

            Examples:

            - Flu virus
            - Rabies virus
            """)
        case .poisonous:
            Text("""
            Poisonous materials pose significant hazards due to their ability to cause harm or death upon exposure. These substances can include chemicals, plants, or animal venoms that are toxic to humans or other organisms. Exposure to poisonous materials can result in symptoms ranging from mild irritation to severe illness or fatalities, depending on the toxicity and dosage. Inhalation, ingestion, or skin contact with poisonous materials can lead to symptoms such as nausea, vomiting, respiratory distress, neurological effects, organ damage, or even death.

            Examples:

            - Strychnine
            - alpha-Amanitin
            """)
        case .radioactive:
            Text("""
            Radioactive materials pose significant hazards due to their emission of ionizing radiation, which can penetrate and damage living tissue. Exposure to radioactive materials can result in acute effects such as radiation burns, radiation sickness, and even death, depending on the level of exposure. Long-term exposure may increase the risk of developing cancer and other health problems. Contamination of the environment with radioactive materials can persist for extended periods, leading to widespread health and environmental consequences.

            Examples:

            - Plutonium
            - Cobalt-60
            - Carbon-14
            """)
        case .cryogenic:
            Text("""
            Cryogenic materials pose significant hazards due to their extreme cold temperatures, typically below \(Measurement(value: -238, unit: UnitTemperature.fahrenheit).temperatureFormatted()). Direct contact with cryogenic materials can cause severe frostbite or freeze injuries, leading to tissue damage or loss. Additionally, cryogenic liquids such as liquid nitrogen or liquid helium can rapidly vaporize upon exposure to warmer temperatures, creating a significant risk of pressure buildup and explosive release. Accidental spills or leaks of cryogenic materials can displace oxygen, leading to asphyxiation in poorly ventilated areas. Furthermore, certain cryogenic materials may react violently with incompatible substances, increasing the risk of fire or explosion.

            Examples:

            - Liquid nitrogen
            - Liquid helium
            """)
        }
    }
}


