* IDEA [2014-11-21 Fri] pericmd: --help: mark required option (*) with a red color [#D]
* IDEA [2014-11-14 Jum] pericmd: option to collect all unknown/unparsed command-line options and pass it to function e.g. in $args{-cmdline_args}

  - harus shut up Getopt::Long's warning too
  - berguna misalnya kita ingin bikin program wrapper 'progls foo' (setara dengan
    'ls `which foo`') kita bisa specify 'progls -la foo' dan nanti dipass sebagai
    'ls -la `which foo`').

* IDEA [2014-11-01 Sat] ri, periga-argv, pericmd: suppress accepting --foo-json/--foo-yaml even though arg is array etc

  contoh, gw ingin accept file sebagai --file F1 --file F2 saja, gak mau user bisa
  --file-json '["F1","F2"]'. terutama utk array of simple scalar, gw hanya ingin
  itu.
  
  tentu saja kita bisa matikan per_arg_json, per_arg_yaml. mungkin perlu ada
  per-arg optionnya. dan belum ada cara utk specify ini dari pericmd.

* IDEA [2014-04-04 Fri] pericmd, ri: how to specify default is dry_run?

  - so, to actually do stuffs, cmd --nodry-run, or func(-dry_run=>0).

* TODO [2014-07-02 Wed] pericmd: opsi utk daemonize diri di akhir run, listen di unix socket riap::http

  uri (bisa diatur, default '/pericmd' masih belum mantep):
  /pericmd/list_subcommands ; gak bener2x perlu
  /pericmd/list_common_opts ; gak bener2x perlu
  /pericmd/run       argv=(client ngirim @ARGV)
  /pericmd/complete  cmdline=(client ngirim COMP_LINE), point=(client ngirim COMP_POINT, hasilnya json)
  
  - package dan %SPEC digenerate dynamically
  - client adalah Perinci::CmdLine::Client, a very lightweight containing just
    HTTP::Tiny::UNIX (and JSON + Complete::Bash utk completion).
  - kalo perlu (perlu!) formatting juga dilakukan di sisi server, klien sudah
    menerima hasilnya saja.
  - tapi bagaimana dengan streaming interface?

* IDEA [2014-06-27 Fri] pericmd: setelah selesai, launch a http daemon that listens on a unix socket, so future completion can become faster

  agar bener2x cepat, ini harus dilakukan sebelum load Perinci::CmdLine and all
  that stuffs.

* IDEA [2014-05-28 Wed] pericmd: opsi --meta (or perhaps --dump-meta is better, less chance of collision) to dump Rinci metadata

  berguna misalnya untuk melihat deps (terutama pm, lalu disearch secara rekursif)
  untuk menginstal prereq modul perl sebelum menjalankan skrip.
  

      % script --dump-meta | install-perl-module-deps
  
  contoh:
  

       deps => {
           all => [
               {pm => 'Foo'},
               {pm => 'Bar::Baz'},
               {func => '/Qux/some_func'},
           ],
       },
  
  baik deps 'pm' maupun 'func' akan disearch secara rekursif. untuk 'pm': pertama
  kita coba install Foo jika belum terinstal (dan cpanm toolchain will take care
  of its deps). lalu, kita riap meta dari '/Foo/' dan semua func under '/Foo/*',
  untuk mengecek apakah ada deps lain. untuk 'func': riap meta dan proses
  deps-nya.
  
  untuk simpelnya, saat ini kita hanya memroses deps 'pm', 'func', dan 'all'.
  
  tapi, seharusnya kalo kita udah modularize everything (semua skrip ditaruh di
  modul/dist masing2x) gak perlu lagi beginian, kita gunakan saja cara standar
  CPAN (META.yml, dzil, etc). ini utk skrip yang satuan.

* IDEA [2014-04-11 Fri] pericmd: prefix error messages with program name [#C]

  semua di unix kayak gini, dan membantu mengetahui error message datang dari
  program mana. contoh:

      $ ls /x
      ls: cannot access /x: No such file or directory
      $ cat x
      cat: x: No such file or directory

* TODO [2014-12-03 Wed] [#E] pericmd: --help: underline entity in --opt=entity

  - di pericmd-lite agak ribet karena color codes membuat alignment string agak
    ribet dan harus pake Text::ANSI::Util dsb, skip aja dulu di pericmd-lite.

* TODO [2014-08-26 Tue] pericmd: read env vars

  - config file sudah (cli arg & schema default juga sudah of course), tinggal
    read dari env yang belum. walaupun gw masih meninmbang2x apakah support env
    dari Config::Tree aja?

* TODO [2014-08-21 Thu] pericmd: bisa pakai simpler formatter yg dipakai ketimbang perirf, karena salah satu yg bikin lelet adalah si dpfc (ansitable)

  contoh:

      % LOG=0 perl -MDE -Ilib -MPerinci::CmdLine -E'Perinci::CmdLine->new(url=>"/Perinci/Examples/gen_array")->run' -- 20
  butuh waktu 0.230s, 76775 baris

      % LOG=0 perl -MDE -Ilib -MPerinci::CmdLine -E'Perinci::CmdLine->new(url=>"/Perinci/Examples/gen_array")->run' -- --format json 20
  butuh waktu 0.162s, 53230 baris

* TODO [2014-07-16 Wed] pericmd: cmdline_src belum sepenuhnya diimplement [#D]
