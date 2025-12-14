.class public final Lhd/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lhd/z;->b:Ljava/lang/String;

    iput-object v0, p0, Lhd/z;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lhd/z;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhd/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lhd/A;
    .locals 14

    iget-object v1, p0, Lhd/z;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lhd/z;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v2, v2, v0, v2, v3}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lhd/z;->c:Ljava/lang/String;

    invoke-static {v2, v2, v0, v2, v3}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhd/z;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lhd/z;->b()I

    move-result v7

    iget-object v0, p0, Lhd/z;->f:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v2, v2, v10, v2, v3}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhd/z;->g:Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v13, v2, v9, v2, v12}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    move-object v9, v10

    :goto_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v11, v10

    :cond_3
    iget-object v0, p0, Lhd/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v2, v2, v0, v2, v3}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :cond_4
    invoke-virtual {p0}, Lhd/z;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p0, Lhd/A;

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lhd/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "host == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "scheme == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lhd/z;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lhd/z;->a:Ljava/lang/String;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x50

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_1
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public final c(Lhd/A;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    const/4 v2, 0x6

    const/4 v12, 0x1

    const-string v3, "input"

    invoke-static {v11, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lid/b;->a:[B

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-static {v13, v3, v11}, Lid/b;->m(IILjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, v11}, Lid/b;->n(IILjava/lang/String;)I

    move-result v14

    sub-int v4, v14, v3

    const/4 v15, -0x1

    const/16 v10, 0x5b

    const/4 v5, 0x2

    const/16 v9, 0x3a

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    move v4, v15

    goto :goto_3

    :cond_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x61

    invoke-static {v4, v6}, Ltb/k;->h(II)I

    move-result v7

    const/16 v8, 0x41

    if-ltz v7, :cond_2

    const/16 v7, 0x7a

    invoke-static {v4, v7}, Ltb/k;->h(II)I

    move-result v7

    if-lez v7, :cond_3

    :cond_2
    invoke-static {v4, v8}, Ltb/k;->h(II)I

    move-result v7

    if-ltz v7, :cond_0

    const/16 v7, 0x5a

    invoke-static {v4, v7}, Ltb/k;->h(II)I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v3, 0x1

    :goto_1
    if-ge v4, v14, :cond_0

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v6, v7, :cond_4

    const/16 v6, 0x7b

    if-ge v7, v6, :cond_4

    goto :goto_2

    :cond_4
    if-gt v8, v7, :cond_5

    if-ge v7, v10, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x30

    if-gt v6, v7, :cond_6

    if-ge v7, v9, :cond_6

    goto :goto_2

    :cond_6
    const/16 v6, 0x2b

    if-ne v7, v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v6, 0x2d

    if-ne v7, v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0x2e

    if-ne v7, v6, :cond_9

    :goto_2
    add-int/2addr v4, v12

    const/16 v6, 0x61

    goto :goto_1

    :cond_9
    if-ne v7, v9, :cond_0

    :goto_3
    const-string v8, "http"

    const-string v7, "https"

    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eq v4, v15, :cond_c

    const-string v10, "https:"

    invoke-static {v3, v11, v10, v12}, LKc/r;->m(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    iput-object v7, v0, Lhd/z;->a:Ljava/lang/String;

    add-int/2addr v3, v2

    goto :goto_4

    :cond_a
    const-string v2, "http:"

    invoke-static {v3, v11, v2, v12}, LKc/r;->m(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v8, v0, Lhd/z;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eqz v1, :cond_33

    iget-object v2, v1, Lhd/A;->a:Ljava/lang/String;

    iput-object v2, v0, Lhd/z;->a:Ljava/lang/String;

    :goto_4
    move v2, v3

    move v4, v13

    :goto_5
    const/16 v10, 0x2f

    const/16 v13, 0x5c

    if-ge v2, v14, :cond_e

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_d

    if-ne v9, v10, :cond_e

    :cond_d
    add-int/2addr v4, v12

    add-int/2addr v2, v12

    const/16 v9, 0x3a

    const/4 v13, 0x0

    goto :goto_5

    :cond_e
    iget-object v9, v0, Lhd/z;->f:Ljava/util/ArrayList;

    const/16 v12, 0x23

    if-ge v4, v5, :cond_13

    if-eqz v1, :cond_13

    iget-object v5, v0, Lhd/z;->a:Ljava/lang/String;

    iget-object v2, v1, Lhd/A;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lhd/A;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhd/z;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lhd/A;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhd/z;->c:Ljava/lang/String;

    iget-object v2, v1, Lhd/A;->d:Ljava/lang/String;

    iput-object v2, v0, Lhd/z;->d:Ljava/lang/String;

    iget v2, v1, Lhd/A;->e:I

    iput v2, v0, Lhd/z;->e:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Lhd/A;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v14, :cond_10

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_12

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lhd/A;->d()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_11

    const/16 v25, 0x1

    const/16 v28, 0xd3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, " \"\'<>#"

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v19 .. v28}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhd/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    iput-object v1, v0, Lhd/z;->g:Ljava/util/ArrayList;

    :cond_12
    move-object/from16 p1, v9

    move/from16 v18, v14

    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_13
    :goto_7
    add-int/2addr v3, v4

    move v5, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_8
    const-string v1, "@/\\?#"

    invoke-static {v5, v11, v14, v1}, Lid/b;->e(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eq v4, v14, :cond_14

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    :cond_14
    move v1, v15

    :goto_9
    if-eq v1, v15, :cond_19

    if-eq v1, v12, :cond_19

    if-eq v1, v10, :cond_19

    if-eq v1, v13, :cond_19

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_19

    const/16 v3, 0x40

    if-eq v1, v3, :cond_15

    goto :goto_8

    :cond_15
    const-string v3, "%40"

    if-nez v19, :cond_18

    const/16 v1, 0x3a

    invoke-static {v11, v1, v5, v4}, Lid/b;->f(Ljava/lang/String;CII)I

    move-result v12

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xf0

    move/from16 v27, v1

    move-object/from16 v1, p2

    move v2, v5

    move-object v5, v3

    move v3, v12

    move v13, v4

    move-object/from16 v4, v22

    move-object v15, v5

    move/from16 v5, v23

    move-object/from16 v29, v6

    move/from16 v6, v24

    move-object/from16 v30, v7

    move/from16 v7, v25

    move-object/from16 v31, v8

    move/from16 v8, v18

    move-object/from16 p1, v9

    move-object/from16 v9, v21

    move/from16 v18, v14

    const/16 v14, 0x5b

    move/from16 v10, v26

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v20, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lhd/z;->b:Ljava/lang/String;

    invoke-static {v2, v3, v15, v1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    iput-object v1, v0, Lhd/z;->b:Ljava/lang/String;

    if-eq v12, v13, :cond_17

    const/4 v1, 0x1

    add-int/lit8 v2, v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0xf0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->c:Ljava/lang/String;

    const/16 v19, 0x1

    :cond_17
    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_a

    :cond_18
    move-object v15, v3

    move v13, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 p1, v9

    move/from16 v18, v14

    const/16 v14, 0x5b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lhd/z;->c:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xf0

    move-object/from16 v1, p2

    move v2, v5

    move v3, v13

    move v5, v6

    move v6, v7

    move v7, v10

    move v10, v15

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->c:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_a
    add-int/lit8 v5, v13, 0x1

    move-object/from16 v9, p1

    move/from16 v14, v18

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    const/16 v10, 0x2f

    const/16 v12, 0x23

    const/16 v13, 0x5c

    const/4 v15, -0x1

    goto/16 :goto_8

    :cond_19
    move v13, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 p1, v9

    move/from16 v18, v14

    const/16 v14, 0x5b

    move v4, v5

    :goto_b
    if-ge v4, v13, :cond_1e

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    add-int/2addr v4, v1

    if-ge v4, v13, :cond_1b

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1a

    :cond_1b
    const/4 v1, 0x1

    const/16 v2, 0x3a

    goto :goto_c

    :cond_1c
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1d

    move v12, v4

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 v1, 0x1

    :goto_c
    add-int/2addr v4, v1

    goto :goto_b

    :cond_1e
    const/4 v1, 0x1

    move v12, v13

    :goto_d
    add-int/lit8 v14, v12, 0x1

    const/4 v1, 0x4

    const/16 v15, 0x22

    if-ge v14, v13, :cond_21

    const/4 v2, 0x0

    invoke-static {v2, v5, v11, v12, v1}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG5/Q3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->d:Ljava/lang/String;

    :try_start_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0xf8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move v2, v14

    move v3, v13

    move/from16 v32, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v9, v16

    :try_start_1
    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_1f

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_1f

    goto :goto_e

    :catch_0
    move/from16 v32, v5

    :catch_1
    :cond_1f
    const/4 v1, -0x1

    :goto_e
    iput v1, v0, Lhd/z;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    move-object/from16 v3, v29

    move/from16 v5, v32

    const/4 v14, 0x0

    goto :goto_10

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URL port: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move-object/from16 v3, v29

    const/4 v2, -0x1

    const/4 v14, 0x0

    invoke-static {v14, v5, v11, v12, v1}, Lhd/b;->e(ZILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG5/Q3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->d:Ljava/lang/String;

    iget-object v1, v0, Lhd/z;->a:Ljava/lang/String;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    move-object/from16 v4, v31

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v1, 0x50

    goto :goto_f

    :cond_22
    move-object/from16 v4, v30

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x1bb

    goto :goto_f

    :cond_23
    move v1, v2

    :goto_f
    iput v1, v0, Lhd/z;->e:I

    :goto_10
    iget-object v1, v0, Lhd/z;->d:Ljava/lang/String;

    if-eqz v1, :cond_32

    move v3, v13

    :goto_11
    const-string v1, "?#"

    move/from16 v12, v18

    invoke-static {v3, v11, v12, v1}, Lid/b;->e(ILjava/lang/String;ILjava/lang/String;)I

    move-result v13

    if-ne v3, v13, :cond_25

    :cond_24
    const/4 v2, 0x1

    goto/16 :goto_1b

    :cond_25
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v15, ""

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_26

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_27

    :cond_26
    move-object/from16 v10, p1

    const/4 v2, 0x1

    goto :goto_12

    :cond_27
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v10, p1

    invoke-virtual {v10, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :goto_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    :goto_13
    move v2, v3

    :goto_14
    if-ge v2, v13, :cond_24

    const-string v1, "/\\"

    invoke-static {v2, v11, v13, v1}, Lid/b;->e(ILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-ge v9, v13, :cond_28

    const/16 v16, 0x1

    goto :goto_15

    :cond_28
    move/from16 v16, v14

    :goto_15
    const/4 v8, 0x0

    const/16 v17, 0x0

    const-string v4, " \"<>^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0xf0

    move-object/from16 v1, p2

    move v3, v9

    move/from16 v19, v9

    move-object/from16 v9, v17

    move-object v14, v10

    move/from16 v10, v18

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_17

    :cond_29
    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "%2e."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, ".%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "%2e%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_18

    :cond_2a
    const/4 v2, 0x1

    invoke-static {v2, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v14, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    if-eqz v16, :cond_2c

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_17
    const/4 v2, 0x1

    goto :goto_19

    :cond_2d
    :goto_18
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v14, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2e
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    if-eqz v16, :cond_2f

    add-int/lit8 v1, v19, 0x1

    move v2, v1

    move-object v10, v14

    :goto_1a
    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_2f
    move-object v10, v14

    move/from16 v2, v19

    goto :goto_1a

    :goto_1b
    if-ge v13, v12, :cond_30

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_30

    const/16 v1, 0x23

    invoke-static {v11, v1, v13, v12}, Lid/b;->f(Ljava/lang/String;CII)I

    move-result v14

    add-int/lit8 v3, v13, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v10, 0xd0

    move-object/from16 v1, p2

    move v2, v3

    move v3, v14

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhd/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->g:Ljava/util/ArrayList;

    move v13, v14

    :cond_30
    if-ge v13, v12, :cond_31

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_31

    const/4 v1, 0x1

    add-int/lit8 v2, v13, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0xb0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v10}, Lhd/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhd/z;->h:Ljava/lang/String;

    :cond_31
    return-void

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URL host: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_34

    invoke-static {v2, v11}, LKc/k;->P(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_34
    move-object v0, v11

    :goto_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v2, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhd/z;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lhd/z;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lhd/z;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lhd/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhd/z;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhd/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lhd/z;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, LKc/k;->p(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhd/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lhd/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lhd/z;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lhd/z;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {p0}, Lhd/z;->b()I

    move-result v1

    iget-object v4, p0, Lhd/z;->a:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x50

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x1bb

    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lhd/z;->f:Ljava/util/ArrayList;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_b

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lhd/z;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhd/z;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lhd/b;->g(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_c
    iget-object v1, p0, Lhd/z;->h:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lhd/z;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
