***Settings***
Documentation   Ações da página de login


***Keywords***
Open Login Page
  Open Browser  https://parodify.herokuapp.com/users/sign_in  chromium

Login With
  [Arguments]   ${email_arg}            ${pass_arg}
  Fill Text     id=user_email           ${email_arg}
  Fill Text     id=user_password        ${pass_arg}

  Click         css=input[type=submit]

Alert Should Be
  [Arguments]   ${expect_arg}
  Get Text      css=.is-danger .message-body  equal  ${expect_arg}