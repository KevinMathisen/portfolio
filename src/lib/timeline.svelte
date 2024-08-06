<script>
    let events = [
        ["2021", "Graduated Highschool with Computer Electronics Specialisation"],
        ["2021", "Started studying CyberSecurity and Digital Infrastructure at NTNU"],
        ["2023", "Started working as a programming instructor at NTNU"],
        ["2024", "Graduated NTNU with a Bachelor in CyberSecurity and Digital Infrastructure"],
        ["2024", "Started studying Programming and System Architecture at UIO"]
    ]
</script>

<div class="timeline">
    {#each events as event, index}
      <div class="event {index % 2 === 0 ? 'left' : 'right'}">
        <div class="content">
          <div class="heading">{event[0]}</div>
          <div>{event[1]}</div>
        </div>
      </div>
    {/each}
</div>

<style>
    .timeline {
      position: relative;
      margin: 1em auto;
      padding: 1em 0;
      width: 90%;
    }
  
    .timeline::before {
      content: '';
      position: absolute;
      width: 2px;
      background-color: #fff;
      top: 0;
      bottom: 0;
      left: 50%;
      margin-left: -1px;
    }
  
    .event {
      padding: 10px;
      position: relative;
      width: 45%;
      margin-bottom: 20px;
    }
  
    .event.left {
      left: 1%;
    }
  
    .event.right {
      left: 50%;
    }
  
    .event::before {
      content: '';
      position: absolute;
      width: 13px;
      height: 13px;
      border-radius: 50%;
      background-color: #fff;
      top: 10px;
    }
  
    .event.left::before {
      right: -6px;
    }
  
    .event.right::before {
      left: -6px;
    }
  
    @media (max-width: 600px) {
      .event {
        width: 90%;
		left: 0 !important;
		right: 0 !important;
		margin-left: auto !important;
		margin-right: auto !important;
      }

	  .event.left::before, .event.right::before {
		left: 0 !important;
		right: 0 !important;
		margin-left: auto !important;
		margin-right: auto !important;
		top: 0 !important;
	  }

	  .content {
		z-index: 3;
		position: relative;
	  }
    }
  
    .content {
      background-color: #202020;
      color: #c4c1b8;
      padding: 15px;
      border-radius: 8px;
    }
  
    .heading {
      font-weight: bold;
      margin-bottom: 5px;
	  color: #EBE8DD;
    }
</style>