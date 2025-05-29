
# Silver Amine Solution Calculator
# Calculates masses and volume needed to prepare silver amine solution
# based on target final concentrations and total solution volume

# ---- User Input ----
total_volume_mL <- 100          # Desired final solution volume in mL
NH4OH_stock_M <- 14.5           # Stock concentration of NH4OH in M (mol/L)
NH4OH_final_M <- 0.85           # Final concentration of NH4OH in M
NH4NO3_final_M <- 0.85          # Final concentration of NH4NO3 in M
AgNO3_final_M <- 0.20           # Final concentration of AgNO3 in M

# Molar masses (g/mol)
MW_NH4NO3 <- 80.04
MW_AgNO3 <- 169.87

# ---- Calculations ----
# Convert mL to L
total_volume_L <- total_volume_mL / 1000

# Moles needed
mol_NH4OH <- NH4OH_final_M * total_volume_L
mol_NH4NO3 <- NH4NO3_final_M * total_volume_L
mol_AgNO3 <- AgNO3_final_M * total_volume_L

# Volume of NH4OH stock solution to add (in mL)
vol_NH4OH_mL <- (mol_NH4OH / NH4OH_stock_M) * 1000

# Masses to weigh (in g)
mass_NH4NO3_g <- mol_NH4NO3 * MW_NH4NO3
mass_AgNO3_g <- mol_AgNO3 * MW_AgNO3

# Output
cat("To prepare", total_volume_mL, "mL of silver amine solution:\n")
cat("- Add", round(vol_NH4OH_mL, 2), "mL of", NH4OH_stock_M, "M NH4OH\n")
cat("- Weigh", round(mass_NH4NO3_g, 2), "g of NH4NO3\n")
cat("- Weigh", round(mass_AgNO3_g, 2), "g of AgNO3\n")
cat("- Dissolve solids in ~75 mL of ultrapure water, add NH4OH, then bring to final volume\n")
