<h1 class="page-header">Create Your Poll</h1>

<p>Please make poll with non sensitive question.</p>
<br />

<form method="post">
  <div class="form-group">
    <label for="question">Poll Question</label>
    {{ text_field('question', 'class': 'form-control') }}
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  {{ link_to('poll/index', 'Cancel', 'class': 'btn btn-default', 'role': 'button') }} 
</form>