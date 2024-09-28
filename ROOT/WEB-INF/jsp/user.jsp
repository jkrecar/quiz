<!DOCTYPE html>
<html>
<head>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta charset="ISO-8859-1">
    <style>
        body {
            margin-top: 70px;
            text-align: center;
            background-image: url("imageBkgr.webp");
            background-repeat: no-repeat;
            background-size: cover;
            color: white;
            font-size: 30px;
        }
        select {
            border-radius: 20px;
            box-shadow: 0 0 10px #E8E8E8 inset;
            color: #F33A6A;
        }
        #selectAnswerTag {
            display: flex;
            flex-direction: column; /* Stack radio buttons vertically */
            align-items: center; /* Center radio buttons horizontally */
            margin-top: 20px; /* Space above radio buttons */
        }
        button {
            border-radius: 20px;
            box-shadow: 0 0 10px #E8E8E8 inset;
            background-color: #F33A6A;
            color: white;
            border: 2px solid #FFFFF0;
            width: 200px;
            height: 30px;
            margin-top: 20px; /* Space above the button */
        }
    </style>
    <title>User page</title>
    <script type="text/javascript">
        let correctAnswersCount = 0;
        let totalQuestions = 0;

        function hideAllTagsExceptSelectCategoryTag() {
            $('#questionLabel').hide();
            $('#chooseAnswerLabel').hide();
            $('#selectAnswerTag').hide();
            $('#submitAnswerButton').hide();
            $('#descriptionLabel').hide();
        }

        function fillCategorySelectTag(data, tagId, propertyNameForValue, propertyNameForInnerHtml) {
            tagId = '#' + tagId;
            $(tagId).html("");

            for (let i = 0; i < data.length; i++) {
                let selectOption = (i === 0) ? "selected" : "";
                let value = data[i][propertyNameForValue];
                let innerHtmlValue = data[i][propertyNameForInnerHtml];
                $(tagId).append("<option value='" + value + "' " + selectOption + ">" + innerHtmlValue + "</option>");
            }
        }

        function fillRadioButtons(data, tagId, propertyNameForValue, propertyNameForInnerHtml) {
            tagId = '#' + tagId;
            $(tagId).html("");

            for (let i = 0; i < data.length; i++) {
                let value = data[i][propertyNameForValue];
                let innerHtmlValue = data[i][propertyNameForInnerHtml];
                $(tagId).append("<label class='radio-button'><input type='radio' name='answer' value='" + value + "'>" + innerHtmlValue + "</label>");
            }
        }

        function getQuestionCategories(initializeSelectTag) {
            $('#answerResultLabel').html("");

            if (initializeSelectTag) {
                $.get('/question/allCategories', function(data) {
                    fillCategorySelectTag(data, 'selectCategoryTag', 'category', 'category');
                });
            }

            hideAllTagsExceptSelectCategoryTag();
        }

        function showAllTags() {
            $('#questionLabel').show();
            $('#chooseAnswerLabel').show();
            $('#selectAnswerTag').show();
            $('#submitAnswerButton').show();
            $('#answerResultLabel').show();
            $('#descriptionLabel').show();
        }

        function generateQuestion(selectedCategory) {
            showAllTags();
            $('#answerResultLabel').html("");
            $('#descriptionLabel').html("");

            $.get('/question/questionAndAnswers?category=' + selectedCategory, function(data) {
                $('#questionLabel').html("");
                $('#questionLabel').append("<span>" + data[0]['questionContent'] + "</span>");
                fillRadioButtons(data, "selectAnswerTag", "answerID", "answerContent");
            });
        }

        function submitAnswer() {
            var idOfAnsweredQuestion = $('input[name="answer"]:checked').val(); // Get value of selected radio button
            $.post("/question/submitAnswer", { answerId: idOfAnsweredQuestion }, function(data) {
                $('#answerResultLabel').html(data ? "Odgovor je <span style='color:green'>tacan</span>!" : "Odgovor je <span style='color:red'>netacan</span>!");
                
                // Update correct answers count
                if (data) {
                    correctAnswersCount++;
                }
                totalQuestions++;

                // Check if we've reached five questions
                if (totalQuestions < 5) {
                    // Generate next question after 3 seconds
                    setTimeout(() => {
                        $('#selectAnswerTag').html(""); // Clear previous answers
                        generateQuestion($('#selectCategoryTag').val()); // Generate new question
                    }, 3000);
                } else {
                    // Display final result after five questions
                    $('#answerResultLabel').html("Kraj kviza! Tacni odgovori: " + correctAnswersCount + " od " + totalQuestions);
                    hideAllTagsExceptSelectCategoryTag(); // Hide everything except category select

                    // Reset counters and start over after 3 seconds
                    setTimeout(() => {
                        correctAnswersCount = 0;
                        totalQuestions = 0;
                        $('#answerResultLabel').html("");
                        showAllTags(); // Show tags to start over
                    }, 3000);
                }

                if (!data) showCorrectAnswerAndDescription(idOfAnsweredQuestion);
            });
        }

        function showCorrectAnswerAndDescription(idOfAnsweredQuestion) {
            $.get("/question/correctAnswer?answerId=" + idOfAnsweredQuestion, function(data) {
                $('#descriptionLabel').html("Tacan odgovor je: <br/> " + data[0]['content'] + "<br/><br/>Opis odgovara: <br/>" + data[0]['description']);
            });
        }

        $(document).ready(function() {
            getQuestionCategories(true);
            $('#selectCategoryTag').change(function() {
                let selectedCategory = $(this).val();
                generateQuestion(selectedCategory);
            });
        });
    </script>
</head>
<body background="../imageBkgr.webp">
    <p>Dobro dosli na IMIQuiz</p>
    <p style="font-size: 16px;">Izaberite za koji razred zelite da odgovorite na pitanje:</p>
    <select name="category" id="selectCategoryTag"></select><br>
    <p id="questionLabel"></p>
    <p id="chooseAnswerLabel" style="font-size: 16px;">Odaberite tacan odgovor:</p>
    <div id="selectAnswerTag" style="font-size: 16px;"></div>
    <button onClick="submitAnswer()" id="submitAnswerButton">Odgovori</button>
    <p id="answerResultLabel"></p>
    <p id="descriptionLabel" style="font-size: 14px;"></p>
</body>
</html>
