/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// Toggle password visibility
const togglePassword = document.getElementById('togglePassword');
const passwordInput = document.getElementById('password');

togglePassword.addEventListener('click', () => {
    const type = passwordInput.type === 'password' ? 'text' : 'password';
    passwordInput.type = type;
    togglePassword.textContent = type === 'password' ? '👁' : '🙈';
});

// Validate password strength
const passwordHint = document.getElementById('passwordHint');
passwordInput.addEventListener('input', () => {
    const password = passwordInput.value;
    const isValid = validatePassword(password);
    passwordHint.style.color = isValid ? 'green' : 'red';
});

// Validate password match
const confirmPasswordInput = document.getElementById('confirmPassword');
const matchHint = document.getElementById('matchHint');

confirmPasswordInput.addEventListener('input', () => {
    const password = passwordInput.value;
    const confirmPassword = confirmPasswordInput.value;
    matchHint.textContent = password === confirmPassword ? 'Passwords match!' : 'Passwords do not match.';
    matchHint.style.color = password === confirmPassword ? 'green' : 'red';
});

// Password strength validation function
function validatePassword(password) {
    const minLength = 8;
    const hasNumber = /\d/;
    const hasUppercase = /[A-Z]/;
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/;
    return (
        password.length >= minLength &&
        hasNumber.test(password) &&
        hasUppercase.test(password) &&
        hasSpecialChar.test(password)
    );
}


