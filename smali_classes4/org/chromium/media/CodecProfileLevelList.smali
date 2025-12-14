.class Lorg/chromium/media/CodecProfileLevelList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;,
        Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/CodecProfileLevelList;->mList:Ljava/util/List;

    return-void
.end method

.method public static getCodecFromMime(Ljava/lang/String;)I
    .locals 1

    const-string v0, "vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "av01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const-string v0, "avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string v0, "hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const-string v0, "dolby-vision"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0
.end method

.method public static mediaCodecLevelToChromiumMediaLevel(II)I
    .locals 23

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v4, 0x0

    const/16 v6, 0x16

    const/16 v7, 0x2a

    const/16 v8, 0x14

    const/16 v9, 0x15

    const/16 v10, 0x1f

    const/16 v11, 0x20

    const/16 v12, 0x28

    const/16 v13, 0x29

    const/16 v14, 0x32

    const/16 v15, 0x33

    const/16 v16, 0x34

    const/16 v17, 0x3d

    const/16 v18, 0x3e

    const/16 v19, 0x1e

    const/16 v20, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12

    const/16 v21, 0x3

    const/16 v22, 0x3f

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :pswitch_0
    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :sswitch_0
    const/16 v0, 0x49

    return v0

    :sswitch_1
    const/16 v0, 0x48

    return v0

    :sswitch_2
    const/16 v0, 0x47

    return v0

    :sswitch_3
    const/16 v0, 0x46

    return v0

    :sswitch_4
    return v22

    :sswitch_5
    return v18

    :sswitch_6
    return v17

    :sswitch_7
    return v20

    :sswitch_8
    const/16 v0, 0x35

    return v0

    :sswitch_9
    return v16

    :sswitch_a
    return v15

    :sswitch_b
    return v14

    :sswitch_c
    const/16 v0, 0x2b

    return v0

    :sswitch_d
    return v7

    :sswitch_e
    return v13

    :sswitch_f
    return v12

    :sswitch_10
    const/16 v0, 0x21

    return v0

    :sswitch_11
    return v11

    :sswitch_12
    return v10

    :sswitch_13
    return v19

    :sswitch_14
    const/16 v0, 0x17

    return v0

    :sswitch_15
    return v6

    :cond_0
    return v9

    :cond_1
    return v8

    :pswitch_1
    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_9

    if-eq v1, v5, :cond_8

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6

    if-eq v1, v11, :cond_5

    const/16 v0, 0x40

    if-eq v1, v0, :cond_4

    const/16 v0, 0x80

    if-eq v1, v0, :cond_3

    const/16 v0, 0x100

    if-ne v1, v0, :cond_2

    const/16 v0, 0x9

    return v0

    :cond_2
    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :cond_3
    const/16 v0, 0x8

    return v0

    :cond_4
    const/4 v0, 0x7

    return v0

    :cond_5
    const/4 v0, 0x6

    return v0

    :cond_6
    const/4 v0, 0x5

    return v0

    :cond_7
    return v5

    :cond_8
    return v21

    :cond_9
    return v2

    :cond_a
    return v3

    :pswitch_2
    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_b

    sparse-switch v1, :sswitch_data_1

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :sswitch_16
    const/16 v0, 0xba

    return v0

    :sswitch_17
    const/16 v0, 0xb7

    return v0

    :sswitch_18
    const/16 v0, 0xb4

    return v0

    :sswitch_19
    const/16 v0, 0x9c

    return v0

    :sswitch_1a
    const/16 v0, 0x99

    return v0

    :sswitch_1b
    const/16 v0, 0x96

    return v0

    :sswitch_1c
    const/16 v0, 0x7b

    return v0

    :sswitch_1d
    const/16 v0, 0x78

    return v0

    :sswitch_1e
    const/16 v0, 0x5d

    return v0

    :sswitch_1f
    const/16 v0, 0x5a

    return v0

    :sswitch_20
    return v22

    :sswitch_21
    return v20

    :cond_b
    return v19

    :pswitch_3
    if-eq v1, v3, :cond_d

    if-eq v1, v2, :cond_c

    sparse-switch v1, :sswitch_data_2

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :sswitch_22
    return v18

    :sswitch_23
    return v17

    :sswitch_24
    return v20

    :sswitch_25
    return v16

    :sswitch_26
    return v15

    :sswitch_27
    return v14

    :sswitch_28
    return v13

    :sswitch_29
    return v12

    :sswitch_2a
    return v10

    :sswitch_2b
    return v19

    :sswitch_2c
    return v9

    :sswitch_2d
    return v8

    :cond_c
    const/16 v0, 0xb

    return v0

    :cond_d
    const/16 v0, 0xa

    return v0

    :pswitch_4
    if-eq v1, v3, :cond_11

    if-eq v1, v2, :cond_10

    if-eq v1, v5, :cond_f

    const/16 v0, 0x8

    if-ne v1, v0, :cond_e

    return v21

    :cond_e
    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :cond_f
    return v2

    :cond_10
    return v3

    :cond_11
    return v4

    :cond_12
    if-eq v1, v3, :cond_14

    if-eq v1, v2, :cond_13

    sparse-switch v1, :sswitch_data_3

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {v0, v4}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw v0

    :sswitch_2e
    return v18

    :sswitch_2f
    return v17

    :sswitch_30
    return v20

    :sswitch_31
    return v16

    :sswitch_32
    return v15

    :sswitch_33
    return v14

    :sswitch_34
    return v7

    :sswitch_35
    return v13

    :sswitch_36
    return v12

    :sswitch_37
    return v11

    :sswitch_38
    return v10

    :sswitch_39
    return v19

    :sswitch_3a
    return v6

    :sswitch_3b
    return v9

    :sswitch_3c
    return v8

    :sswitch_3d
    const/16 v0, 0xd

    return v0

    :sswitch_3e
    const/16 v0, 0xc

    return v0

    :sswitch_3f
    const/16 v0, 0xb

    return v0

    :cond_13
    const/16 v0, 0x9

    return v0

    :cond_14
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x20 -> :sswitch_12
        0x40 -> :sswitch_11
        0x80 -> :sswitch_10
        0x100 -> :sswitch_f
        0x200 -> :sswitch_e
        0x400 -> :sswitch_d
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x400000 -> :sswitch_1
        0x800000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_21
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1f
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_1e
        0x400 -> :sswitch_1d
        0x800 -> :sswitch_1d
        0x1000 -> :sswitch_1c
        0x2000 -> :sswitch_1c
        0x4000 -> :sswitch_1b
        0x8000 -> :sswitch_1b
        0x10000 -> :sswitch_1a
        0x20000 -> :sswitch_1a
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_19
        0x100000 -> :sswitch_18
        0x200000 -> :sswitch_18
        0x400000 -> :sswitch_17
        0x800000 -> :sswitch_17
        0x1000000 -> :sswitch_16
        0x2000000 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_2b
        0x20 -> :sswitch_2a
        0x40 -> :sswitch_29
        0x80 -> :sswitch_28
        0x100 -> :sswitch_27
        0x200 -> :sswitch_26
        0x400 -> :sswitch_25
        0x800 -> :sswitch_24
        0x1000 -> :sswitch_23
        0x2000 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_3f
        0x8 -> :sswitch_3e
        0x10 -> :sswitch_3d
        0x20 -> :sswitch_3c
        0x40 -> :sswitch_3b
        0x80 -> :sswitch_3a
        0x100 -> :sswitch_39
        0x200 -> :sswitch_38
        0x400 -> :sswitch_37
        0x800 -> :sswitch_36
        0x1000 -> :sswitch_35
        0x2000 -> :sswitch_34
        0x4000 -> :sswitch_33
        0x8000 -> :sswitch_32
        0x10000 -> :sswitch_31
        0x20000 -> :sswitch_30
        0x40000 -> :sswitch_2f
        0x80000 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static mediaCodecProfileToChromiumMediaProfile(II)I
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p0, v6, :cond_10

    const/16 v7, 0x2000

    const/16 v8, 0x1000

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :pswitch_0
    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v8, :cond_1

    if-ne p1, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    if-eq p1, v3, :cond_5

    const/16 p0, 0x80

    if-eq p1, p0, :cond_4

    const/16 p0, 0x100

    if-eq p1, p0, :cond_3

    const/16 p0, 0x200

    if-ne p1, p0, :cond_2

    const/16 p0, 0x1c

    return p0

    :cond_2
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_3
    const/16 p0, 0x1b

    return p0

    :cond_4
    const/16 p0, 0x16

    return p0

    :cond_5
    const/16 p0, 0x15

    return p0

    :pswitch_2
    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v8, :cond_8

    if-ne p1, v7, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_7
    const/16 p0, 0x12

    return p0

    :cond_8
    :goto_1
    const/16 p0, 0x11

    return p0

    :cond_9
    return v2

    :pswitch_3
    if-eq p1, v6, :cond_e

    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v8, :cond_c

    if-eq p1, v7, :cond_b

    const/16 p0, 0x4000

    if-ne p1, p0, :cond_a

    goto :goto_2

    :cond_a
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_b
    const/16 p0, 0xf

    return p0

    :cond_c
    :goto_2
    const/16 p0, 0xe

    return p0

    :cond_d
    const/16 p0, 0xd

    return p0

    :cond_e
    const/16 p0, 0xc

    return p0

    :pswitch_4
    if-ne p1, v6, :cond_f

    const/16 p0, 0xb

    return p0

    :cond_f
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_10
    if-eq p1, v6, :cond_18

    if-eq p1, v5, :cond_17

    if-eq p1, v4, :cond_16

    if-eq p1, v1, :cond_15

    if-eq p1, v2, :cond_14

    if-eq p1, v3, :cond_13

    const/16 p0, 0x40

    if-eq p1, p0, :cond_12

    const/high16 p0, 0x10000

    if-eq p1, p0, :cond_18

    const/high16 p0, 0x80000

    if-ne p1, p0, :cond_11

    goto :goto_3

    :cond_11
    new-instance p0, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;

    invoke-direct {p0, v0}, Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException;-><init>(I)V

    throw p0

    :cond_12
    const/4 p0, 0x6

    return p0

    :cond_13
    const/4 p0, 0x5

    return p0

    :cond_14
    return v4

    :cond_15
    :goto_3
    const/4 p0, 0x3

    return p0

    :cond_16
    return v5

    :cond_17
    return v6

    :cond_18
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCodecProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Lorg/chromium/media/CodecProfileLevelList;->getCodecFromMime(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/media/CodecProfileLevelList;->mList:Ljava/util/List;

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;

    iget v1, p2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {p1, v1}, Lorg/chromium/media/CodecProfileLevelList;->mediaCodecProfileToChromiumMediaProfile(II)I

    move-result v1

    iget p2, p2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {p1, p2}, Lorg/chromium/media/CodecProfileLevelList;->mediaCodecLevelToChromiumMediaLevel(II)I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/chromium/media/CodecProfileLevelList$UnsupportedCodecProfileException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CodecProfileLevelList;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
