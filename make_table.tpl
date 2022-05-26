%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="static/styles.css">

</head>

<style>

h1, h2, form {
    text-align: center;
}

form {
    display:inline-flex;
}

</style>

<body>
    <h1>Welcome Ryan</h1>
    
    <div class="Menu">

        <form action="">
            <button class="button">New Task</button>
        </form>

        <form action="">
            <button class="button">Edit Tasks</button>
        </form>

        <form action="">
            <button class="button">Remove tasks</button>
        </form>

    </div>

    <div class = "container">


        <table class="todoTable" border = 1>
        <th>#Num</th>

        <th>Description</th>

        %for row in rows:
        <tr>
        %for col in row:
        <td>{{col}}</td>
        %end
        </tr>
        %end
        </table>

    </div>

</body>

<style>
    .container {
        margin-left: auto;
        margin-right: auto;
        margin-top: 10px;
        width: 50%;
        display: flex;
        justify-content: center;
    }

    .todoTable tr:nth-child(even,odd){background-color: aua;}
    .todoTable tr:hover{background-color: #89d0ee;opacity: 0.5;}
    .todoTable tr:hover TD:nth-child(1){font-weight: bold;}


    </style>