
# Script to calculate preparation steps for HNO3, KOH, and KF solutions

# Target volumes per 30 mg of enamel sample
HNO3_mL_per <- 2.5 # 2.5 mL of 0.5 M HNO3
KOH_mL_per <- 1.5 # 1.5 mL of 0.5 M KOH (from pellets)
KF_mL_per <- 5.0 # 5.0 mL of 0.17 M KF (from solid)

# How many samples do you want the batch to cover?
samples <- 30

# Molar masses (g/mol)
MW_HNO3 <- 63.02
MW_KOH <- 56.11
MW_KF  <- 58.097

# Target volumes (mL)
vol_HNO3_mL <- HNO3_mL_per * samples
vol_KOH_mL <- KOH_mL_per * samples
vol_KF_mL <- KF_mL_per * samples

# Target concentrations (M)
conc_HNO3_M <- 0.5
conc_KOH_M <- 0.5
conc_KF_M <- 0.17

# Convert volumes to L
vol_HNO3_L <- vol_HNO3_mL / 1000
vol_KOH_L <- vol_KOH_mL / 1000
vol_KF_L <- vol_KF_mL / 1000

# Calculate mass of solid required
mass_KOH_g <- conc_KOH_M * vol_KOH_L * MW_KOH
mass_KF_g  <- conc_KF_M * vol_KF_L * MW_KF

# Output
cat("Preparation Instructions:\n")
cat("1. HNO3: Prepare 2.5 mL of 0.5 M HNO3 by diluting concentrated stock if available.\n")
cat("   (Use C1V1 = C2V2 to determine how much stock acid to dilute.)\n\n")

cat("2. KOH: To prepare 1.5 mL of 0.5 M KOH:\n")
cat("   - Weigh", round(mass_KOH_g * 1000, 1), "mg of solid KOH pellets\n")
cat("   - Dissolve in ~1.0 mL water, then dilute to 1.5 mL total volume.\n\n")

cat("3. KF: To prepare 5.0 mL of 0.17 M KF:\n")
cat("   - Weigh", round(mass_KF_g * 1000, 1), "mg of solid KF\n")
cat("   - Dissolve in ~4.0 mL water, then dilute to 5.0 mL total volume.\n")
