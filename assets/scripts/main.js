/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can
 * always reference jQuery with $, even when in .noConflict() mode.
 * ======================================================================== */

(function($) {

    // Use this variable to set up the common and page specific functions. If you
    // rename this variable, you will also need to rename the namespace below.
    var Sage = {
        // All pages
        'common': {
            init: function() {
                // JavaScript to be fired on all pages
            },
            finalize: function() {
                // JavaScript to be fired on all pages, after page specific JS is fired
                var $ = jQuery.noConflict();

                $('.open-offer-popup').click(function(e) {
                    e.preventDefault();
                    console.log('offer');
                    $('.offer-wrap').toggleClass('open');
                });

                // Initialize Slidebars
                var controller = new slidebars();
                controller.init();

                // Left Slidebar controls
                $('.js-open-left-slidebar').on('click', function(event) {
                    event.stopPropagation();
                    controller.toggle('slidebar-1');
                });

                $('form.comparison-form').submit(function(e) {
                    e.preventDefault();


                    var conversion_popup = $('#conversion-popup'),
                        homepage_results = $('#homepage-results'),
                        ww = $(window).width();

                    conversion_popup.fadeIn(200, function() {
                        var progressBar = new ldBar("#progressBar");
                        progressBar.set(100);
                        setTimeout(function() {
                            conversion_popup.fadeOut(200, function() {
                                homepage_results.show();
                                progressBar.set(0);
                                $('#progressBar').removeClass('ldBar').empty();

                                //Scroll results into view
                                if (ww >= 768) {
                                    $('[canvas=container]').animate({
                                        scrollTop: $('#scrollAnchor').offset().top - 90
                                    }, 800);
                                }
                            });
                        }, 2000);
                    });
                });

                // AUTOCOMPLETE

                //Data is stored as an array in setup.php
                var data = wdc.currency_list;

                $("#currency-select")
                    .autocomplete({
                        source: data,
                        minLength: 0
                    }).autocomplete("instance")._renderItem = function(ul, item) {
                        return $("<li></li>")
                            .data("item.autocomplete", item)
                            .append("<a><i class='flag-icon flag-icon-" + item.icon + "'></i>" + item.label + "</a>")
                            .appendTo(ul);
                    };
                $("#currency-select").focus(function() {
                    $(this).autocomplete('search', $(this).val())
                });

                // Mobile Select 
                $("#currency-select-mobile")
                    .autocomplete({
                        source: data,
                        minLength: 0
                    }).autocomplete("instance")._renderItem = function(ul, item) {
                        return $("<li></li>")
                            .data("item.autocomplete", item)
                            .append("<a><i class='flag-icon flag-icon-" + item.icon + "'></i>" + item.label + "</a>")
                            .appendTo(ul);
                    };
                $("#currency-select-mobile").focus(function() {
                    $(this).autocomplete('search', $(this).val())
                });
            }
        },
        // Home page
        'home': {
            init: function() {
                // JavaScript to be fired on the home page
            },
            finalize: function() {
                // JavaScript to be fired on the home page, after the init JS
            }
        },
        // About us page, note the change from about-us to about_us.
        'about_us': {
            init: function() {
                // JavaScript to be fired on the about us page
            }
        }
    };

    // The routing fires all common scripts, followed by the page specific scripts.
    // Add additional events for more control over timing e.g. a finalize event
    var UTIL = {
        fire: function(func, funcname, args) {
            var fire;
            var namespace = Sage;
            funcname = (funcname === undefined) ? 'init' : funcname;
            fire = func !== '';
            fire = fire && namespace[func];
            fire = fire && typeof namespace[func][funcname] === 'function';

            if (fire) {
                namespace[func][funcname](args);
            }
        },
        loadEvents: function() {
            // Fire common init JS
            UTIL.fire('common');

            // Fire page-specific init JS, and then finalize JS
            $.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
                UTIL.fire(classnm);
                UTIL.fire(classnm, 'finalize');
            });

            // Fire common finalize JS
            UTIL.fire('common', 'finalize');
        }
    };

    // Load Events
    $(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.