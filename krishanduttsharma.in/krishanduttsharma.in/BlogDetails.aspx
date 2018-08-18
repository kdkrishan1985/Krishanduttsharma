﻿<%@ Page Language="C#" MasterPageFile="~/MainMaster_New.master" AutoEventWireup="true"
    CodeFile="BlogDetails.aspx.cs" Inherits="CatBlog" Title="Welcome: Krishan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .resp-sharing-button__link,
        .resp-sharing-button__icon {
            display: inline-block;
        }

        .resp-sharing-button__link {
            text-decoration: none;
            color: #fff;
            margin: 0.5em;
        }

        .resp-sharing-button {
            border-radius: 5px;
            transition: 25ms ease-out;
            padding: 0.5em 0.75em;
            font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
        }

        .resp-sharing-button__icon svg {
            width: 1em;
            height: 1em;
            margin-right: 0.4em;
            vertical-align: top;
        }

        .resp-sharing-button--small svg {
            margin: 0;
            vertical-align: middle;
        }

        /* Non solid icons get a stroke */
        .resp-sharing-button__icon {
            stroke: #fff;
            fill: none;
        }

        /* Solid icons get a fill */
        .resp-sharing-button__icon--solid,
        .resp-sharing-button__icon--solidcircle {
            fill: #fff;
            stroke: none;
        }

        .resp-sharing-button--twitter {
            background-color: #55acee;
        }

            .resp-sharing-button--twitter:hover {
                background-color: #2795e9;
            }

        .resp-sharing-button--pinterest {
            background-color: #bd081c;
        }

            .resp-sharing-button--pinterest:hover {
                background-color: #8c0615;
            }

        .resp-sharing-button--facebook {
            background-color: #3b5998;
        }

            .resp-sharing-button--facebook:hover {
                background-color: #2d4373;
            }

        .resp-sharing-button--tumblr {
            background-color: #35465C;
        }

            .resp-sharing-button--tumblr:hover {
                background-color: #222d3c;
            }

        .resp-sharing-button--reddit {
            background-color: #5f99cf;
        }

            .resp-sharing-button--reddit:hover {
                background-color: #3a80c1;
            }

        .resp-sharing-button--google {
            background-color: #dd4b39;
        }

            .resp-sharing-button--google:hover {
                background-color: #c23321;
            }

        .resp-sharing-button--linkedin {
            background-color: #0077b5;
        }

            .resp-sharing-button--linkedin:hover {
                background-color: #046293;
            }

        .resp-sharing-button--email {
            background-color: #777;
        }

            .resp-sharing-button--email:hover {
                background-color: #5e5e5e;
            }

        .resp-sharing-button--xing {
            background-color: #1a7576;
        }

            .resp-sharing-button--xing:hover {
                background-color: #114c4c;
            }

        .resp-sharing-button--whatsapp {
            background-color: #25D366;
        }

            .resp-sharing-button--whatsapp:hover {
                background-color: #1da851;
            }

        .resp-sharing-button--hackernews {
            background-color: #FF6600;
        }

            .resp-sharing-button--hackernews:hover, .resp-sharing-button--hackernews:focus {
                background-color: #FB6200;
            }

        .resp-sharing-button--vk {
            background-color: #507299;
        }

            .resp-sharing-button--vk:hover {
                background-color: #43648c;
            }

        .resp-sharing-button--facebook {
            background-color: #3b5998;
            border-color: #3b5998;
        }

            .resp-sharing-button--facebook:hover,
            .resp-sharing-button--facebook:active {
                background-color: #2d4373;
                border-color: #2d4373;
            }

        .resp-sharing-button--twitter {
            background-color: #55acee;
            border-color: #55acee;
        }

            .resp-sharing-button--twitter:hover,
            .resp-sharing-button--twitter:active {
                background-color: #2795e9;
                border-color: #2795e9;
            }

        .resp-sharing-button--google {
            background-color: #dd4b39;
            border-color: #dd4b39;
        }

            .resp-sharing-button--google:hover,
            .resp-sharing-button--google:active {
                background-color: #c23321;
                border-color: #c23321;
            }

        .resp-sharing-button--tumblr {
            background-color: #35465C;
            border-color: #35465C;
        }

            .resp-sharing-button--tumblr:hover,
            .resp-sharing-button--tumblr:active {
                background-color: #222d3c;
                border-color: #222d3c;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="blog1" runat="server">
    </div>
    <%--<div style="text-align: center;">
        <!-- Sharingbutton Facebook -->
        <a class="resp-sharing-button__link" href="https://facebook.com/sharer/sharer.php?u=http%3A%2F%2Fsharingbuttons.io" target="_blank" aria-label="">
            <div class="resp-sharing-button resp-sharing-button--facebook resp-sharing-button--small">
                <div aria-hidden="true" class="resp-sharing-button__icon resp-sharing-button__icon--solidcircle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M12 0C5.38 0 0 5.38 0 12s5.38 12 12 12 12-5.38 12-12S18.62 0 12 0zm3.6 11.5h-2.1v7h-3v-7h-2v-2h2V8.34c0-1.1.35-2.82 2.65-2.82h2.35v2.3h-1.4c-.25 0-.6.13-.6.66V9.5h2.34l-.24 2z" />
                    </svg>
                </div>
            </div>
        </a>

        <!-- Sharingbutton Twitter -->
        <a class="resp-sharing-button__link" href="https://twitter.com/intent/tweet/?text=Super%20fast%20and%20easy%20Social%20Media%20Sharing%20Buttons.%20No%20JavaScript.%20No%20tracking.&amp;url=http%3A%2F%2Fsharingbuttons.io" target="_blank" aria-label="">
            <div class="resp-sharing-button resp-sharing-button--twitter resp-sharing-button--small">
                <div aria-hidden="true" class="resp-sharing-button__icon resp-sharing-button__icon--solidcircle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M12 0C5.38 0 0 5.38 0 12s5.38 12 12 12 12-5.38 12-12S18.62 0 12 0zm5.26 9.38v.34c0 3.48-2.64 7.5-7.48 7.5-1.48 0-2.87-.44-4.03-1.2 1.37.17 2.77-.2 3.9-1.08-1.16-.02-2.13-.78-2.46-1.83.38.1.8.07 1.17-.03-1.2-.24-2.1-1.3-2.1-2.58v-.05c.35.2.75.32 1.18.33-.7-.47-1.17-1.28-1.17-2.2 0-.47.13-.92.36-1.3C7.94 8.85 9.88 9.9 12.06 10c-.04-.2-.06-.4-.06-.6 0-1.46 1.18-2.63 2.63-2.63.76 0 1.44.3 1.92.82.6-.12 1.95-.27 1.95-.27-.35.53-.72 1.66-1.24 2.04z" />
                    </svg>
                </div>
            </div>
        </a>

        <!-- Sharingbutton Google+ -->
        <a class="resp-sharing-button__link" href="https://plus.google.com/share?url=http%3A%2F%2Fsharingbuttons.io" target="_blank" aria-label="">
            <div class="resp-sharing-button resp-sharing-button--google resp-sharing-button--small">
                <div aria-hidden="true" class="resp-sharing-button__icon resp-sharing-button__icon--solidcircle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M12.65 8.6c-.02-.66-.3-1.3-.8-1.8S10.67 6 9.98 6c-.63 0-1.2.25-1.64.68-.45.44-.68 1.05-.66 1.7.02.68.3 1.32.8 1.8.96.97 2.6 1.04 3.5.14.45-.45.7-1.05.67-1.7zm-2.5 5.63c-2.14 0-3.96.95-3.96 2.1 0 1.12 1.8 2.08 3.94 2.08s3.98-.93 3.98-2.06c0-1.14-1.82-2.1-3.98-2.1z" />
                        <path d="M12 0C5.38 0 0 5.38 0 12s5.38 12 12 12 12-5.38 12-12S18.62 0 12 0zm-1.84 19.4c-2.8 0-4.97-1.35-4.97-3.08s2.15-3.1 4.94-3.1c.84 0 1.6.14 2.28.36-.57-.4-1.25-.86-1.3-1.7-.26.06-.52.1-.8.1-.95 0-1.87-.38-2.57-1.08-.67-.68-1.06-1.55-1.1-2.48-.02-.94.32-1.8.96-2.45.65-.63 1.5-.93 2.4-.92V5h3.95v1h-1.53l.12.1c.67.67 1.06 1.55 1.1 2.48.02.93-.32 1.8-.97 2.45-.16.15-.33.3-.5.4-.2.6.05.8.83 1.33.9.6 2.1 1.42 2.1 3.56 0 1.73-2.17 3.1-4.96 3.1zM20 10h-2v2h-1v-2h-2V9h2V7h1v2h2v1z" />
                    </svg>
                </div>
            </div>
        </a>

        <!-- Sharingbutton LinkedIn -->
        <a class="resp-sharing-button__link" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=" target="_blank" aria-label="">
            <div class="resp-sharing-button resp-sharing-button--linkedin resp-sharing-button--small">
                <div aria-hidden="true" class="resp-sharing-button__icon resp-sharing-button__icon--solidcircle">
                    <svg version="1.1" x="0px" y="0px" width="24px" height="24px" viewbox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve">
        <path d="M12,0C5.383,0,0,5.383,0,12s5.383,12,12,12s12-5.383,12-12S18.617,0,12,0z M9.5,16.5h-2v-7h2V16.5z M8.5,7.5 c-0.553,0-1-0.448-1-1c0-0.552,0.447-1,1-1s1,0.448,1,1C9.5,7.052,9.053,7.5,8.5,7.5z M18.5,16.5h-3V13c0-0.277-0.225-0.5-0.5-0.5 c-0.276,0-0.5,0.223-0.5,0.5v3.5h-3c0,0,0.031-6.478,0-7h3v0.835c0,0,0.457-0.753,1.707-0.753c1.55,0,2.293,1.12,2.293,3.296V16.5z" />
    </svg>
                </div>
            </div>
        </a>




    </div>--%>

</asp:Content>
