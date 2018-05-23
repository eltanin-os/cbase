
typedef union
#ifdef __cplusplus
	YYSTYPE
#endif
 {
	Node	*p;
	Cell	*cp;
	int	i;
	char	*s;
} YYSTYPE;
extern YYSTYPE yylval;
# define FIRSTTOKEN 257
# define PROGRAM 258
# define PASTAT 259
# define PASTAT2 260
# define XBEGIN 261
# define XEND 262
# define NL 263
# define ARRAY 264
# define MATCH 265
# define NOTMATCH 266
# define MATCHOP 267
# define FINAL 268
# define DOT 269
# define ALL 270
# define CCL 271
# define NCCL 272
# define CHAR 273
# define OR 274
# define STAR 275
# define QUEST 276
# define PLUS 277
# define EMPTYRE 278
# define AND 279
# define BOR 280
# define APPEND 281
# define EQ 282
# define GE 283
# define GT 284
# define LE 285
# define LT 286
# define NE 287
# define IN 288
# define ARG 289
# define BLTIN 290
# define BREAK 291
# define CLOSE 292
# define CONTINUE 293
# define DELETE 294
# define DO 295
# define EXIT 296
# define FOR 297
# define FUNC 298
# define SUB 299
# define GSUB 300
# define IF 301
# define INDEX 302
# define LSUBSTR 303
# define MATCHFCN 304
# define NEXT 305
# define NEXTFILE 306
# define ADD 307
# define MINUS 308
# define MULT 309
# define DIVIDE 310
# define MOD 311
# define ASSIGN 312
# define ASGNOP 313
# define ADDEQ 314
# define SUBEQ 315
# define MULTEQ 316
# define DIVEQ 317
# define MODEQ 318
# define POWEQ 319
# define PRINT 320
# define PRINTF 321
# define SPRINTF 322
# define ELSE 323
# define INTEST 324
# define CONDEXPR 325
# define POSTINCR 326
# define PREINCR 327
# define POSTDECR 328
# define PREDECR 329
# define VAR 330
# define IVAR 331
# define VARNF 332
# define CALL 333
# define NUMBER 334
# define STRING 335
# define REGEXPR 336
# define GETLINE 337
# define RETURN 338
# define SPLIT 339
# define SUBSTR 340
# define WHILE 341
# define CAT 342
# define NOT 343
# define UMINUS 344
# define POWER 345
# define DECR 346
# define INCR 347
# define INDIRECT 348
# define LASTTOKEN 349
