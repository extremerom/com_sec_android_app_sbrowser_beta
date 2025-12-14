.class public final Lcom/samsung/android/motionphoto/utils/ex/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/FileInputStream;

.field public final b:Ljava/util/Vector;

.field public final c:Ljava/util/Vector;

.field public final d:Ljava/util/Vector;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->d:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->g:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->h:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->i:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->j:I

    return-void
.end method

.method public static a([B)J
    .locals 8

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    int-to-long v0, v0

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    :cond_1
    int-to-long v2, v2

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    if-gez v4, :cond_2

    add-int/lit16 v4, v4, 0x100

    :cond_2
    int-to-long v4, v4

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    if-gez p0, :cond_3

    add-int/lit16 p0, p0, 0x100

    :cond_3
    int-to-long v6, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    const/16 p0, 0x8

    shl-long v2, v4, p0

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0
.end method

.method public static b([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    const/4 v1, 0x1

    aget-byte p0, p0, v1

    if-gez p0, :cond_1

    add-int/lit16 p0, p0, 0x100

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(Ljava/io/FileInputStream;)J
    .locals 14

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, v0, v6

    const-string v9, "HEIFParser"

    if-lez v8, :cond_3

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eq v10, v2, :cond_0

    return-wide v4

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v10

    :try_start_1
    invoke-virtual {p0, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v8, v2, :cond_1

    return-wide v4

    :cond_1
    const-wide/16 v12, 0x8

    add-long/2addr v6, v12

    sub-long/2addr v10, v12

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    const-string v12, "mpvd"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string p0, "Found mpvd:)"

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :cond_2
    const-string v12, "parsing-- "

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-long/2addr v6, v10

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v9}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-wide v4

    :catch_1
    const-string p0, "read fail"

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    return-wide v4

    :cond_3
    const-string p0, "///Finished parsing, filesize:"

    const-string v2, " offset:"

    invoke-static {v0, v1, p0, v2}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method


# virtual methods
.method public final c(Ljava/io/FileInputStream;)Lcom/samsung/android/motionphoto/utils/ex/h;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "HEIFParser"

    iput-object v2, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v4, 0x4

    new-array v5, v4, [B

    :goto_0
    iget v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->g:I

    iget-object v6, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->d:Ljava/util/Vector;

    iget-object v7, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->c:Ljava/util/Vector;

    iget-object v8, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->b:Ljava/util/Vector;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ne v0, v9, :cond_5

    iget v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->h:I

    if-ne v0, v9, :cond_5

    iget v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->i:I

    if-ne v0, v9, :cond_5

    iget v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->j:I

    if-eq v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v10

    :cond_1
    move v0, v11

    :goto_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v7, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/motionphoto/utils/ex/b;

    iget-object v4, v3, Lcom/samsung/android/motionphoto/utils/ex/b;->b:Ljava/util/Vector;

    invoke-virtual {v4, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v3, v3, Lcom/samsung/android/motionphoto/utils/ex/b;->a:I

    iget v5, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->e:I

    if-ne v4, v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v11

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/motionphoto/utils/ex/a;

    iget-wide v12, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->a:J

    int-to-long v14, v3

    cmp-long v9, v12, v14

    if-nez v9, :cond_2

    iget-wide v0, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->d:J

    long-to-int v0, v0

    new-array v0, v0, [B

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-wide v3, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->b:J

    iget-wide v6, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->c:J

    add-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-wide v3, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->d:J

    long-to-int v1, v3

    invoke-virtual {v2, v0, v11, v1}, Ljava/io/FileInputStream;->read([BII)I

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/h;

    iget-wide v2, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->b:J

    iget-wide v6, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->c:J

    add-long v13, v2, v6

    iget-wide v2, v5, Lcom/samsung/android/motionphoto/utils/ex/a;->d:J

    move-object v12, v1

    move-wide v15, v2

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/motionphoto/utils/ex/h;-><init>(JJ[B)V

    return-object v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v10

    :cond_5
    :goto_3
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, v5, v11, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    if-eq v0, v4, :cond_6

    return-object v10

    :cond_6
    invoke-static {v5}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v12

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, v5, v11, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    if-eq v0, v4, :cond_7

    return-object v10

    :cond_7
    const-wide/16 v14, 0x8

    sub-long v9, v12, v14

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    const-string v14, "iinf"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-wide/16 v20, 0xc

    move-wide/from16 v22, v12

    const/4 v13, 0x2

    const-string v15, "Exception: "

    if-eqz v14, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/ex/c;->e()I

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_a

    :cond_8
    new-array v0, v4, [B

    iget v6, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-nez v6, :cond_9

    move v6, v13

    goto :goto_4

    :cond_9
    move v6, v4

    :goto_4
    :try_start_2
    iget-object v7, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v7, v6, :cond_a

    goto/16 :goto_a

    :cond_a
    if-ne v6, v13, :cond_b

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v6

    goto :goto_5

    :cond_b
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_16

    :try_start_3
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v9, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eq v10, v4, :cond_c

    goto/16 :goto_a

    :cond_c
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v22

    :try_start_4
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v10, v0, v9, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eq v10, v4, :cond_d

    goto/16 :goto_a

    :cond_d
    const-wide/16 v18, 0x8

    sub-long v9, v22, v18

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    const-string v4, "infe"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :try_start_5
    iget-object v4, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v4, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/ex/c;->e()I

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_a

    :cond_f
    sub-long v22, v22, v20

    iget v4, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-ge v4, v13, :cond_10

    goto/16 :goto_a

    :cond_10
    if-ne v4, v13, :cond_11

    move v4, v13

    goto :goto_7

    :cond_11
    const/4 v4, 0x4

    :goto_7
    :try_start_6
    iget-object v9, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eq v9, v4, :cond_12

    goto :goto_a

    :cond_12
    int-to-long v10, v4

    sub-long v22, v22, v10

    if-ne v4, v13, :cond_13

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v4

    goto :goto_8

    :cond_13
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v10

    long-to-int v4, v10

    :goto_8
    :try_start_7
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const-wide/16 v11, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/io/InputStream;->skip(J)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v9, 0x4

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eq v10, v9, :cond_14

    goto :goto_a

    :cond_14
    const-wide/16 v9, 0x6

    sub-long v9, v22, v9

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    const-string v14, "mime"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_15
    :try_start_9
    iget-object v4, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v4, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x4

    goto/16 :goto_6

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_a

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    const/4 v0, 0x1

    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->g:I

    const-string v0, "Found iinf Chunk"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    :goto_a
    move-object v2, v3

    move-object/from16 v20, v5

    goto/16 :goto_21

    :cond_17
    const-string v8, "iref"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v24, 0x0

    if-eqz v8, :cond_24

    const/4 v8, 0x4

    new-array v0, v8, [B

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/ex/c;->e()I

    move-result v6

    if-eqz v6, :cond_18

    :catch_4
    :goto_b
    move-object/from16 v20, v5

    goto/16 :goto_11

    :cond_18
    sub-long v8, v22, v20

    iget v6, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-nez v6, :cond_19

    move v6, v13

    goto :goto_c

    :cond_19
    const/4 v6, 0x4

    :goto_c
    cmp-long v10, v8, v24

    if-lez v10, :cond_22

    :try_start_a
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-eq v10, v11, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v16

    :try_start_b
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v10, v0, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    if-eq v10, v11, :cond_1b

    goto :goto_b

    :cond_1b
    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    const-string v11, "cdsc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    :try_start_c
    iget-object v10, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    if-eq v10, v6, :cond_1c

    goto :goto_b

    :cond_1c
    move-object v12, v5

    int-to-long v4, v6

    sub-long/2addr v8, v4

    if-ne v6, v13, :cond_1d

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v10

    move v11, v10

    move-object/from16 v20, v12

    :goto_d
    const-wide/16 v16, 0x2

    goto :goto_e

    :cond_1d
    move-object/from16 v20, v12

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v11

    long-to-int v11, v11

    goto :goto_d

    :goto_e
    sub-long v8, v8, v16

    :try_start_d
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v10, 0x0

    invoke-virtual {v12, v0, v10, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-eq v12, v13, :cond_1e

    goto :goto_11

    :cond_1e
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v12, v0, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    if-eq v12, v6, :cond_1f

    goto :goto_11

    :cond_1f
    sub-long/2addr v8, v4

    if-ne v6, v13, :cond_20

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v4

    goto :goto_f

    :cond_20
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_f
    new-instance v5, Lcom/samsung/android/motionphoto/utils/ex/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v5, Lcom/samsung/android/motionphoto/utils/ex/b;->b:Ljava/util/Vector;

    iput v11, v5, Lcom/samsung/android/motionphoto/utils/ex/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x8

    goto :goto_10

    :cond_21
    move-object/from16 v20, v5

    const-wide/16 v4, 0x8

    sub-long v10, v16, v4

    sub-long/2addr v8, v10

    :try_start_e
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v12, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :goto_10
    move-object/from16 v5, v20

    goto/16 :goto_c

    :catch_5
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_11

    :cond_22
    move-object/from16 v20, v5

    if-gez v10, :cond_23

    goto :goto_11

    :cond_23
    const/4 v0, 0x1

    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->i:I

    const-string v0, "Found iref Chunk"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_6
    :goto_11
    move-object v2, v3

    goto/16 :goto_21

    :cond_24
    move-object/from16 v20, v5

    const-string v5, "pitm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x4

    new-array v0, v5, [B

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/ex/c;->e()I

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_11

    :cond_25
    iget v5, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-nez v5, :cond_26

    move v5, v13

    goto :goto_12

    :cond_26
    const/4 v5, 0x4

    :goto_12
    :try_start_f
    iget-object v6, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    if-eq v6, v5, :cond_27

    goto :goto_11

    :cond_27
    if-ne v5, v13, :cond_28

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->e:I

    :goto_13
    const/4 v0, 0x1

    goto :goto_14

    :cond_28
    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v5

    long-to-int v0, v5

    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->e:I

    goto :goto_13

    :goto_14
    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->h:I

    goto :goto_11

    :cond_29
    const-string v7, "iloc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    const/4 v7, 0x4

    new-array v8, v7, [B

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/ex/c;->e()I

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_11

    :cond_2a
    iget v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-le v0, v13, :cond_2b

    goto :goto_11

    :cond_2b
    :try_start_10
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    aget-byte v7, v8, v5

    if-eq v0, v4, :cond_2c

    goto :goto_11

    :cond_2c
    and-int/lit8 v9, v7, 0xf

    const/4 v11, 0x4

    shr-int/2addr v7, v11

    :try_start_11
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, v8, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    aget-byte v10, v8, v5

    if-eq v0, v4, :cond_2d

    goto :goto_11

    :cond_2d
    iget v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    if-eqz v12, :cond_2f

    if-ne v12, v4, :cond_2e

    goto :goto_15

    :cond_2e
    const/4 v4, 0x0

    goto :goto_16

    :cond_2f
    :goto_15
    and-int/lit8 v4, v10, 0xf

    :goto_16
    shr-int/lit8 v10, v10, 0x4

    if-ge v12, v13, :cond_30

    move v12, v13

    goto :goto_17

    :cond_30
    move v12, v11

    :goto_17
    :try_start_12
    iget-object v14, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v5, 0x0

    invoke-virtual {v14, v8, v5, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    if-eq v14, v12, :cond_31

    goto/16 :goto_11

    :cond_31
    if-ne v12, v13, :cond_32

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v14

    move v5, v14

    move-object v14, v6

    goto :goto_18

    :cond_32
    move-object v14, v6

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_3f

    :try_start_13
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    if-eq v0, v12, :cond_33

    goto/16 :goto_11

    :cond_33
    if-ne v12, v13, :cond_34

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v0

    move v11, v0

    move/from16 v16, v12

    goto :goto_1a

    :cond_34
    move/from16 v16, v12

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v11

    long-to-int v0, v11

    move v11, v0

    :goto_1a
    iget v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    const/4 v0, 0x1

    if-eq v12, v0, :cond_36

    if-ne v12, v13, :cond_35

    goto :goto_1b

    :cond_35
    move-object/from16 v18, v14

    const-wide/16 v13, 0x2

    goto :goto_1c

    :cond_36
    :goto_1b
    :try_start_14
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    move-object/from16 v18, v14

    const-wide/16 v13, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    :goto_1c
    :try_start_15
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v12, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    if-lez v10, :cond_38

    :try_start_16
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    invoke-virtual {v12, v8, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    move/from16 v13, v16

    const/4 v0, 0x2

    if-ne v13, v0, :cond_37

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v0

    move/from16 v16, v13

    int-to-long v13, v0

    goto :goto_1d

    :cond_37
    move/from16 v16, v13

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v13

    :goto_1d
    if-eq v12, v10, :cond_39

    goto/16 :goto_11

    :cond_38
    move-wide/from16 v13, v24

    :cond_39
    :try_start_17
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v0, v8, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->b([B)I

    move-result v12

    if-eq v0, v2, :cond_3a

    goto/16 :goto_11

    :cond_3a
    const/4 v0, 0x1

    if-eq v12, v0, :cond_3b

    goto/16 :goto_11

    :cond_3b
    :try_start_18
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    invoke-virtual {v12, v8, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    if-eq v12, v4, :cond_3c

    goto/16 :goto_11

    :cond_3c
    :try_start_19
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v12, v8, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    move-object/from16 v19, v3

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v2

    if-eq v12, v7, :cond_3d

    :goto_1e
    move-object/from16 v2, v19

    goto/16 :goto_21

    :cond_3d
    :try_start_1a
    iget-object v12, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v12, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    invoke-static {v8}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v0

    if-eq v12, v9, :cond_3e

    :catch_7
    :goto_1f
    move-object/from16 v1, p0

    goto :goto_1e

    :cond_3e
    new-instance v12, Lcom/samsung/android/motionphoto/utils/ex/a;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-wide v13, v12, Lcom/samsung/android/motionphoto/utils/ex/a;->b:J

    move/from16 v22, v4

    move/from16 v23, v5

    int-to-long v4, v11

    iput-wide v4, v12, Lcom/samsung/android/motionphoto/utils/ex/a;->a:J

    iput-wide v2, v12, Lcom/samsung/android/motionphoto/utils/ex/a;->c:J

    iput-wide v0, v12, Lcom/samsung/android/motionphoto/utils/ex/a;->d:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v24, v13

    move/from16 v12, v16

    move-object/from16 v3, v19

    move/from16 v4, v22

    move/from16 v5, v23

    const/4 v11, 0x4

    const/4 v13, 0x2

    move-object v14, v0

    goto/16 :goto_19

    :catch_8
    move-object/from16 v19, v3

    goto :goto_1f

    :catch_9
    move-exception v0

    move-object/from16 v19, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_20
    move-object/from16 v1, p0

    goto :goto_21

    :catch_a
    move-exception v0

    move-object v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_20

    :catch_b
    move-object v2, v3

    goto :goto_20

    :cond_3f
    move-object v2, v3

    const/4 v0, 0x1

    iput v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->j:I

    const-string v0, "Found iloc Chunk"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_40
    move-object v2, v3

    const-string v3, "meta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :try_start_1b
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    goto :goto_21

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_41
    :try_start_1c
    iget-object v0, v1, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_21
    move-object v3, v2

    move-object/from16 v5, v20

    const/4 v4, 0x4

    move-object/from16 v2, p1

    goto/16 :goto_0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :catch_e
    move-object v2, v3

    move-object v1, v10

    const-string v0, "read fail"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_f
    move-object v1, v10

    return-object v1
.end method

.method public final e()I
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->a:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    return v2

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/motionphoto/utils/ex/c;->a([B)J

    move-result-wide v0

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/ex/c;->f:I

    return v4

    :catch_0
    return v2
.end method
