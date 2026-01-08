<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Register | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow" />
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Playfair+Display:wght@600;700&amp;display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>
<body id="io3353o" class="cjiayo-t-body">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main>
    <section class="auth-hero">
        <div id="in828da" class="hero-container">
            <div id="iy26ywg" class="header-row">
                <div id="im1341i" class="header-left">
                    <h1 id="i7oxhnk" class="cjiayo-t-h1 page-title">
                        Create your account
                    </h1>
                    <p id="ih5du8c" class="subtitle">
                        Join Artéa Aureum for faster checkout, table reservations, and
                        exclusive rewards.
                    </p>
                </div>
                <div class="header-right">
                    <img
                            alt="A warm rustic table setting"
                            src="${gcv}images/auth/hid.jpg"
                            class="hero-image"
                    />
                </div>
            </div>
        </div>
    </section>
    <section id="imy0mmb" class="auth-section">
        <div id="isuwbbk" class="auth-container">
            <div id="isod59a" class="form-column">
                <div id="ip6x7rj" class="cjiayo-t-border form-card">
                    <div id="ifamjy3" class="card-header">
                        <div class="card-title-wrap">
                            <img
                                    alt=""
                                    src="${gcv}icons/auth/badge-plus.svg"
                                    class="lock-icon"
                            />
                            <h2 class="cjiayo-t-h2 card-title">Register</h2>
                        </div>
                        <span id="ix5dr4v" class="helper-hint"
                        >It only takes a minute</span
                        >
                    </div>
                    <form
                            method="post"
                            action="#"
                            novalidate=""
                            class="registration-form"
                    >
                        <div class="form-field">
                            <label for="fullName" id="i1dvjbj" class="input-label"
                            >Full Name</label
                            >
                            <div class="input-wrapper">
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/user.svg"
                                        class="input-icon"
                                /><input
                                    type="text"
                                    id="fullName-2"
                                    name="fullName"
                                    autocomplete="name"
                                    required
                                    placeholder="e.g., Sofia Martinez"
                                    aria-describedby="fullNameHelp"
                                    class="text-input"
                            />
                            </div>
                            <p id="fullNameHelp" class="field-help">
                                Enter your first and last name.
                            </p>
                        </div>
                        <div class="form-field">
                            <label for="email" class="input-label">Email</label>
                            <div class="input-wrapper">
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/mail.svg"
                                        class="input-icon"
                                /><input
                                    type="email"
                                    id="email-3"
                                    name="email"
                                    autocomplete="email"
                                    required
                                    placeholder="you@example.com"
                                    aria-describedby="emailHelp"
                                    class="email-input"
                            />
                            </div>
                            <p id="emailHelp" class="field-help">
                                We’ll send a confirmation to this address.
                            </p>
                        </div>
                        <div class="form-field">
                            <label for="password" class="input-label">Password</label>
                            <div class="input-wrapper">
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/lock.svg"
                                        class="input-icon"
                                /><input
                                    type="password"
                                    id="password"
                                    name="password"
                                    autocomplete="new-password"
                                    required
                                    minlength="8"
                                    placeholder="Create a strong password"
                                    aria-describedby="passwordHelp"
                                    class="password-input"
                            /><button
                                    type="button"
                                    aria-label="Show password"
                                    data-toggle-password="password"
                                    class="reveal-button"
                            >
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/eye.svg"
                                        class="reveal-icon"
                                />
                            </button>
                            </div>
                            <p id="passwordHelp" class="field-help">
                                At least 8 characters, with a mix of letters and numbers.
                            </p>
                        </div>
                        <div class="form-field">
                            <label for="confirmPassword" class="input-label"
                            >Confirm Password</label
                            >
                            <div class="input-wrapper">
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/shield-check.svg"
                                        class="input-icon"
                                /><input
                                    type="password"
                                    id="confirmPassword"
                                    name="confirmPassword"
                                    autocomplete="new-password"
                                    required
                                    minlength="8"
                                    placeholder="Re-enter your password"
                                    aria-describedby="confirmHelp"
                                    class="password-input"
                            /><button
                                    type="button"
                                    aria-label="Show password"
                                    data-toggle-password="confirmPassword"
                                    class="reveal-button"
                            >
                                <img
                                        alt=""
                                        src="${gcv}icons/auth/eye.svg"
                                        class="reveal-icon"
                                />
                            </button>
                            </div>
                            <p id="confirmHelp" class="field-help">
                                Must match the password above.
                            </p>
                        </div>
                        <div class="form-options-row">
                            <label class="checkbox-label"
                            ><input
                                    type="checkbox"
                                    id="terms"
                                    name="terms"
                                    required
                                    class="peer checkbox-input"
                            /><span
                                    class="peer-focus:outline-none peer-focus:ring-2 peer-focus:ring-[rgba(122,46,46,0.25)] peer-checked:bg-[var(--cjiayo-t-color-primary)] peer-checked:border-[var(--cjiayo-t-color-primary)] custom-checkbox"
                            ><img
                                    alt=""
                                    src="${gcv}icons/auth/check.svg"
                                    class="peer-checked:opacity-100 checkbox-icon" /></span
                            ><span class="checkbox-text"
                            >I agree to the
                      <a href="#" class="cjiayo-t-link inline-link"
                      >Terms &amp; Privacy</a
                      ></span
                            ></label
                            >
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="cjiayo-t-button submit-button">
                                Create Account</button
                            ><a href="##" id="ieck7cx" class="cjiayo-t-link muted-link"
                        >Already have an account? Sign In</a
                        >
                        </div>
                    </form>
                    <div class="divider"></div>
                    <div class="social-signup">
                        <button type="button" class="oauth-button">
                            <img
                                    alt=""
                                    src="${gcv}icons/auth/mail-open.svg"
                                    class="oauth-icon"
                            /><span>Continue with Email Link</span></button
                        ><button type="button" class="oauth-button">
                        <img
                                alt=""
                                src="${gcv}icons/auth/smartphone.svg"
                                class="oauth-icon"
                        /><span>Use Phone</span>
                    </button>
                    </div>
                </div>
            </div>
            <aside id="ijarvbo" class="aside-column">
                <div class="cjiayo-t-border benefits-card">
                    <div class="benefits-header">
                        <img
                                alt=""
                                src="${gcv}icons/auth/sparkles.svg"
                                class="star-icon"
                        />
                        <h3 id="ihwd432" class="benefits-title">Member benefits</h3>
                    </div>
                    <ul class="benefits-list">
                        <li class="benefit-item">
                            <img
                                    alt=""
                                    src="${gcv}icons/auth/badge-check.svg"
                                    class="benefit-icon"
                            />
                            <p class="benefit-text">
                                Earn points on every order to unlock rewards and special
                                offers.
                            </p>
                        </li>
                        <li class="benefit-item">
                            <img
                                    alt=""
                                    src="${gcv}icons/auth/clock.svg"
                                    class="benefit-icon"
                            />
                            <p class="benefit-text">
                                Faster checkout with saved details and order history.
                            </p>
                        </li>
                        <li class="benefit-item">
                            <img
                                    alt=""
                                    src="${gcv}icons/auth/calendar-check-2.svg"
                                    class="benefit-icon"
                            />
                            <p class="benefit-text">
                                Priority table reservations on busy nights.
                            </p>
                        </li>
                    </ul>
                    <div class="aside-image-wrap">
                        <img
                                alt="Freshly baked bread and olive oil"
                                src="${gcv}images/auth/cov.jpg"
                                loading="lazy"
                                id="io443zd"
                                class="aside-image"
                        />
                    </div>
                    <div class="help-block">
                        <p class="help-text">
                            Need help?
                            <a href="./contact-about.html" class="cjiayo-t-link help-link"
                            >Contact us</a
                            >
                            or
                            <a href="./feedback-reviews.html" class="cjiayo-t-link help-link"
                            >read reviews</a
                            >.
                        </p>
                    </div>
                </div>
            </aside>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script>
    (function () {
        var toggles = document.querySelectorAll("[data-toggle-password]");
        for (var i = 0; i < toggles.length; i++) {
            toggles[i].addEventListener("click", function () {
                var id = this.getAttribute("data-toggle-password");
                var input = document.getElementById(id);
                if (!input) return;
                var isPwd = input.type === "password";
                input.type = isPwd ? "text" : "password";
                var icon = this.querySelector("img");
                if (icon) {
                    icon.src = isPwd
                        ? "${gcv}icons/auth/eye-off.svg"
                        : "${gcv}icons/auth/eye.svg";
                }
                this.setAttribute(
                    "aria-label",
                    isPwd ? "Hide password" : "Show password"
                );
            });
        }
    })();
</script>
</body>
</html>

