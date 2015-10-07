<h1 class="page-header">Available Polls</h1>
<p>Please select any polls below to start voting.</p>
<br />

<div class="list-group">
{% for question in questions %}
 	{{ link_to('poll/show/' ~ question.question_id, question.question, 'class': 'list-group-item') }}
{% endfor %}
</div>
