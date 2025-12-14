.class public final Lorg/jsoup/parser/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:[C

.field public static final u:[I


# instance fields
.field public final a:Lorg/jsoup/parser/a;

.field public final b:Lorg/jsoup/parser/D;

.field public c:Lorg/jsoup/parser/i1;

.field public d:LF3/f;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/StringBuilder;

.field public final h:Ljava/lang/StringBuilder;

.field public final i:Lorg/jsoup/parser/M;

.field public final j:Lorg/jsoup/parser/L;

.field public k:Lorg/jsoup/parser/N;

.field public final l:Lorg/jsoup/parser/H;

.field public final m:Lorg/jsoup/parser/J;

.field public final n:Lorg/jsoup/parser/I;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public final r:[I

.field public final s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jsoup/parser/S;->t:[C

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/S;->u:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    iput-object v0, p0, Lorg/jsoup/parser/S;->c:Lorg/jsoup/parser/i1;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/S;->d:LF3/f;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/S;->e:Z

    iput-object v0, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/S;->g:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/M;

    invoke-direct {v0}, Lorg/jsoup/parser/M;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/S;->i:Lorg/jsoup/parser/M;

    new-instance v1, Lorg/jsoup/parser/L;

    invoke-direct {v1}, Lorg/jsoup/parser/L;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/S;->j:Lorg/jsoup/parser/L;

    iput-object v0, p0, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    new-instance v0, Lorg/jsoup/parser/H;

    invoke-direct {v0}, Lorg/jsoup/parser/H;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/S;->l:Lorg/jsoup/parser/H;

    new-instance v0, Lorg/jsoup/parser/J;

    invoke-direct {v0}, Lorg/jsoup/parser/J;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    new-instance v0, Lorg/jsoup/parser/I;

    invoke-direct {v0}, Lorg/jsoup/parser/I;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/S;->q:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/S;->r:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/S;->s:[I

    iput-object p1, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    iput-object p2, p0, Lorg/jsoup/parser/S;->b:Lorg/jsoup/parser/D;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/parser/i1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->a()V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/S;->b:Lorg/jsoup/parser/D;

    invoke-virtual {v0}, Lorg/jsoup/parser/D;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LL8/a;

    const-string v2, "Invalid character reference: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xd

    invoke-direct {v1, p2}, LL8/a;-><init>(I)V

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->m()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, LL8/a;->b:Ljava/lang/Object;

    iput-object p1, v1, LL8/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x1

    iget-object v3, v0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->n()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->l()C

    move-result v6

    if-ne v4, v6, :cond_1

    return-object v5

    :cond_1
    sget-object v4, Lorg/jsoup/parser/S;->t:[C

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->b()V

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->n()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v3, Lorg/jsoup/parser/a;->a:[C

    iget v7, v3, Lorg/jsoup/parser/a;->e:I

    aget-char v6, v6, v7

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_2

    return-object v5

    :cond_2
    iget v4, v3, Lorg/jsoup/parser/a;->c:I

    iget v6, v3, Lorg/jsoup/parser/a;->e:I

    sub-int/2addr v4, v6

    const/16 v6, 0x400

    const/4 v7, 0x0

    if-ge v4, v6, :cond_3

    iput v7, v3, Lorg/jsoup/parser/a;->d:I

    :cond_3
    invoke-virtual {v3}, Lorg/jsoup/parser/a;->b()V

    iget v4, v3, Lorg/jsoup/parser/a;->e:I

    iput v4, v3, Lorg/jsoup/parser/a;->g:I

    const-string v4, "#"

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/a;->p(Ljava/lang/String;)Z

    move-result v4

    const-string v6, ";"

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/16 v10, 0x39

    const/16 v11, 0x30

    const/4 v12, -0x1

    iget-object v13, v0, Lorg/jsoup/parser/S;->r:[I

    if-eqz v4, :cond_11

    const-string v4, "X"

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/a;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->b()V

    iget v14, v3, Lorg/jsoup/parser/a;->e:I

    :goto_0
    iget v15, v3, Lorg/jsoup/parser/a;->e:I

    iget v1, v3, Lorg/jsoup/parser/a;->c:I

    if-ge v15, v1, :cond_7

    iget-object v1, v3, Lorg/jsoup/parser/a;->a:[C

    aget-char v1, v1, v15

    if-lt v1, v11, :cond_4

    if-le v1, v10, :cond_6

    :cond_4
    if-lt v1, v9, :cond_5

    const/16 v9, 0x46

    if-le v1, v9, :cond_6

    :cond_5
    if-lt v1, v8, :cond_7

    const/16 v9, 0x66

    if-gt v1, v9, :cond_7

    :cond_6
    add-int/2addr v15, v2

    iput v15, v3, Lorg/jsoup/parser/a;->e:I

    const/16 v9, 0x41

    goto :goto_0

    :cond_7
    iget-object v1, v3, Lorg/jsoup/parser/a;->a:[C

    iget-object v2, v3, Lorg/jsoup/parser/a;->h:[Ljava/lang/String;

    sub-int/2addr v15, v14

    invoke-static {v1, v2, v14, v15}, Lorg/jsoup/parser/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lorg/jsoup/parser/a;->b()V

    iget v1, v3, Lorg/jsoup/parser/a;->e:I

    :goto_1
    iget v8, v3, Lorg/jsoup/parser/a;->e:I

    iget v9, v3, Lorg/jsoup/parser/a;->c:I

    if-ge v8, v9, :cond_9

    iget-object v9, v3, Lorg/jsoup/parser/a;->a:[C

    aget-char v9, v9, v8

    if-lt v9, v11, :cond_9

    if-gt v9, v10, :cond_9

    add-int/2addr v8, v2

    iput v8, v3, Lorg/jsoup/parser/a;->e:I

    goto :goto_1

    :cond_9
    iget-object v2, v3, Lorg/jsoup/parser/a;->a:[C

    iget-object v9, v3, Lorg/jsoup/parser/a;->h:[Ljava/lang/String;

    sub-int/2addr v8, v1

    invoke-static {v2, v9, v1, v8}, Lorg/jsoup/parser/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    const-string v1, "numeric reference with no numerals"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->x()V

    return-object v5

    :cond_a
    iput v12, v3, Lorg/jsoup/parser/a;->g:I

    invoke-virtual {v3, v6}, Lorg/jsoup/parser/a;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "missing semicolon on [&#%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v4, :cond_c

    const/16 v2, 0x10

    goto :goto_3

    :cond_c
    const/16 v2, 0xa

    :goto_3
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move v1, v12

    :goto_4
    if-eq v1, v12, :cond_10

    const v2, 0xd800

    if-lt v1, v2, :cond_d

    const v2, 0xdfff

    if-le v1, v2, :cond_10

    :cond_d
    const v2, 0x10ffff

    if-le v1, v2, :cond_e

    goto :goto_5

    :cond_e
    const/16 v2, 0x80

    if-lt v1, v2, :cond_f

    const/16 v3, 0xa0

    if-ge v1, v3, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "character [%s] is not a valid unicode code point"

    invoke-virtual {v0, v4, v3}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/jsoup/parser/S;->u:[I

    sub-int/2addr v1, v2

    aget v1, v0, v1

    :cond_f
    aput v1, v13, v7

    goto :goto_6

    :cond_10
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "character [%s] outside of valid range"

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0xfffd

    aput v0, v13, v7

    :goto_6
    return-object v13

    :cond_11
    invoke-virtual {v3}, Lorg/jsoup/parser/a;->b()V

    iget v1, v3, Lorg/jsoup/parser/a;->e:I

    :goto_7
    iget v4, v3, Lorg/jsoup/parser/a;->e:I

    iget v9, v3, Lorg/jsoup/parser/a;->c:I

    if-ge v4, v9, :cond_15

    iget-object v9, v3, Lorg/jsoup/parser/a;->a:[C

    aget-char v4, v9, v4

    const/16 v9, 0x41

    if-lt v4, v9, :cond_12

    const/16 v14, 0x5a

    if-le v4, v14, :cond_14

    :cond_12
    if-lt v4, v8, :cond_13

    const/16 v14, 0x7a

    if-le v4, v14, :cond_14

    :cond_13
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget v4, v3, Lorg/jsoup/parser/a;->e:I

    add-int/2addr v4, v2

    iput v4, v3, Lorg/jsoup/parser/a;->e:I

    goto :goto_7

    :cond_15
    :goto_8
    iget v4, v3, Lorg/jsoup/parser/a;->e:I

    iget v8, v3, Lorg/jsoup/parser/a;->c:I

    if-lt v4, v8, :cond_16

    goto :goto_9

    :cond_16
    iget-object v8, v3, Lorg/jsoup/parser/a;->a:[C

    aget-char v8, v8, v4

    if-lt v8, v11, :cond_17

    if-gt v8, v10, :cond_17

    add-int/2addr v4, v2

    iput v4, v3, Lorg/jsoup/parser/a;->e:I

    goto :goto_8

    :cond_17
    :goto_9
    iget-object v8, v3, Lorg/jsoup/parser/a;->a:[C

    iget-object v9, v3, Lorg/jsoup/parser/a;->h:[Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-static {v8, v9, v1, v4}, Lorg/jsoup/parser/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/a;->r(C)Z

    move-result v4

    sget-object v8, LQd/r;->a:[C

    sget-object v8, LQd/q;->base:LQd/q;

    invoke-virtual {v8, v1}, LQd/q;->a(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_18

    goto :goto_a

    :cond_18
    sget-object v8, LQd/q;->extended:LQd/q;

    invoke-virtual {v8, v1}, LQd/q;->a(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_22

    if-eqz v4, :cond_22

    :goto_a
    if-eqz p2, :cond_1c

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->u()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->n()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_b

    :cond_19
    iget-object v4, v3, Lorg/jsoup/parser/a;->a:[C

    iget v8, v3, Lorg/jsoup/parser/a;->e:I

    aget-char v4, v4, v8

    if-lt v4, v11, :cond_1a

    if-gt v4, v10, :cond_1a

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v4, 0x3

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/a;->s([C)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    :goto_c
    invoke-virtual {v3}, Lorg/jsoup/parser/a;->x()V

    return-object v5

    :cond_1c
    iput v12, v3, Lorg/jsoup/parser/a;->g:I

    invoke-virtual {v3, v6}, Lorg/jsoup/parser/a;->p(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "missing semicolon on [&%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    sget-object v3, LQd/r;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v0, v0, Lorg/jsoup/parser/S;->s:[I

    if-eqz v3, :cond_1e

    invoke-virtual {v3, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    aput v5, v0, v7

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    aput v3, v0, v2

    move v3, v4

    goto :goto_d

    :cond_1e
    sget-object v3, LQd/q;->extended:LQd/q;

    invoke-virtual {v3, v1}, LQd/q;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v12, :cond_1f

    aput v3, v0, v7

    move v3, v2

    goto :goto_d

    :cond_1f
    move v3, v7

    :goto_d
    if-ne v3, v2, :cond_20

    aget v0, v0, v7

    aput v0, v13, v7

    return-object v13

    :cond_20
    if-ne v3, v4, :cond_21

    return-object v0

    :cond_21
    const-string v0, "Unexpected characters returned for "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LOd/c;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    invoke-virtual {v3}, Lorg/jsoup/parser/a;->x()V

    if-eqz v4, :cond_23

    const-string v2, "invalid named reference [%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/parser/S;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    return-object v5

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lorg/jsoup/parser/N;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/S;->i:Lorg/jsoup/parser/M;

    invoke-virtual {p1}, Lorg/jsoup/parser/M;->a1()Lorg/jsoup/parser/N;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/S;->j:Lorg/jsoup/parser/L;

    invoke-virtual {p1}, Lorg/jsoup/parser/N;->a1()Lorg/jsoup/parser/N;

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    return-object p1
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    invoke-static {p0}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final f(C)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/S;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/S;->l:Lorg/jsoup/parser/H;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final g(LF3/f;)V
    .locals 3

    iget-boolean v0, p0, Lorg/jsoup/parser/S;->e:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/jsoup/parser/S;->d:LF3/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/S;->e:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    iput v1, p0, Lorg/jsoup/parser/S;->q:I

    iget-object v1, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jsoup/parser/O;

    sget-object v2, Lorg/jsoup/parser/O;->StartTag:Lorg/jsoup/parser/O;

    if-ne v1, v2, :cond_0

    check-cast p1, Lorg/jsoup/parser/M;

    iget-object p1, p1, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/S;->o:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/S;->p:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/jsoup/parser/O;->EndTag:Lorg/jsoup/parser/O;

    if-ne v1, v2, :cond_1

    check-cast p1, Lorg/jsoup/parser/L;

    invoke-virtual {p1}, Lorg/jsoup/parser/N;->W0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lorg/jsoup/parser/S;->b:Lorg/jsoup/parser/D;

    invoke-virtual {p0}, Lorg/jsoup/parser/D;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LL8/a;

    const-string v2, "Attributes incorrectly present on end tag [/%s]"

    invoke-direct {v1, v0, v2, p1}, LL8/a;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, LOd/c;

    const-string p1, "Must be false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/S;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/S;->l:Lorg/jsoup/parser/H;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final i(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/S;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/S;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/S;->l:Lorg/jsoup/parser/H;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/S;->g(LF3/f;)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/S;->m:Lorg/jsoup/parser/J;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/S;->g(LF3/f;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    iget-boolean v1, v0, Lorg/jsoup/parser/N;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/parser/N;->Z0()V

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/S;->g(LF3/f;)V

    return-void
.end method

.method public final m(Lorg/jsoup/parser/i1;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/S;->b:Lorg/jsoup/parser/D;

    invoke-virtual {v0}, Lorg/jsoup/parser/D;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LL8/a;

    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-direct {v1, p0, v2, p1}, LL8/a;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final n(Lorg/jsoup/parser/i1;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/S;->b:Lorg/jsoup/parser/D;

    invoke-virtual {v0}, Lorg/jsoup/parser/D;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LL8/a;

    iget-object p0, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->l()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, p0, v2, p1}, LL8/a;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/S;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {v0}, Lorg/jsoup/parser/N;->X0()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/jsoup/parser/S;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p(Lorg/jsoup/parser/i1;)V
    .locals 3

    sget-object v0, Lorg/jsoup/parser/Q;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jsoup/parser/S;->a:Lorg/jsoup/parser/a;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jsoup/parser/S;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->w()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/S;->q:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->w()I

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/S;->c:Lorg/jsoup/parser/i1;

    return-void
.end method
