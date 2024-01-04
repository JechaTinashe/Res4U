$(function () {
    // Set initial values
    var minValue = 0;
    var maxValue = 10000;

    // Initialize the range slider
    $("#slider-range").slider({
        range: true,
        min: 0,
        max: 10000,
        values: [minValue, maxValue],
        slide: function (event, ui) {
            minValue = ui.values[0];
            maxValue = ui.values[1];

            // Update another variable in real-time
            updateValues(minValue, maxValue);

            $("#minValue").text(minValue);
            $("#maxValue").text(maxValue);
        }
    });

    // Display initial values
    $("#minValue").text(minValue);
    $("#maxValue").text(maxValue);
});

var txt_min = document.getElementById("txtbx_min");
var txt_max = document.getElementById("txtbx_max");
// Function to handle updated values
function updateValues(minValue, maxValue) {
    txt_min.value = minValue;
    txt_max.value = maxValue;
}

//Starss
// Retrieve the stars and add event listeners
const stars = document.querySelectorAll('.star');
stars.forEach(star => {
    star.addEventListener('click', toggleRating);
});

// Toggle the rating based on user interaction
function toggleRating() {
    const rating = this.getAttribute('data-rating');

    // Toggle active class for selected stars
    stars.forEach(star => {
        const starRating = star.getAttribute('data-rating');
        if (starRating <= rating) {
            star.classList.add('active');
        } else {
            star.classList.remove('active');
        }
    });

    // Perform filtering or other actions based on the selected rating
    /*filterByRating(rating);*/
}

//// Perform filtering based on the selected rating
const spans = document.querySelectorAll('.star');
const inputElement = document.getElementById('rating_num');

// Loop through each span and add a click event listener
spans.forEach(function (span) {
    span.addEventListener('click', function () {
        // Get the ID and data-rating of the clicked span
        const spanId = this.id;
        const rating = this.dataset.rating;

        // Set the input field value to the ID of the span
        inputElement.value = rating;
    });
});

//Pop_up Icon
document.getElementById('filter_icon').addEventListener('click', function () {
    document.getElementById('filter_modal').style.display = 'block';
});

document.getElementById('close_filter').addEventListener('click', function () {
    document.getElementById('filter_modal').style.display = 'none';
});