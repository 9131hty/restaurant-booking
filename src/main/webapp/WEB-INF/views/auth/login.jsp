<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign In</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow" />
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&amp;family=Inter:wght@400;500;600&amp;display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>
<body id="i2ldka8" class="cjiayo-t-body body">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main id="iuznbnh" class="main-content">
    <section class="hero-section">
        <div id="icytac4" class="hero-text">
            <div id="iprsx0s" class="breadcrumb-row">
                <img
                        src="${gcv}icons/auth/log-in.svg"
                        alt=""
                        class="icon-login"
                /><span class="breadcrumb-label">Account Access</span>
            </div>
            <h1 id="i89on3e" class="cjiayo-t-h1 heading-h1">Sign In</h1>
            <p id="i6ybqpg" class="subtitle">
                Welcome back to Rustic Spoon. Access your orders, reservations, and
                rewards in one place.
            </p>
            <div id="imccwez" class="cjiayo-t-border form-card">
                <form method="post" action="#" novalidate="" class="sign-in-form">
                    <div class="input-group">
                        <label for="email" class="input-label">Email</label>
                        <div class="input-wrapper">
                  <span class="input-leading-icon"
                  ><img
                          src="${gcv}icons/auth/mail_c.svg"
                          alt=""
                          class="icon-mail" /></span
                  ><input
                                type="email"
                                id="email-4"
                                name="email"
                                required
                                autocomplete="email"
                                inputmode="email"
                                placeholder="you@example.com"
                                aria-describedby="email-help"
                                class="email-input"
                        />
                        </div>
                        <span id="email-help" class="input-helper"
                        >Use the email you registered with.</span
                        >
                    </div>
                    <div class="input-group">
                        <div class="label-row">
                            <label for="password" class="input-label">Password</label
                            ><a href="/forgot-password" class="cjiayo-t-link inline-link"
                        >Forgot Password?</a
                        >
                        </div>
                        <div class="input-wrapper">
                  <span class="input-leading-icon"
                  ><img
                          src="${gcv}icons/auth/lock_c.svg"
                          alt=""
                          class="icon-lock" /></span
                  ><input
                                type="password"
                                id="password-2"
                                name="password"
                                required
                                autocomplete="current-password"
                                placeholder="Your secure password"
                                class="password-input"
                        />
                        </div>
                    </div>
                    <div class="remember-row">
                        <label class="checkbox-item"
                        ><span class="checkbox-box"
                        ><input
                                type="checkbox"
                                name="remember"
                                aria-label="Remember me"
                                class="peer checkbox-input" /><img
                                src="${gcv}icons/auth/check_a.svg"
                                alt=""
                                class="peer-checked:opacity-100 checkbox-icon" /></span
                        ><span class="checkbox-label">Remember me</span></label
                        ><a href="./register.html" class="cjiayo-t-link inline-link"
                    >Create account</a
                    >
                    </div>
                    <div class="submit-group">
                        <button type="submit" class="cjiayo-t-button submit-button">
                            Sign In
                        </button>
                        <div class="divider-row">
                            <div class="divider"></div>
                            <span class="divider-text">or</span>
                            <div class="divider"></div>
                        </div>
                        <a href="./register.html" class="secondary-button"
                        >Don't have an account? Register</a
                        >
                    </div>
                </form>
            </div>
            <div class="privacy-note">
                Protected by re-authentication. By signing in, you agree to our
                <a href="./contact-about.html" class="cjiayo-t-link inline-link"
                >policies</a
                >.
            </div>
        </div>
        <div id="ih1lcjf" class="hero-image-wrapper">
            <div class="hero-gradient"></div>
            <div id="itmylkf" class="hero-image-card">
                <img
                        src="${gcv}images/auth/abs.jpg"
                        alt="Warm, cozy restaurant interior"
                        id="imqxdcj"
                        class="hero-image"
                />
            </div>
        </div>
    </section>
    <section id="ifqr889" class="help-section">
        <div id="iw5oq1g" class="help-container">
            <div id="i78ctk8" class="help-card">
                <div class="help-icon-wrap">
                    <img
                            src="${gcv}icons/auth/badge-info.svg"
                            alt=""
                            class="help-icon"
                    />
                </div>
                <div class="help-texts">
                    <h2 id="i6fnxha" class="cjiayo-t-h2 help-title">
                        Having trouble signing in?
                    </h2>
                    <p class="help-copy">
                        You can reset your password in a few steps. We’ll send a secure
                        link to your email.
                    </p>
                    <div class="help-action">
                        <a href="/forgot-password" class="cjiayo-t-link inline-link"
                        ><span>Reset password</span
                        ><img
                                src="${gcv}icons/auth/arrow-right.svg"
                                alt=""
                                class="arrow-icon"
                        /></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>

