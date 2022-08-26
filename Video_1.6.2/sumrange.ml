(** [sumrange a b]  é a soma de [a] inclusivo até [b] inclusivo*)
let sumrange =
  let rec aux acc a b =
    if a > b then acc else aux (a + acc) (a + 1) b
  in aux 0

(** [sumrange_step a next b] é a soma de [a] até [b] 
    com intervalos dados pela função [next].
    Exemplo: [sumrange_step 0 (fun x -> x + 3) 10] = 0 + 3 + 6 + 9 = [18] *)

let sumrange_step =
  let rec aux acc a next b =
    if a > b then acc else aux (a + acc) (next a) next b
  in aux 0

(** [sumrange_f func a next b] é a soma de [a] até [b]
com intervalos dados pela função [next] e com a aplicação de [func].

Exemplo: [sumrange_f (fun x -> x * x) 0 (fun x -> x + 1) 5 =
  0 + 1 + 2 * 2 + 3 * 3 + 4 * 4 + 5 * 5 = 55 *)

let sumrange_f = (* SEU CODIGO AQUI *)
