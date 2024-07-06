class Quotes {
  Quotes._();

  static const quotesData = [
    "“Before anything else, preparation is the key to success.”\nAlexander Graham Bell",
    "“When it comes to success, there are no shortcuts.”\nBo Bennett",
    "“The question isn't who is going to let me; it's who is going to stop me.”\nAyn Rand",
    "“Success is created by doing the basics, to a high standard, consistently.”\nThibaut",
    "“There's a lot of blood, sweat, and guts between dreams and success.”\nPaul Bryant",
    "“Why be a king, when you can be a god?”\nEminem",
    "“The best way to predict the future is to create it.”\nAbraham Lincoln",
    "“All our dreams can come true if we have the courage to pursue them.”\nWalt Disney",
    "“The secret of success is to do the common things uncommonly well.”\nJohn D. Rockefeller",
    "“The ladder of success is never crowded at the top.”\nNapoleon Hill",
    "“It always seems impossible until it's done.”\nNelson Mandela",
    "“Success comes from having dreams that are bigger than your fears.”\nBobby Unser",
    "“The best revenge is massive success.”\nFrank Sinatra",
    "“The only place success comes before work is in the dictionary.”\nVince Lombardi",
    "“Ambition is the path to success. Persistence is the vehicle you arrive in.”\nBill Bradley",
    "“The successful warrior is the average man, with laser-like focus.”\nBruce Lee",
    "“Action is the foundational key to all success.”\nPablo Picasso",
    "“Success is the sum of small efforts, repeated day-in and day-out.”\nRobert Collier",
    "“Success is doing ordinary things extraordinarily well.”\nJim Rohn",
    "“The people who succeed are irrationally passionate about something.”\nNaval Ravikant",
    "“Success is achieved and maintained by those who try and keep trying.”\nW. Clement Stone",
    "“They succeed, because they think they can.”\nVirgil",
    "“The distance between insanity and genius is measured only by success.”\nBruce Feirstein",
    "“Opportunities don't happen, you create them.”\nChris Grosser",
    "“The harder the battle, the sweeter the victory.”\nLes Brown",
    "“It's hard to beat a person who never gives up.”\nBabe Ruth",
    "“Your focus determines your reality.”\nGeorge Lucas",
    "“It does not matter how slowly you go as long as you do not stop.”\nConfucius",
    "“We are what we repeatedly do. Excellence, then, is not an act, but a habit.”\nAristotle",
    "“Whatever the mind of man can conceive and believe, it can achieve.”\nNapoleon Hill",
    "“Fortune sides with him who dares.”\nVirgil",
    "“Winners never quit, and quitters never win.”\nVince Lombardi",
    "“Whether you think you can or you think you can't – you're right.”\nHenry Ford",
    "“Yesterday I dared to struggle. Today I dare to win.”\nBernadette Devlin",
    "“I am not a product of my circumstances. I am a product of my decisions.”\nStephen Covey",
    "“The secret of success is constancy to purpose.”\nBenjamin Disraeli",
    "“With self-discipline most anything is possible.”\nTheodore Roosevelt",
    "“Success is not in what you have, but who you are.”\nBo Bennett",
    "“Shallow men believe in luck. Strong men believe in cause and effect.”\nRalph Waldo Emerson",
    "“Action is the key to success.”\nAsad Meah",
    "Start where you are. Use what you have. Do what you can.\nArthur Ashe",
    "A dream becomes a goal when action is taken toward its achievement.\nBo Bennett",
    "Congratulations. I knew the record would stand until it was broken.\nYogi Berra",
    "It does not matter how slowly you go as long as you do not stop.\nConfucius",
    "It had long since come to my attention that people of accomplishment rarely sat back and let things happen to them. They went out and happened to things.\nLeonardo da Vinci",
    "The way to get started is to quit talking and begin doing.\nWalt Disney",
    "Try not to become a man of success, but rather try to become a man of value.\nAlbert Einstein",
    "Do not follow where the path may lead. Go, instead, where there is no path and leave a trail.\nRalph Waldo Emerson",
    "Enthusiasm is the engine of success…\nRalph Waldo Emerson",
    "My wish for you is that this life becomes all that you want it to. Your dreams stay big, your worries stay small and that you never need to carry more than you can hold.\nRascal Flatts",
    "Victory is sweetest when you've known defeat.\nMalcolm Forbes",
    "Whether you think you can or you can't, you are right.\nHenry Ford",
    "The future depends on what you do today.\nMahatma Gandhi",
    "Your positive action combined with positive thinking results in success.\nShiv Khera",
    "You are never too old to set another goal or to dream a new dream.\nC.S. Lewis",
    "Whatever you are, be a good one.\nAbraham Lincoln",
    "The simplest and most practical lesson I know is to resolve to be good today, but better tomorrow.\nCatherine McAuley",
    "The fruit of your own hard work is the sweetest.\nDeepika Padukone",
    "Often when you think you're at the end of something, you're at the beginning of something else.\nFred Rogers",
    "It's time to celebrate all the hard work that led to this joyful occasion.\nSheryl Sandberg",
    "Congratulations! Today is your day. You're off to great places. You're off and away!\nDr. Suess",
    "The biggest reward for a thing well done is to have done it.\nVoltaire",
    "Before you act, listen. Before you react, think. Before you spend, earn. Before you criticize, wait. Before you quit, try.\nWilliam Arthur Ward",
    "Be yourself; everyone else is already taken.\nOscar Wilde",
    "The foundation stones for a balanced success are honesty, character, integrity, faith, love, and loyalty.”\nZig Ziglar",
    "Ecclesiastes 10:19\nBread is made for laughter, and wine gladdens life, and money answers everything.",
    "Psalm 1:3\nHe is like a tree planted by streams of water that yields its fruit in its season, and its leaf does not wither. In all that he does, he prospers.",
    "Romans 8:11\nIf the Spirit of him who raised Jesus from the dead dwells in you, he who raised Christ Jesus from the dead will also give life to your mortal bodies through his Spirit who dwells in you.",
    "Psalm 118:1\nOh give thanks to the Lord, for he is good; for his steadfast love endures forever!",
    "Psalm 68:6\nGod settles the solitary in a home; he leads out the prisoners to prosperity, but the rebellious dwell in a parched land.",
    "2 Corinthians 9:8\nAnd God is able to make all grace abound to you, so that having all sufficiency in all things at all times, you may abound in every good work.",
    "Matthew 6:33\nBut seek first the kingdom of God and his righteousness, and all these things will be added to you.",
    "Psalm 84:11\nFor the Lord God is a sun and shield; the Lord bestows favor and honor. No good thing does he withhold from those who walk uprightly.",
    "1 Samuel 2:8\nHe raises up the poor from the dust; he lifts the needy from the ash heap to make them sit with princes and inherit a seat of honor. For the pillars of the earth are the Lord's, and on them he has set the world.",
    "John 15:5\nI am the vine; you are the branches. Whoever abides in me and I in him, he it is that bears much fruit, for apart from me you can do nothing.",
    "Proverbs 10:22\nThe blessing of the Lord makes rich, and he adds no sorrow with it."
  ];
}
