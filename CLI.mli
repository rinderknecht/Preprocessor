(* Command-Line Interface (CLI) *)

[@@@warning "-67"] (* Warning broken in OCaml 5.0.0 *)

(* Configuration, options and the parsing status of the latter *)

module type PARAMETERS =
  sig
    module Config  : Config.S
    module Options : Options.S
    module Status  : module type of Status
  end

(* The instantiation of functor [Make] reads the command line
   interface. *)

module Make (Config : Config.S) : PARAMETERS

(* Default parameters (without actually reading the CLI). *)

module MakeDefault (Config : Config.S) : PARAMETERS
