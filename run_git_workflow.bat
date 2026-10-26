@echo off
setlocal EnableDelayedExpansion
cd /d "c:\Users\Madhur\Desktop\coursera222\github-final-project"

echo ============================================
echo STEP 1: Git User Config
echo ============================================
git config user.email "mad-codes7@users.noreply.github.com"
git config user.name "mad-codes7"
echo Done.

echo ============================================
echo STEP 2: Checkout main branch
echo ============================================
git checkout -B main
echo Done.

echo ============================================
echo STEP 3: Stage all files
echo ============================================
git add .
git status
echo Done.

echo ============================================
echo STEP 4: Commit initial files
echo ============================================
git commit -m "Initial project files"
echo Done.

echo ============================================
echo STEP 5: Force push to main
echo ============================================
git push -u origin main --force
echo Done.

echo ============================================
echo STEP 6: Create bug-fix-typo branch
echo ============================================
git checkout -b bug-fix-typo
echo Done.

echo ============================================
echo STEP 7: Fix typo (2022 to 2023) in README.md
echo ============================================
python -c "
content = open('README.md', 'r').read()
content = content.replace('2022 XYZ, Inc.', '2023 XYZ, Inc.')
open('README.md', 'w').write(content)
print('Typo fixed successfully.')
" 2>nul || (
  powershell -NoProfile -Command "(Get-Content -Path 'README.md' -Raw) -replace '2022 XYZ, Inc.', '2023 XYZ, Inc.' | Set-Content -Path 'README.md' -NoNewline"
)
type README.md | findstr "XYZ"
echo Done.

echo ============================================
echo STEP 8: Commit typo fix
echo ============================================
git commit -am "Fixed typo in README.md"
echo Done.

echo ============================================
echo STEP 9: Force push bug-fix-typo branch
echo ============================================
git push -u origin bug-fix-typo --force
echo Done.

echo ============================================
echo STEP 10: Switch back to main
echo ============================================
git checkout main
echo Done.

echo ============================================
echo STEP 11: Merge bug-fix-typo into main
echo ============================================
git merge bug-fix-typo
echo Done.

echo ============================================
echo STEP 12: Push main after merge
echo ============================================
git push origin main
echo Done.

echo ============================================
echo STEP 13: Create bug-fix-revert branch
echo ============================================
git checkout -b bug-fix-revert
echo Done.

echo ============================================
echo STEP 14: Revert the last commit
echo ============================================
git revert HEAD --no-edit
echo Done.

echo ============================================
echo STEP 15: Force push bug-fix-revert branch
echo ============================================
git push -u origin bug-fix-revert --force
echo Done.

echo ============================================
echo STEP 16: Switch back to main
echo ============================================
git checkout main
echo Done.

echo ============================================
echo FINAL CHECK: All branches
echo ============================================
git branch -a
git status
git log --oneline -10

echo.
echo ============================================
echo ALL DONE! All branches pushed to GitHub.
echo ============================================
pause
