<h1 class="page-header">{{ poll.question }}</h1>

<div class="alert alert-warning" role="alert">Please vote your choice wisely. There is no undo!</div>

<table class="table">
	<tr>
		<th>Candidate</th>
		<th>Vote</th>
		<th>Action</th>
	</tr>
{% for option in options %}
	<tr>
		<td>{{ option.option_name }}</td>
		<td>{{ option.vote }}</td>
		<td>{{ link_to('poll/vote/' ~ option.option_id, '+ 1', 'class': 'btn btn-danger', 'role': 'button') }}</td>
	</tr>
{% endfor %}
</table>

<p>
{{ link_to('poll/index', 'Back', 'class': 'btn btn-default', 'role': 'button') }} 
{{ link_to('poll/add/' ~ poll.question_id, '+ Other',  'class': 'btn btn-success', 'role': 'button') }}	
</p>
