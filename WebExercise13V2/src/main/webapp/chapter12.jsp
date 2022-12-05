<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/1/2022
  Time: 11:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700|Raleway:500.700" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/chapter12.css">
    <title>Exercise Chapter 12</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://unpkg.com/css-doodle@0.15.3/css-doodle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.0.1/vue.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        css-doodle {
            --color: @p(#51eaea, #fffde1, #ff9d76, #FB3569);

        --rule: (
        :doodle {
            @grid: 30x1 / 18vmin;
            --deg: @p(-180deg, 180deg);
        }

        :container
        {
            perspective: 30vmin;
        }

        :after, :before {
            content: '';
            background: var(--color);
            @place-cell: @r(100%) @r(100%);
            @size: @r(6px);
            @shape: heart;
        }

        @place-cell: center;
        @size: 100%;

        box-shadow: @m2(0 0 50px var(--color));
        background: @m100(radial-gradient(var(--color) 50%, transparent 0) @r(-20%, 120%) @r(-20%, 100%) / 1px 1px no-repeat);

        will-change: transform, opacity;
        animation: scale-up 40s linear infinite;
        animation-delay: calc(-40s / @I * @i);

        @keyframes scale-up {
            0%, 95.01%, 100% {
                transform: translateZ(0) rotate(0);
                opacity: 0;
            }

            10% {
                opacity: 1;
            }

            95% {
                transform: translateZ(35vmin) rotateZ(@var(--deg));
            }
        }
        )
        }
    </style>
</head>
<body>
    <css-doodle use="var(--rule)"></css-doodle>

    <div class="body">
        <div id="app" class="container">
            <a href="/Chapter12/Ex1/ch12_ex1_sqlGateway">
                <card data-image="https://images.pexels.com/photos/776653/pexels-photo-776653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
                    <h1 slot="header">Ex1</h1>
                    <p slot="content">Implement Connection Pooling</p>
                </card>
            </a>
            <a href="/Chapter12/Ex2/ch12_ex2_userAdmin">
                <card data-image="https://images.pexels.com/photos/2039606/pexels-photo-2039606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
                    <h1 slot="header">Ex2</h1>
                    <p slot="content">Create a User Admin Application</p>
                </card>
            </a>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/assets/chapter12.js"></script>
</body>
</html>
