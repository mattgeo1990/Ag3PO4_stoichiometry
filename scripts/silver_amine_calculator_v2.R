
# Generalized Silver Amine Solution Calculator
# Calculates the required masses and volumes to prepare silver amine solution

# Number of samples in batch
n <- 5

# silver ammine volume per sample
v <- 6.25

# ---- User Input ----
total_volume_mL <- n * v            # Total target volume in mL
NH4OH_stock_M <- 14.5            # Stock concentration of NH4OH in M
NH4OH_final_M <- 0.85              # Final concentration in solution
NH4NO3_final_M <- 0.85             # Final concentration in solution
AgNO3_final_M <- 0.20              # Final concentration in solution

# Molar masses (g/mol)
MW_NH4NO3 <- 80.043
MW_AgNO3 <- 169.872

# Convert volume to liters
total_volume_L <- total_volume_mL / 1000

# Moles required
mol_NH4OH <- NH4OH_final_M * total_volume_L
mol_NH4NO3 <- NH4NO3_final_M * total_volume_L
mol_AgNO3 <- AgNO3_final_M * total_volume_L

# Volume of NH4OH stock needed (mL)
vol_NH4OH_mL <- (mol_NH4OH / NH4OH_stock_M) * 1000

# Masses of solids to weigh (g)
mass_NH4NO3_g <- mol_NH4NO3 * MW_NH4NO3
mass_AgNO3_g <- mol_AgNO3 * MW_AgNO3

# Output results
cat("To prepare", total_volume_mL, "mL of silver amine solution with final concentrations of:\n")
cat("-", NH4OH_final_M, "M NH4OH\n")
cat("-", NH4NO3_final_M, "M NH4NO3\n")
cat("-", AgNO3_final_M, "M AgNO3\n\n")

cat("Add the following to a beaker:\n")
cat("-", round(vol_NH4OH_mL, 3), "mL of", NH4OH_stock_M, "M NH4OH\n")
cat("-", round(mass_NH4NO3_g * 1000, 1), "mg of NH4NO3\n")
cat("-", round(mass_AgNO3_g * 1000, 1), "mg of AgNO3\n")
cat("- Dissolve solids in ~80% of final volume, add NH4OH, mix, and dilute to", total_volume_mL, "mL with ultrapure water\n")

