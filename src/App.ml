open Webapi.Dom

(* javascript console *)
let _ = Js.log "running app.ml"

(* dom manipulation *)
let thn k oa = Option.bind oa k
let ( let* ) x f = Option.bind x f

let main () =
  let e = document |> Document.createElement "div" in
  let* body = document |> Document.asHtmlDocument |> thn HtmlDocument.body in
  Element.setInnerText e "this is a div created dynamically by ocaml code!";
  body |> Element.appendChild e;
  Some ()
;;

main ()
