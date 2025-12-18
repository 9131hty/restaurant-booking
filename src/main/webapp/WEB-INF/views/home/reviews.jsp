<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Feedback &amp; Reviews | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&amp;family=Inter:wght@400;500;600&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>

<body id="iv6hvxe" class="cjiayo-t-body">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<section id="ia1q4x8" class="hero-section">
    <div id="i8642dy" class="hero-background">
        <div id="i17xid" class="decorative-blob"></div>
        <div id="i7jdxt" class="decorative-blob"></div>
        <div aria-hidden="true" class="shine-layer"></div>
    </div>
    <div id="ibea6pv" class="hero-container">
        <div class="header-row">
            <div class="hero-text">
                <p class="overline">Fine casual dining</p>
                <h1 id="inaea3x" class="cjiayo-t-h1 hero-title">Share Your Taste — Feedback &amp; Reviews</h1>
                <p id="i4q7qep" class="hero-subtitle">Tell us about your experience at Artéa Aureum. Rate dishes, share photos, and help us perfect every plate.
                    All reviews are moderated to ensure a respectful community.</p>
                <div id="i14si51" class="breadcrumbs"><a href="home"
                                                         class="cjiayo-t-link breadcrumb-link">Home</a><span class="breadcrumb-divider">/</span><span
                        class="breadcrumb-current">Reviews</span></div>
                    <div class="cjiayo-t-border hero-image-wrapper"><img
                            src="${gcv}images/reviews/hero-image.jpg"
                            alt="Artéa Aureum Interior" class="hero-image" /></div>
            </div>
        </div>
    </div>
</section>
<main class="main-content">
    <div class="breadcrumbs"><a href="./homehtml" class="cjiayo-t-link breadcrumb-link">Home</a><span
            class="breadcrumb-divider">/</span><span>Feedback &amp; Reviews</span></div>
    <section class="guidelines-section">
        <div class="cjiayo-t-border guidelines-card"><img alt="Info"
                                                          src="${gcv}icons/reviews/info.svg" class="guidelines-icon" />
            <div class="guidelines-content">
                <h2 class="cjiayo-t-h2 guidelines-title">Respectful Feedback Guidelines</h2>
                <ul class="guidelines-list">
                    <li>Be honest, constructive, and specific about your experience.</li>
                    <li>Avoid offensive language and personal attacks.</li>
                    <li>Photos should be clear and relevant to the dish or visit.</li>
                    <li>Staff may moderate submissions to maintain community standards.</li>
                </ul>
            </div>
        </div>
    </section>
    <section id="submit-review" class="submit-review-section">
        <div class="submit-review-header">
            <h2 class="cjiayo-t-h2 submit-review-title">Submit Your Review</h2><a href="profile"
                                                                                  class="cjiayo-t-link profile-shortcut"><img alt="Profile"
                                                                                                                              src="${gcv}icons/reviews/user.svg" class="profile-icon" />
            Go to Account
        </a>
        </div>
        <form method="get" aria-labelledby="submit-review-title" class="cjiayo-t-border submit-review-form">
            <div class="form-row">
                <div class="form-field"><label for="review-branch" class="form-label">Branch/Location</label><select
                        type="text" id="review-branch" class="cjiayo-t-border select-branch">
                    <option>Downtown</option>
                    <option>Riverside</option>
                    <option>Uptown</option>
                </select></div>
                <div class="form-field"><label for="review-item" class="form-label">Menu Item (optional)</label><input
                        type="text" id="review-item" placeholder="e.g., Truffle Risotto" class="cjiayo-t-border input-menu-item" />
                </div>
            </div>
            <div class="rating-fieldset"><span class="rating-label">Overall Rating</span>
                <div class="rating-stars"><input type="radio" name="rating" id="star-1" value="1"
                                                 class="peer rating-radio" /><label for="star-1" class="rating-label-star"><img alt="1 star"
                                                                                                                                src="${gcv}icons/reviews/star.svg"
                                                                                                                                class="peer-checked:opacity-100 star-icon-1" /></label><input type="radio" name="rating" id="star-2"
                                                                                                                                                                                              value="2" class="peer rating-radio" /><label for="star-2" class="rating-label-star"><img alt="2 stars"
                                                                                                                                                                                                                                                                                       src="${gcv}icons/reviews/star.svg"
                                                                                                                                                                                                                                                                                       class="peer-checked:opacity-100 star-icon-2" /></label><input type="radio" name="rating" id="star-3"
                                                                                                                                                                                                                                                                                                                                                     value="3" class="peer rating-radio" /><label for="star-3" class="rating-label-star"><img alt="3 stars"
                                                                                                                                                                                                                                                                                                                                                                                                                                              src="${gcv}icons/reviews/star.svg"
                                                                                                                                                                                                                                                                                                                                                                                                                                              class="peer-checked:opacity-100 star-icon-3" /></label><input type="radio" name="rating" id="star-4"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            value="4" class="peer rating-radio" /><label for="star-4" class="rating-label-star"><img alt="4 stars"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     src="${gcv}icons/reviews/star.svg"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     class="peer-checked:opacity-100 star-icon-4" /></label><input type="radio" name="rating" id="star-5"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   value="5" class="peer rating-radio" /><label for="star-5" class="rating-label-star"><img alt="5 stars"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            src="${gcv}icons/reviews/star.svg"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            class="peer-checked:opacity-100 star-icon-5" /></label></div>
            </div>
            <div class="text-review-field"><label for="review-text" class="form-label">Your Review</label><textarea
                    id="review-text" rows="5"
                    placeholder="Share details about the food, service, ambiance, and your overall experience..."
                    class="cjiayo-t-border textarea-review"></textarea></div>
            <div class="photo-upload-row">
                <div class="form-field"><label for="review-photo" class="form-label">Add a Photo (optional)</label>
                    <div class="upload-control"><input type="file" id="review-photo" accept="image/*" class="input-file" />
                    </div>
                </div>
                <div class="form-field"><label for="visit-date" class="form-label">Visit Date</label><input type="date"
                                                                                                            id="visit-date" class="cjiayo-t-border input-date" /></div>
            </div>
            <div class="cjiayo-t-border moderation-notice"><img alt="Moderation"
                                                                src="${gcv}icons/reviews/shield-check.svg" class="shield-icon" />
                <p class="moderation-text">Your review may be edited or declined if it violates our community standards. Thank
                    you for helping us keep feedback helpful and respectful.</p>
            </div>
            <div class="form-actions"><button type="submit" class="cjiayo-t-button submit-button"><img alt="Send"
                                                                                                       src="${gcv}icons/reviews/send.svg" class="submit-icon" />
                Post Review
            </button><button type="reset" class="cjiayo-t-border reset-button">Clear</button></div>
        </form>
    </section>
    <section class="past-reviews-section">
        <div class="section-header">
            <h2 class="cjiayo-t-h2 section-title">Your Past Reviews</h2>
            <div class="filters"><label for="filter-branch" class="filter-label">Filter:</label><select type="text"
                                                                                                        id="filter-branch" class="cjiayo-t-border filter-select">
                <option>All</option>
                <option>Downtown</option>
                <option>Riverside</option>
                <option>Uptown</option>
            </select></div>
        </div>
        <div class="reviews-grid">

<!-- ======= review card ==================================================================================================== -->
            <article class="cjiayo-t-border review-card">
                <div class="review-media"><img alt="Dish photo"
                                               src="https://app.grapesjs.com/api/assets/random-image?query=%22italian%20dish%22&amp;w=800&amp;h=500"
                                               class="review-image" /></div>
                <div class="review-content">
                    <div class="review-header">
                        <div class="review-title-block"><span class="dish-name">Truffle Risotto</span><span
                                class="branch-tag">Downtown • 2025-10-22</span></div>
                        <div class="stars-row"><img alt="star" src="${gcv}icons/reviews/star.svg"
                                                    class="star" /><img alt="star" src="${gcv}icons/reviews/star.svg"
                                                                        class="star" /><img alt="star" src="${gcv}icons/reviews/star.svg"
                                                                                            class="star" /><img alt="star" src="${gcv}icons/reviews/star.svg"
                                                                                                                class="star" /><img alt="star" src="${gcv}icons/reviews/star.svg"
                                                                                                                                    class="star-dim" /></div>
                    </div>
                    <p class="review-text">
                        Creamy and aromatic, the truffle notes were perfectly balanced. Service was attentive and warm. Would
                        order again.
                    </p>
                    <div class="review-actions"><a href="./menuhtml" class="cjiayo-t-link reorder-link"><img
                            alt="Reorder" src="${gcv}icons/reviews/rotate-ccw.svg"
                            class="reorder-icon" />
                        Re-order
                    </a><a href="#" class="cjiayo-t-link edit-review-link"><img alt="Edit"
                                                                                src="${gcv}icons/reviews/edit.svg" class="edit-icon" />
                        Edit
                    </a></div>
                </div>
            </article>
<!-- ======================================================================================================================= -->

        </div>
        <div class="pagination"><span class="results-count">Showing 1–2 of 12 reviews</span>
            <div class="pagination-controls"><button type="button" class="cjiayo-t-border prev-button">Prev</button><button
                    type="button" class="cjiayo-t-button next-button">Next</button></div>
        </div>
    </section>
    <aside class="cjiayo-t-border help-tips">
        <div class="help-title-row"><img alt="Help" src="${gcv}icons/reviews/lightbulb.svg"
                                         class="help-icon" />
            <h3 class="help-title">Tips for a helpful review</h3>
        </div>
        <p class="help-text">
            Mention the dish name, temperature, texture, seasoning, and portion size. Highlight standout service moments or
            ambiance notes. If something wasn’t ideal, suggest what could be improved.
        </p>
    </aside>
</main>
<section class="lazy-media-section" id="io5e7va">
    <div class="divider"></div>
    <div class="gallery-title-row"><img alt="Gallery" src="${gcv}icons/reviews/images.svg"
                                        class="gallery-icon" />
        <h3 class="gallery-title">Recent diner photos</h3>
    </div>
    <div class="gallery-grid">

<!-- === gallery item ========================================================================================================= -->
        <div class="cjiayo-t-border gallery-item"><img alt="Pasta dish" loading="lazy"
                                                       src="${gcv}images/reviews/recent.jpg"
                                                       class="gallery-image" /></div>
<!-- ======================================================================================================================= -->

    </div>
</section>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>

</html>
