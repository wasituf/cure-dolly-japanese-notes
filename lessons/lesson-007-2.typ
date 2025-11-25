= Japanese Conjugations and Stemming

- ichidan verb: always remove the *る*
  - 食べる「たべる」-> 食べ「食べます・食べたい・食べよう」

- Base stem (*う* row): Used as dictionary form (non-past form).
  #table(
    columns: (auto, 1fr),
    inset: (x: 1.2em, y: 0.75em),
    align: horizon,
    table.header([*Example word*], [*Meaning*]),
    [買う「かう」], [buy],
    [聞く「きく」], [hear],
    [話す「はなす」], [speak],
    [持つ「もつ」], [hold],
    [死ぬ「しぬ」], [die],
    [飛ぶ「とぶ」], [fly],
    [飲む「のむ」], [drink],
    [取る「とる」], [take],
    [食べる「たべる」], [eat],
  )

- I-stem (*い* row): attach helpers → ます (verb)・たい (adjective)・そう, and
  form nouns
  #table(
    columns: (auto, auto, auto, auto, 1fr),
    inset: (x: 1.2em, y: 0.75em),
    align: horizon,
    table.header(
      [*Base (う)*],
      [*え-stem*],
      [*ます (polite)*],
      [*たい (negative)*],
      [*Noun*],
    ),
    [買う], [買い], [買います], [買いたい], [買い物 (shopping)],
    [聞く], [聞い], [聞きます], [ききたい], [],
    [話す], [話し], [話します], [話したい], [話し方 (way of speaking)],
    [持つ], [持ち], [持ちます], [持ちたい], [],
    [死ぬ], [死に], [死にます], [死にたい], [],
    [飛ぶ], [飛び], [飛びます], [飛びたい], [],
    [飲む], [飲い], [飲みます], [飲みたい], [飲み物 (a drink)],
    [取る], [取り], [取ります], [取りたい], [],
    [食べる], [], [食べます], [食べたい], [食べ物 (food)],
  )

#pagebreak(weak: true)
- A-stem (*あ* row): attach helpers → ない・れる・られる・せる・させる
  #table(
    columns: (auto, auto, auto, auto, 1fr),
    inset: (x: 1.2em, y: 0.75em),
    align: horizon,
    table.header(
      [*Base (う)*],
      [*あ-stem*],
      [*ない adjective*],
      [*れる (receptive)*],
      [*せる (causative)*],
    ),
    [買う], [買わ], [買わない], [買われる], [買わせる],
    [聞く], [聞か], [聞かない], [聞かれる], [聞かせる],
    [話す], [話さ], [話さない], [話される], [話させる],
    [持つ], [持た], [持たない], [持たれる], [持たせる],
    [死ぬ], [死な], [死なない], [死なれる], [死なせる],
    [飛ぶ], [飛ば], [飛ばない], [飛びれる], [飛びせる],
    [飲む], [飲ま], [飲まない], [飲みれる], [飲みせる],
    [取る], [取ら], [取らない], [取りれる], [取りせる],
    [食べる], [], [食べない], [食べ*られる*], [食べ*させる*],
  )

- E-stem (*え* row): attach helpers → る・らる verbs
  #table(
    columns: (auto, auto, 1fr),
    inset: (x: 1.2em, y: 0.75em),
    align: horizon,
    table.header([*Base (う)*], [*え-stem*], [*る (potential)*]),
    [買う], [買え], [買える],
    [聞く], [聞け], [聞ける],
    [話す], [話せ], [話せる],
    [持つ], [持て], [持てる],
    [死ぬ], [死ね], [死ねる],
    [飛ぶ], [飛べ], [飛べる],
    [飲む], [飲め], [飲める],
    [取る], [取れ], [取れる],
    [食べる], [], [食べ*られる*],
  )

#pagebreak(weak: true)
- O-stem (*お* row): attach う・よう to form volitional forms
  - Volitional for polite form (ます) is formed by adding う to
    ます「ましょう」instead of the base verb → たべる → たべます →
    たべましょう。
  #table(
    columns: (auto, auto, 1fr),
    inset: (x: 1.2em, y: 0.75em),
    align: horizon,
    table.header([*Base (う)*], [*お-stem*], [*う (volitional)*]),
    [買う], [買お], [買おう],
    [聞く], [聞こ], [聞こう],
    [話す], [話そ], [話そう],
    [持つ], [持と], [持とう],
    [死ぬ], [死の], [死のう],
    [飛ぶ], [飛ぼ], [飛ぼう],
    [飲む], [飲も], [飲もう],
    [取る], [取ろ], [取ろう],
    [食べる], [], [食べ*よう*],
  )
