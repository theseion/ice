accessing
specials
    ^ Specials ifNil: [ Specials := self createSpecials ]