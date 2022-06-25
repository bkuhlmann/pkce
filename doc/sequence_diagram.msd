#//# --------------------------------------------------------------------------------------
#//# Created using Sequence Diagram for Mac
#//# https://www.macsequencediagram.com
#//# https://itunes.apple.com/gb/app/sequence-diagram/id1195426709?mt=12
#//# --------------------------------------------------------------------------------------
title "PKCE"

participant PKCE
participant Encoder
participant Verifier
participant Challenger
participant Code

PKCE->Encoder: .call

note over PKCE
  "A convenient delegate method."
end note

Encoder->Verifier: #call

note over Verifier
  "Answers monad (code or error)."
end note

Encoder->Challenger: #call

note over Challenger
  "Consumes verify code to build challenge code."
end note

Encoder->Code: Builds codes

note over Code
  "Stores challenge and verify codes."
end note

Encoder->PKCE: Answers monad

note over PKCE
  "Contains either the code (struct) or error message."
end note
