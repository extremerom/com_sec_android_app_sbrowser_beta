.class public final Lwd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public a:B

.field public final b:Lwd/t;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Lwd/o;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lwd/z;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwd/t;

    invoke-direct {v0, p1}, Lwd/t;-><init>(Lwd/z;)V

    iput-object v0, p0, Lwd/n;->b:Lwd/t;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lwd/n;->c:Ljava/util/zip/Inflater;

    new-instance v1, Lwd/o;

    invoke-direct {v1, v0, p1}, Lwd/o;-><init>(Lwd/t;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lwd/n;->d:Lwd/o;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lwd/n;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Lwd/g;JJ)V
    .locals 4

    iget-object p1, p1, Lwd/g;->a:Lwd/u;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Lwd/u;->c:I

    iget v1, p1, Lwd/u;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lwd/u;->f:Lwd/u;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lwd/u;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lwd/u;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lwd/n;->e:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lwd/u;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lwd/u;->f:Lwd/u;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lwd/n;->d:Lwd/o;

    invoke-virtual {p0}, Lwd/o;->close()V

    return-void
.end method

.method public final read(Lwd/g;J)J
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-string v0, "sink"

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_12

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-byte v0, v6, Lwd/n;->a:B

    iget-object v10, v6, Lwd/n;->e:Ljava/util/zip/CRC32;

    const/4 v11, 0x1

    iget-object v14, v6, Lwd/n;->b:Lwd/t;

    if-nez v0, :cond_d

    const-wide/16 v0, 0xa

    invoke-virtual {v14, v0, v1}, Lwd/t;->q(J)V

    iget-object v15, v14, Lwd/t;->b:Lwd/g;

    const-wide/16 v0, 0x3

    invoke-virtual {v15, v0, v1}, Lwd/g;->f(J)B

    move-result v16

    shr-int/lit8 v0, v16, 0x1

    and-int/2addr v0, v11

    const/4 v4, 0x0

    if-ne v0, v11, :cond_1

    move/from16 v17, v11

    goto :goto_0

    :cond_1
    move/from16 v17, v4

    :goto_0
    if-eqz v17, :cond_2

    const-wide/16 v18, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v12, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    goto :goto_1

    :cond_2
    move v12, v4

    :goto_1
    invoke-virtual {v14}, Lwd/t;->k()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v2, v0, v1}, Lwd/n;->a(IILjava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-virtual {v14, v0, v1}, Lwd/t;->t(J)V

    shr-int/lit8 v0, v16, 0x2

    and-int/2addr v0, v11

    const v13, 0xff00

    const-wide/16 v4, 0x2

    if-ne v0, v11, :cond_5

    invoke-virtual {v14, v4, v5}, Lwd/t;->q(J)V

    if-eqz v17, :cond_3

    const-wide/16 v18, 0x2

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    :cond_3
    invoke-virtual {v15}, Lwd/g;->E()S

    move-result v0

    and-int v1, v0, v13

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v4, v0

    invoke-virtual {v14, v4, v5}, Lwd/t;->q(J)V

    if-eqz v17, :cond_4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v18, v4

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    move-wide/from16 v0, v18

    goto :goto_2

    :cond_4
    move-wide v0, v4

    :goto_2
    invoke-virtual {v14, v0, v1}, Lwd/t;->t(J)V

    :cond_5
    shr-int/lit8 v0, v16, 0x3

    and-int/2addr v0, v11

    const-wide/16 v18, 0x1

    if-ne v0, v11, :cond_8

    invoke-virtual {v14, v12}, Lwd/t;->Q(B)J

    move-result-wide v20

    const-wide/16 v0, -0x1

    cmp-long v2, v20, v0

    if-eqz v2, :cond_7

    if-eqz v17, :cond_6

    add-long v4, v20, v18

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    :cond_6
    add-long v0, v20, v18

    invoke-virtual {v14, v0, v1}, Lwd/t;->t(J)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_3
    shr-int/lit8 v0, v16, 0x4

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_b

    invoke-virtual {v14, v12}, Lwd/t;->Q(B)J

    move-result-wide v20

    const-wide/16 v0, -0x1

    cmp-long v2, v20, v0

    if-eqz v2, :cond_a

    if-eqz v17, :cond_9

    add-long v4, v20, v18

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    :cond_9
    add-long v0, v20, v18

    invoke-virtual {v14, v0, v1}, Lwd/t;->t(J)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    :goto_4
    if-eqz v17, :cond_c

    const-wide/16 v0, 0x2

    invoke-virtual {v14, v0, v1}, Lwd/t;->q(J)V

    invoke-virtual {v15}, Lwd/g;->E()S

    move-result v0

    and-int v1, v0, v13

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-static {v0, v1, v2}, Lwd/n;->a(IILjava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v11, v6, Lwd/n;->a:B

    :cond_d
    iget-byte v0, v6, Lwd/n;->a:B

    const/4 v1, 0x2

    if-ne v0, v11, :cond_f

    iget-wide v2, v7, Lwd/g;->b:J

    iget-object v0, v6, Lwd/n;->d:Lwd/o;

    invoke-virtual {v0, v7, v8, v9}, Lwd/o;->read(Lwd/g;J)J

    move-result-wide v8

    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lwd/n;->b(Lwd/g;JJ)V

    return-wide v8

    :cond_e
    iput-byte v1, v6, Lwd/n;->a:B

    :cond_f
    iget-byte v0, v6, Lwd/n;->a:B

    if-ne v0, v1, :cond_10

    invoke-virtual {v14}, Lwd/t;->j()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-static {v0, v1, v2}, Lwd/n;->a(IILjava/lang/String;)V

    invoke-virtual {v14}, Lwd/t;->j()I

    move-result v0

    iget-object v1, v6, Lwd/n;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-static {v0, v1, v2}, Lwd/n;->a(IILjava/lang/String;)V

    const/4 v0, 0x3

    iput-byte v0, v6, Lwd/n;->a:B

    invoke-virtual {v14}, Lwd/t;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-wide/16 v0, -0x1

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    return-wide v0

    :cond_12
    const-string v0, "byteCount < 0: "

    invoke-static {v8, v9, v0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/n;->b:Lwd/t;

    iget-object p0, p0, Lwd/t;->a:Lwd/z;

    invoke-interface {p0}, Lwd/z;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method
