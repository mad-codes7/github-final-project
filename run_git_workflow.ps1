Set-Location "c:\Users\Madhur\Desktop\coursera222\github-final-project"

Write-Host "=== Step 1: Git Config ==="
git config user.email "mad-codes7@users.noreply.github.com"
git config user.name "mad-codes7"
Write-Host "Config done. Exit: $LASTEXITCODE"

Write-Host "=== Step 2: Checkout main ==="
git checkout -B main
Write-Host "Checkout done. Exit: $LASTEXITCODE"

Write-Host "=== Step 3: Add all files ==="
git add .
git status
Write-Host "Add done. Exit: $LASTEXITCODE"

Write-Host "=== Step 4: Commit ==="
git commit -m "Initial project files"
Write-Host "Commit done. Exit: $LASTEXITCODE"

Write-Host "=== Step 5: Push main ==="
git push -u origin main --force
Write-Host "Push main done. Exit: $LASTEXITCODE"

Write-Host "=== Step 6: Create bug-fix-typo branch ==="
git checkout -b bug-fix-typo
Write-Host "Checkout bug-fix-typo done. Exit: $LASTEXITCODE"

Write-Host "=== Step 7: Fix typo in README ==="
(Get-Content README.md) -replace "2022 XYZ, Inc.", "2023 XYZ, Inc." | Set-Content README.md
Write-Host "Typo fixed."

Write-Host "=== Step 8: Commit typo fix ==="
git commit -am "Fixed typo in README.md"
Write-Host "Commit typo done. Exit: $LASTEXITCODE"

Write-Host "=== Step 9: Push bug-fix-typo ==="
git push -u origin bug-fix-typo --force
Write-Host "Push bug-fix-typo done. Exit: $LASTEXITCODE"

Write-Host "=== Step 10: Checkout main ==="
git checkout main
Write-Host "Checkout main done. Exit: $LASTEXITCODE"

Write-Host "=== Step 11: Merge bug-fix-typo ==="
git merge bug-fix-typo
Write-Host "Merge done. Exit: $LASTEXITCODE"

Write-Host "=== Step 12: Push main after merge ==="
git push origin main
Write-Host "Push main done. Exit: $LASTEXITCODE"

Write-Host "=== Step 13: Create bug-fix-revert branch ==="
git checkout -b bug-fix-revert
Write-Host "Checkout bug-fix-revert done. Exit: $LASTEXITCODE"

Write-Host "=== Step 14: Revert HEAD ==="
git revert HEAD --no-edit
Write-Host "Revert done. Exit: $LASTEXITCODE"

Write-Host "=== Step 15: Push bug-fix-revert ==="
git push -u origin bug-fix-revert --force
Write-Host "Push bug-fix-revert done. Exit: $LASTEXITCODE"

Write-Host "=== Step 16: Checkout main ==="
git checkout main
Write-Host "Checkout main done. Exit: $LASTEXITCODE"

Write-Host "=== FINAL: Branch list ==="
git branch -a
git status

Write-Host "=== ALL DONE ==="
