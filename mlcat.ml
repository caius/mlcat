
let () =
  for i = 1 to Array.length Sys.argv - 1 do
    let filename = Sys.argv.(i) in
    let handle = open_in filename in
(* Reads one line of the file *)
    try
      let line = input_line handle in
      print_endline line;
      flush stdout;
      close_in handle

    with e ->
      close_in_noerr handle;
      raise e
  done;;
