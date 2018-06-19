#!/usr/bin/env ruby

gems = {
  rubygems: 'rubygems/rubygems',
  # bigdecimal: 'ruby/bigdecimal',
  cmath: 'ruby/cmath',
  csv: 'ruby/csv',
  date: 'ruby/date',
  dbm: 'ruby/dbm',
  etc: 'ruby/etc',
  fcntl: 'ruby/fcntl',
  fiddle: 'ruby/fiddle',
  fileutils: 'ruby/fileutils',
  gdbm: 'ruby/gdbm',
  ioconsole: 'ruby/io-console',
  ipaddr: 'ruby/ipaddr',
  json: 'flori/json',
  logger: 'ruby/logger',
  matrix: 'ruby/matrix',
  # openssl: 'ruby/openssl',
  ostruct: 'ruby/ostruct',
  prime: 'ruby/prime',
  psych: 'ruby/psych',
  rdoc: 'ruby/rdoc',
  rexml: 'ruby/rexml',
  rss: 'ruby/rss',
  scanf: 'ruby/scanf',
  sdbm: 'ruby/sdbm',
  stringio: 'ruby/stringio',
  strscan: 'ruby/strscan',
  webrick: 'ruby/webrick',
  zlib: 'ruby/zlib',
}

tags = %w[
  v2_0_0_rc1
  v2_1_0_rc1
  v2_2_0_rc1
  REXML_2_7_0
  RUBY-SHA1_v1_2
  RUBY_1_3
  SHELL_v0_6
  V1-1-1
  V1-1-3
  forwardable_v1_1
  gtk_012
  irb_0_9
  oniguruma_2_2_4
  oniguruma_2_2_5
  oniguruma_2_2_6
  oniguruma_2_2_7
  oniguruma_2_2_8
  oniguruma_3_4_0
  oniguruma_3_5_4
  oniguruma_3_6_0
  oniguruma_3_7_0
  oniguruma_3_7_0_1
  r1_1b9
  r1_1b9_24
  r1_1b9_25
  ruby1_4_3
  ruby_1_4_3
  ruby_1_4_3_pre1
  testunit_0-1-7
  testunit_0-1-8
  v0_7_1
  v0_7_3
  v1_0
  v1_1
  v1_1_8
  v1_1b6
  v1_1b7
  v1_1b8
  v1_1b9_07
  v1_1b9_08
  v1_1b9_11
  v1_1b9_12
  v1_1b9_13
  v1_1b9_15
  v1_1b9_16
  v1_1b9_18
  v1_1b9_20
  v1_1b9_22
  v1_1b9_23
  v1_1b9_26
  v1_1b9_27
  v1_1b9_28
  v1_1b9_30
  v1_1b9_31
  v1_1c0
  v1_1c1
  v1_1c2
  v1_1c3
  v1_1c4
  v1_1c5
  v1_1c6
  v1_1c7
  v1_1c8
  v1_1c9
  v1_1c9_1
  v1_1d-start
  v1_1d0
  v1_1d1
  v1_2_1
  v1_2_1repack
  v1_2_2
  v1_2_2_pr1
  v1_2_4
  v1_2_5
  v1_2_6
  v1_2_6repack
  v1_2_stable
  v1_3_1_
  v1_3_1_990126
  v1_3_1_990127
  v1_3_1_990128
  v1_3_1_990201
  v1_3_1_990203
  v1_3_1_990205
  v1_3_1_990209
  v1_3_1_990210
  v1_3_1_990212
  v1_3_1_990215
  v1_3_1_990224
  v1_3_1_990225
  v1_3_1a_990201
  v1_3_3_990507
  v1_3_3_990513
  v1_3_3_990518
  v1_3_4_990531
  v1_3_4_990611
  v1_3_4_990624
  v1_3_4_990625
  v1_3_5
  v1_3_6
  v1_3_6_repack
  v1_3_7
  v1_4_0
  v1_4_1
  v1_4_2
  v1_4_3
  v1_4_4
  v1_4_5
  v1_4_6
  v1_5_0
  v1_6_0
  v1_6_1
  v1_6_2
  v1_6_3
  v1_6_4
  v1_6_4_preview1
  v1_6_4_preview2
  v1_6_4_preview3
  v1_6_4_preview4
  v1_6_5
  v1_6_6
  v1_6_7
  v1_6_8
  v1_7_1
  v1_8_0
  v1_8_0_preview1
  v1_8_0_preview2
  v1_8_0_preview3
  v1_8_0_preview4
  v1_8_0_preview5
  v1_8_0_preview6
  v1_8_0_preview7
  v1_8_1
  v1_8_1_preview1
  v1_8_1_preview2
  v1_8_1_preview3
  v1_8_1_preview4
  v1_8_2
  v1_8_2_preview1
  v1_8_2_preview2
  v1_8_2_preview3
  v1_8_2_preview4
  v1_8_3
  v1_8_3_preview1
  v1_8_3_preview2
  v1_8_3_preview3
  v1_8_4
  v1_8_4_preview1
  v1_8_4_preview2
  v1_8_5
  v1_8_5_11
  v1_8_5_113
  v1_8_5_114
  v1_8_5_115
  v1_8_5_12
  v1_8_5_2
  v1_8_5_231
  v1_8_5_35
  v1_8_5_52
  v1_8_5_preview1
  v1_8_5_preview2
  v1_8_5_preview3
  v1_8_5_preview4
  v1_8_5_preview5
  v1_8_6
  v1_8_6_110
  v1_8_6_111
  v1_8_6_114
  v1_8_6_230
  v1_8_6_286
  v1_8_6_287
  v1_8_6_36
  v1_8_6_368
  v1_8_6_369
  v1_8_6_383
  v1_8_6_388
  v1_8_6_398
  v1_8_6_399
  v1_8_6_420
  v1_8_6_preview1
  v1_8_6_preview2
  v1_8_6_preview3
  v1_8_7
  v1_8_7_160
  v1_8_7_17
  v1_8_7_173
  v1_8_7_174
  v1_8_7_22
  v1_8_7_248
  v1_8_7_249
  v1_8_7_299
  v1_8_7_301
  v1_8_7_302
  v1_8_7_330
  v1_8_7_334
  v1_8_7_352
  v1_8_7_357
  v1_8_7_358
  v1_8_7_369
  v1_8_7_370
  v1_8_7_371
  v1_8_7_373
  v1_8_7_374
  v1_8_7_71
  v1_8_7_72
  v1_8_7_preview1
  v1_8_7_preview2
  v1_8_7_preview3
  v1_8_7_preview4
  v1_9_0_0
  v1_9_0_1
  v1_9_0_2
  v1_9_0_3
  v1_9_0_4
  v1_9_0_5
  v1_9_1_0
  v1_9_1_126
  v1_9_1_127
  v1_9_1_128
  v1_9_1_129
  v1_9_1_243
  v1_9_1_376
  v1_9_1_378
  v1_9_1_429
  v1_9_1_430
  v1_9_1_431
  v1_9_1_preview1
  v1_9_1_preview2
  v1_9_1_rc1
  v1_9_1_rc2
  v1_9_2_0
  v1_9_2_136
  v1_9_2_180
  v1_9_2_290
  v1_9_2_318
  v1_9_2_320
  v1_9_2_381
  v1_9_2_preview1
  v1_9_2_preview2
  v1_9_2_preview3
  v1_9_2_rc1
  v1_9_2_rc2
  v1_9_3_0
  v1_9_3_125
  v1_9_3_194
  v1_9_3_195
  v1_9_3_286
  v1_9_3_326
  v1_9_3_327
  v1_9_3_360
  v1_9_3_361
  v1_9_3_362
  v1_9_3_374
  v1_9_3_383
  v1_9_3_384
  v1_9_3_385
  v1_9_3_392
  v1_9_3_426
  v1_9_3_429
  v1_9_3_448
  v1_9_3_483
  v1_9_3_484
  v1_9_3_545
  v1_9_3_547
  v1_9_3_550
  v1_9_3_551
  v1_9_3_preview1
  v1_9_3_rc1
  v2_0_0_0
  v2_0_0_195
  v2_0_0_247
  v2_0_0_352
  v2_0_0_353
  v2_0_0_451
  v2_0_0_481
  v2_0_0_576
  v2_0_0_594
  v2_0_0_598
  v2_0_0_643
  v2_0_0_645
  v2_0_0_647
  v2_0_0_648
  v2_0_0_preview1
  v2_0_0_preview2
  v2_0_0_rc2
  v2_1_0
  v2_1_0_preview1
  v2_1_0_preview2
  v2_1_1
  v2_1_10
  v2_1_2
  v2_1_3
  v2_1_4
  v2_1_5
  v2_1_6
  v2_1_7
  v2_1_8
  v2_1_9
  v2_2_0
  v2_2_0_preview1
  v2_2_0_preview2
  v2_2_1
  v2_2_2
  v2_2_3
  v2_2_4
  v2_2_5
  v2_2_6
  v2_2_7
  v2_3_0
  v2_3_0_preview1
  v2_3_0_preview2
  v2_3_1
  v2_3_2
  v2_3_3
  v2_3_4
  v2_4_0
  v2_4_0_preview1
  v2_4_0_preview2
  v2_4_0_preview3
  v2_4_0_rc1
  v2_4_1
  v_1_8_5_52
  v_1_8_6_36
  yarv_migration_base
]

gems.each do |k, v|
  puts k
  dir = File.expand_path("~/Documents/github.com/#{v}")

  Dir.chdir(dir) do
    r = `git branch`

    if r.match(/ruby-core/)
      `git checkout ruby-core`
      `git fetch ruby-core trunk`
      `git rebase ruby-core/trunk`
      `git checkout master`
    else
      `git remote add ruby-core git@github.com:ruby/ruby.git`
      `git fetch ruby-core`
      tags.each{|t| `git tag -d #{t}` }
      `git checkout ruby-core/trunk`
      `git branch ruby-core`
      `git checkout master`
    end
  end
end
