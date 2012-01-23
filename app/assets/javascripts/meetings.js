$(function () {
  $('#meeting_staffmember_tokens').tokenInput('/staffmembers/search', { crossDomain: false, propertyToSearch: 'forename' });
});