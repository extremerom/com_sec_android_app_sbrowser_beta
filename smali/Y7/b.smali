.class public final LY7/b;
.super LY7/u;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LY7/b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "via="

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static i([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x3

    if-gt v2, v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    invoke-static {v5, p1, v6, v0}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    return-object v1

    :cond_3
    sget-object p0, LY7/u;->e:[Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, LY7/A;->k(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final e(Lcom/samsung/android/motionphoto/utils/ex/e;)LY7/r;
    .locals 38

    move-object/from16 v0, p1

    const/16 v2, 0x11

    const/16 v3, 0x8

    const/16 v4, 0x3a

    const/16 v5, 0x3f

    const/16 v6, 0x3b

    const/16 v7, 0xd

    const/4 v8, -0x1

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    iget v1, v1, LY7/b;->f:I

    packed-switch v1, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "I:"

    const-string v3, "H:"

    if-eqz v1, :cond_3

    sget-object v23, LY7/F;->WIFI:LY7/F;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "S:"

    invoke-static {v4, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "P:"

    invoke-static {v4, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v20

    const-string v4, "T:"

    invoke-static {v4, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "nopass"

    :cond_1
    move-object/from16 v18, v4

    invoke-static {v3, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    const-string v2, "A:"

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    const-string v2, "E:"

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    invoke-static {v3, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    new-instance v15, LY7/E;

    move-object/from16 v17, v15

    move-object/from16 v22, v0

    invoke-direct/range {v17 .. v23}, LY7/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;LY7/F;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "DPP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "C:"

    invoke-static {v4, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v18

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v20

    const-string v2, "M:"

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v19

    const-string v2, "K:"

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "V:"

    invoke-static {v2, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v22

    invoke-static {v3, v1, v6, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v23

    new-instance v15, LY7/D;

    move-object/from16 v17, v15

    move-object/from16 v24, v0

    invoke-direct/range {v17 .. v24}, LY7/D;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v15

    :pswitch_0
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5

    :catch_0
    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_5
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "DTSTART"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "DTEND"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "DURATION"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "LOCATION"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAILTO:"

    const-string v3, "mailto:"

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object/from16 v22, v1

    const-string v1, "ATTENDEE"

    invoke-static {v1, v0, v15, v14}, LY7/A;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v7, v14

    :goto_3
    if-ge v7, v4, :cond_b

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v7

    add-int/2addr v7, v15

    goto :goto_3

    :cond_a
    :goto_4
    const/4 v5, 0x0

    :cond_b
    if-eqz v5, :cond_e

    move v1, v14

    :goto_5
    array-length v4, v5

    if-ge v1, v4, :cond_e

    aget-object v4, v5, v1

    if-eqz v4, :cond_d

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_d
    aput-object v4, v5, v1

    add-int/2addr v1, v15

    goto :goto_5

    :cond_e
    const-string v1, "DESCRIPTION"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "GEO"

    invoke-static {v1, v0}, LY7/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    :try_start_0
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    :try_start_1
    new-instance v0, LY7/g;

    move-object/from16 v16, v0

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v24}, LY7/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v0

    :goto_7
    return-object v15

    :pswitch_1
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TEL:"

    if-nez v2, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object v1, v0

    :goto_8
    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_13

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_9
    new-instance v15, LY7/w;

    invoke-direct {v15, v0, v1}, LY7/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-object v15

    :pswitch_2
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v15, 0x0

    goto :goto_d

    :cond_14
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_16

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_15

    add-int/2addr v15, v1

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v6, v15

    goto :goto_c

    :cond_15
    move-object v5, v2

    :goto_b
    const/4 v6, 0x0

    goto :goto_c

    :cond_16
    const/4 v5, 0x0

    goto :goto_b

    :goto_c
    new-instance v15, LY7/h;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, LY7/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-object v15

    :pswitch_3
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "SMSTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mmsto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "MMSTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v15, 0x0

    goto :goto_f

    :cond_17
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_18

    add-int/2addr v15, v1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_18
    const/4 v15, 0x0

    :goto_e
    new-instance v1, LY7/v;

    invoke-direct {v1, v0, v15}, LY7/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    :goto_f
    return-object v15

    :pswitch_4
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "SMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "mms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v15, 0x0

    goto :goto_14

    :cond_19
    invoke-static {v0}, LY7/u;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "body"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v14, v15

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_1c

    if-nez v14, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1c
    :goto_11
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_13
    add-int/lit8 v5, v8, 0x1

    const/16 v6, 0x2c

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-le v6, v8, :cond_1d

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, LY7/b;->h(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v8, v6

    goto :goto_13

    :cond_1d
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, LY7/b;->h(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v15, LY7/v;

    sget-object v0, LY7/u;->e:[Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v15, v3, v2, v0, v1}, LY7/v;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-object v15

    :pswitch_5
    sget-object v1, LX7/a;->UPC_A:LX7/a;

    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v2, LX7/a;

    if-eq v2, v1, :cond_1f

    sget-object v1, LX7/a;->UPC_E:LX7/a;

    if-eq v2, v1, :cond_1f

    sget-object v1, LX7/a;->EAN_8:LX7/a;

    if-eq v2, v1, :cond_1f

    sget-object v1, LX7/a;->EAN_13:LX7/a;

    if-eq v2, v1, :cond_1f

    :cond_1e
    const/4 v15, 0x0

    goto :goto_15

    :cond_1f
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1e

    sget-object v1, LY7/u;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, LX7/a;->UPC_E:LX7/a;

    if-ne v2, v1, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_20

    new-array v1, v10, [C

    invoke-virtual {v0, v15, v9, v1, v14}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_20

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    :cond_20
    new-instance v15, LY7/p;

    invoke-direct {v15, v0, v12}, LY7/p;-><init>(Ljava/lang/String;I)V

    :goto_15
    return-object v15

    :pswitch_6
    const-string v1, "fido:"

    iget-object v0, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "FIDO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    :goto_16
    const/4 v15, 0x0

    goto/16 :goto_1e

    :cond_21
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "^[-\\+]?[\\d]*$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_16

    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v14

    :goto_17
    if-ge v5, v4, :cond_26

    add-int/lit8 v6, v5, 0x11

    if-le v6, v4, :cond_23

    move v7, v4

    goto :goto_18

    :cond_23
    move v7, v6

    :goto_18
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "%x"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/2addr v7, v12

    if-ne v7, v15, :cond_24

    const-string v7, "0"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v12

    :goto_19
    if-le v7, v8, :cond_25

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v3, v5, v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x2

    goto :goto_19

    :cond_25
    move v5, v6

    goto :goto_17

    :cond_26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v12

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-array v3, v2, [B

    move v4, v14

    :goto_1a
    if-ge v4, v2, :cond_27

    mul-int/lit8 v5, v4, 0x2

    aget-char v6, v1, v5

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    int-to-byte v6, v6

    shl-int/2addr v6, v13

    add-int/2addr v5, v15

    aget-char v5, v1, v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/2addr v4, v15

    goto :goto_1a

    :cond_27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Luc/m;

    invoke-direct {v3, v2}, Luc/m;-><init>(Ljava/io/ByteArrayInputStream;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_1b
    invoke-virtual {v3}, Luc/m;->c()Ly3/e;

    move-result-object v4

    if-nez v4, :cond_2a

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e;

    iget-object v3, v2, Ly3/e;->a:Ly3/i;

    sget-object v4, Ly3/i;->MAP:Ly3/i;

    if-ne v3, v4, :cond_2b

    check-cast v2, Ly3/j;

    iget-object v3, v2, Ly3/j;->e:Ljava/util/LinkedList;

    :goto_1c
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v14, v4, :cond_2b

    invoke-virtual {v3, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e;

    iget-object v5, v2, Ly3/j;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e;

    iget-object v5, v4, Ly3/e;->a:Ly3/i;

    sget-object v6, Ly3/i;->BYTE_STRING:Ly3/i;

    if-ne v5, v6, :cond_29

    check-cast v4, Ly3/c;

    iget-object v4, v4, Ly3/c;->d:[B

    if-nez v4, :cond_28

    const/4 v4, 0x0

    :cond_28
    invoke-static {v4}, LY7/b;->i([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_29
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v14, v15

    goto :goto_1c

    :cond_2a
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lw3/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1b

    :catch_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "CborException"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_16

    :cond_2c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ga"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "mc"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_16

    :cond_2d
    new-instance v15, LY7/p;

    invoke-direct {v15, v0, v1}, LY7/p;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_1e
    return-object v15

    :pswitch_7
    sget-object v1, LX7/a;->EAN_13:LX7/a;

    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v2, LX7/a;

    if-eq v2, v1, :cond_2e

    :goto_1f
    const/4 v15, 0x0

    goto :goto_20

    :cond_2e
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v7, :cond_2f

    goto :goto_1f

    :cond_2f
    const-string v1, "978"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "979"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_1f

    :cond_30
    new-instance v15, LY7/p;

    invoke-direct {v15, v0, v14}, LY7/p;-><init>(Ljava/lang/String;I)V

    :goto_20
    return-object v15

    :pswitch_8
    sget-object v1, LX7/a;->RSS_EXPANDED:LX7/a;

    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v4, LX7/a;

    if-eq v4, v1, :cond_31

    :goto_21
    const/4 v15, 0x0

    goto/16 :goto_2a

    :cond_31
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v4, v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    invoke-static {v4, v0}, LY7/b;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_32

    goto :goto_21

    :cond_32
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v12

    add-int/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v3, v14

    :goto_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_35

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_34

    invoke-static {v3, v2}, LY7/b;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_33

    goto :goto_25

    :cond_33
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_34
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    add-int/2addr v3, v15

    const/4 v9, 0x7

    goto :goto_23

    :cond_35
    :goto_25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v3, v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_26
    const/4 v3, -0x1

    goto/16 :goto_27

    :sswitch_0
    const-string v3, "3933"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_26

    :cond_36
    const/16 v3, 0x22

    goto/16 :goto_27

    :sswitch_1
    const-string v3, "3932"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_26

    :cond_37
    const/16 v3, 0x21

    goto/16 :goto_27

    :sswitch_2
    const-string v3, "3931"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_26

    :cond_38
    const/16 v3, 0x20

    goto/16 :goto_27

    :sswitch_3
    const-string v3, "3930"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_26

    :cond_39
    const/16 v3, 0x1f

    goto/16 :goto_27

    :sswitch_4
    const-string v3, "3923"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_26

    :cond_3a
    const/16 v3, 0x1e

    goto/16 :goto_27

    :sswitch_5
    const-string v3, "3922"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_26

    :cond_3b
    const/16 v3, 0x1d

    goto/16 :goto_27

    :sswitch_6
    const-string v3, "3921"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_26

    :cond_3c
    const/16 v3, 0x1c

    goto/16 :goto_27

    :sswitch_7
    const-string v3, "3920"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_26

    :cond_3d
    const/16 v3, 0x1b

    goto/16 :goto_27

    :sswitch_8
    const-string v3, "3209"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_26

    :cond_3e
    const/16 v3, 0x1a

    goto/16 :goto_27

    :sswitch_9
    const-string v3, "3208"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_26

    :cond_3f
    const/16 v3, 0x19

    goto/16 :goto_27

    :sswitch_a
    const-string v3, "3207"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_26

    :cond_40
    const/16 v3, 0x18

    goto/16 :goto_27

    :sswitch_b
    const-string v3, "3206"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_26

    :cond_41
    const/16 v3, 0x17

    goto/16 :goto_27

    :sswitch_c
    const-string v3, "3205"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_26

    :cond_42
    const/16 v3, 0x16

    goto/16 :goto_27

    :sswitch_d
    const-string v3, "3204"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_26

    :cond_43
    const/16 v3, 0x15

    goto/16 :goto_27

    :sswitch_e
    const-string v3, "3203"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_26

    :cond_44
    const/16 v3, 0x14

    goto/16 :goto_27

    :sswitch_f
    const-string v3, "3202"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_26

    :cond_45
    const/16 v3, 0x13

    goto/16 :goto_27

    :sswitch_10
    const-string v3, "3201"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_26

    :cond_46
    const/16 v3, 0x12

    goto/16 :goto_27

    :sswitch_11
    const-string v3, "3200"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_26

    :cond_47
    const/16 v3, 0x11

    goto/16 :goto_27

    :sswitch_12
    const-string v3, "3109"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_26

    :cond_48
    const/16 v3, 0x10

    goto/16 :goto_27

    :sswitch_13
    const-string v3, "3108"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_26

    :cond_49
    const/16 v3, 0xf

    goto/16 :goto_27

    :sswitch_14
    const-string v3, "3107"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_26

    :cond_4a
    const/16 v3, 0xe

    goto/16 :goto_27

    :sswitch_15
    const-string v3, "3106"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_26

    :cond_4b
    move v3, v7

    goto/16 :goto_27

    :sswitch_16
    const-string v3, "3105"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_26

    :cond_4c
    const/16 v3, 0xc

    goto/16 :goto_27

    :sswitch_17
    const-string v3, "3104"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_26

    :cond_4d
    const/16 v3, 0xb

    goto/16 :goto_27

    :sswitch_18
    const-string v3, "3103"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_26

    :cond_4e
    const/16 v3, 0xa

    goto/16 :goto_27

    :sswitch_19
    const-string v3, "3102"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_26

    :cond_4f
    const/16 v3, 0x9

    goto/16 :goto_27

    :sswitch_1a
    const-string v3, "3101"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_26

    :cond_50
    const/16 v3, 0x8

    goto/16 :goto_27

    :sswitch_1b
    const-string v3, "3100"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto/16 :goto_26

    :cond_51
    const/4 v3, 0x7

    goto :goto_27

    :sswitch_1c
    const-string v3, "17"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto/16 :goto_26

    :cond_52
    move v3, v10

    goto :goto_27

    :sswitch_1d
    const-string v3, "15"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_26

    :cond_53
    move v3, v11

    goto :goto_27

    :sswitch_1e
    const-string v3, "13"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto/16 :goto_26

    :cond_54
    move v3, v13

    goto :goto_27

    :sswitch_1f
    const-string v3, "11"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_26

    :cond_55
    const/4 v3, 0x3

    goto :goto_27

    :sswitch_20
    const-string v3, "10"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto/16 :goto_26

    :cond_56
    move v3, v12

    goto :goto_27

    :sswitch_21
    const-string v3, "01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto/16 :goto_26

    :cond_57
    move v3, v15

    goto :goto_27

    :sswitch_22
    const-string v3, "00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_26

    :cond_58
    move v3, v14

    :goto_27
    packed-switch v3, :pswitch_data_1

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_9
    const/4 v3, 0x3

    goto :goto_29

    :pswitch_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v13, :cond_59

    goto/16 :goto_21

    :cond_59
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_29

    :pswitch_b
    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v28, v2

    goto :goto_29

    :pswitch_c
    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    const-string v26, "LB"

    :goto_28
    move-object/from16 v25, v2

    goto :goto_29

    :pswitch_d
    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    const-string v26, "KG"

    goto :goto_28

    :pswitch_e
    const/4 v3, 0x3

    move-object/from16 v24, v2

    goto :goto_29

    :pswitch_f
    const/4 v3, 0x3

    move-object/from16 v23, v2

    goto :goto_29

    :pswitch_10
    const/4 v3, 0x3

    move-object/from16 v22, v2

    goto :goto_29

    :pswitch_11
    const/4 v3, 0x3

    move-object/from16 v21, v2

    goto :goto_29

    :pswitch_12
    const/4 v3, 0x3

    move-object/from16 v19, v2

    goto :goto_29

    :pswitch_13
    const/4 v3, 0x3

    move-object/from16 v20, v2

    :goto_29
    const/16 v2, 0x11

    const/16 v3, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x7

    goto/16 :goto_22

    :cond_5a
    new-instance v15, LY7/m;

    move-object/from16 v17, v15

    move-object/from16 v18, v0

    move-object/from16 v31, v1

    invoke-direct/range {v17 .. v31}, LY7/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_2a
    return-object v15

    :pswitch_14
    invoke-static/range {p1 .. p1}, LY7/u;->a(Lcom/samsung/android/motionphoto/utils/ex/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_2c

    :cond_5b
    const-string v1, "NAME1:"

    invoke-static {v1, v0, v7, v15}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAME2:"

    invoke-static {v2, v0, v7, v15}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v21

    const-string v2, "TEL"

    invoke-static {v2, v0}, LY7/b;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const-string v2, "MAIL"

    invoke-static {v2, v0}, LY7/b;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const-string v2, "MEMORY:"

    invoke-static {v2, v0, v7, v14}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v27

    const-string v2, "ADD:"

    invoke-static {v2, v0, v7, v15}, LY7/u;->c(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    const/16 v28, 0x0

    goto :goto_2b

    :cond_5c
    new-array v15, v15, [Ljava/lang/String;

    aput-object v0, v15, v14

    move-object/from16 v28, v15

    :goto_2b
    new-instance v15, LY7/d;

    move-object/from16 v16, v15

    invoke-static {v1}, LY7/u;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v16 .. v37}, LY7/d;-><init>([Ljava/lang/String;[LY7/q;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LY7/f;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[LY7/e;[LY7/l;)V

    goto :goto_2d

    :cond_5d
    :goto_2c
    const/4 v15, 0x0

    :goto_2d
    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
