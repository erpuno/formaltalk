% Максим Сохацький ДП "ІНФОТЕХ"

Definitions.

S = ([\t\s\r\n]|--.*\r\n)
A = [\'a-zA-Z_0-9\x{2074}\x{400}-\x{4FF}\x{208E}\x{2010}-\x{2191}\x{2193}-\x{2199}\x{2201}-\x{25FF}\x{3B1}-\x{3BA}\x{3BC}-\x{3FF}\-\.,\=\:\*\{\}\(\)\[\]\"\'/;]

Rules.

document : {token, {document, TokenLine}}.
result   : {token, {result, TokenLine}}.
module   : {token, {module, TokenLine}}.
form     : {token, {form, TokenLine}}.
bpe      : {token, {bpe, TokenLine}}.
event    : {token, {event, TokenLine}}.
begin    : {token, {'begin', TokenLine}}.
end      : {token, {'end', TokenLine}}.
route    : {token, {route, TokenLine}}.
notice   : {token, {notice, TokenLine}}.
\|       : {token, {'|', TokenLine}}.
\=       : {token, {'=', TokenLine}}.
\[       : {token, {'[', TokenLine}}.
\]       : {token, {']', TokenLine}}.
{A}+     : {token, {word, TokenLine, unicode:characters_to_binary(TokenChars)}}.
{S}+     : skip_token.

Erlang code.
