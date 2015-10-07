<h1 class="page-header">Add Poll Option</h1>

<p>This option poll will be list for poll question "{{ poll.question }}"</p>

<form method="post">
  <div class="form-group">
    <label for="name">Poll Option</label>
    {{ text_field('name', 'class': 'form-control') }}
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  {{ link_to('poll/show/' ~ poll.question_id, 'Cancel', 'class': 'btn btn-default', 'role': 'button') }} 
</form>