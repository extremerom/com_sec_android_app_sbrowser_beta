.class public abstract LLc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:J

.field public static final b:J

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, LLc/b;->a:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, LOd/b;->b(J)J

    move-result-wide v0

    sput-wide v0, LLc/a;->a:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, LOd/b;->b(J)J

    move-result-wide v0

    sput-wide v0, LLc/a;->b:J

    return-void
.end method

.method public static final a(JJ)J
    .locals 6

    const v0, 0xf4240

    int-to-long v0, v0

    div-long v2, p2, v0

    add-long/2addr p0, v2

    const-wide v4, -0x431bde82d7aL

    cmp-long v4, v4, p0

    if-gtz v4, :cond_0

    const-wide v4, 0x431bde82d7bL

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr p0, v0

    add-long/2addr p0, p2

    invoke-static {p0, p1}, LOd/b;->c(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LG5/d3;->h(J)J

    move-result-wide p0

    invoke-static {p0, p1}, LOd/b;->b(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final c(Ljava/lang/StringBuilder;IIILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x30

    invoke-static {p1, p3, p2}, LKc/k;->B(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, -0x1

    add-int/2addr p3, v0

    if-ltz p3, :cond_2

    :goto_0
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, p2, :cond_0

    move v0, p3

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, v0, 0x1

    const/4 p3, 0x0

    const/4 v1, 0x3

    if-ge p2, v1, :cond_3

    invoke-virtual {p0, p1, p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, p1, p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static d(JJ)I
    .locals 6

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-ltz v4, :cond_2

    long-to-int v0, v0

    and-int/2addr v0, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/2addr v0, v5

    long-to-int p2, p2

    and-int/2addr p2, v5

    sub-int/2addr v0, p2

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_1
    return v5
.end method

.method public static final e(J)J
    .locals 2

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, LLc/a;->f(J)Z

    move-result v0

    if-nez v0, :cond_0

    shr-long/2addr p0, v1

    goto :goto_0

    :cond_0
    sget-object v0, LLc/c;->MILLISECONDS:LLc/c;

    invoke-static {p0, p1, v0}, LLc/a;->g(JLLc/c;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final f(J)Z
    .locals 2

    sget-wide v0, LLc/a;->a:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, LLc/a;->b:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final g(JLLc/c;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, LLc/a;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_0
    sget-wide v0, LLc/a;->b:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    sget-object p0, LLc/c;->NANOSECONDS:LLc/c;

    goto :goto_0

    :cond_2
    sget-object p0, LLc/c;->MILLISECONDS:LLc/c;

    :goto_0
    const-string p1, "sourceUnit"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LLc/c;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0}, LLc/c;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 17

    move-wide/from16 v0, p0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-string v0, "0s"

    goto/16 :goto_e

    :cond_0
    sget-wide v7, LLc/a;->a:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_e

    :cond_1
    sget-wide v7, LLc/a;->b:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_e

    :cond_2
    if-gez v6, :cond_3

    move v8, v3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v6, :cond_5

    shr-long v10, v0, v3

    neg-long v10, v10

    long-to-int v0, v0

    and-int/2addr v0, v3

    shl-long/2addr v10, v3

    int-to-long v0, v0

    add-long/2addr v0, v10

    sget v6, LLc/b;->a:I

    :cond_5
    sget-object v6, LLc/c;->DAYS:LLc/c;

    invoke-static {v0, v1, v6}, LLc/a;->g(JLLc/c;)J

    move-result-wide v10

    invoke-static {v0, v1}, LLc/a;->f(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    sget-object v6, LLc/c;->HOURS:LLc/c;

    invoke-static {v0, v1, v6}, LLc/a;->g(JLLc/c;)J

    move-result-wide v12

    const/16 v6, 0x18

    int-to-long v14, v6

    rem-long/2addr v12, v14

    long-to-int v6, v12

    :goto_1
    invoke-static {v0, v1}, LLc/a;->f(J)Z

    move-result v12

    const/16 v13, 0x3c

    if-eqz v12, :cond_7

    move/from16 v16, v8

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    sget-object v12, LLc/c;->MINUTES:LLc/c;

    invoke-static {v0, v1, v12}, LLc/a;->g(JLLc/c;)J

    move-result-wide v14

    move/from16 v16, v8

    int-to-long v7, v13

    rem-long/2addr v14, v7

    long-to-int v7, v14

    :goto_2
    invoke-static {v0, v1}, LLc/a;->f(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    sget-object v8, LLc/c;->SECONDS:LLc/c;

    invoke-static {v0, v1, v8}, LLc/a;->g(JLLc/c;)J

    move-result-wide v14

    int-to-long v12, v13

    rem-long/2addr v14, v12

    long-to-int v8, v14

    :goto_3
    invoke-static {v0, v1}, LLc/a;->f(J)Z

    move-result v12

    const v13, 0xf4240

    if-eqz v12, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    long-to-int v12, v0

    and-int/2addr v12, v3

    if-ne v12, v3, :cond_a

    shr-long/2addr v0, v3

    int-to-long v14, v2

    rem-long/2addr v0, v14

    int-to-long v14, v13

    mul-long/2addr v0, v14

    :goto_4
    long-to-int v0, v0

    goto :goto_5

    :cond_a
    shr-long/2addr v0, v3

    const v12, 0x3b9aca00

    int-to-long v14, v12

    rem-long/2addr v0, v14

    goto :goto_4

    :goto_5
    cmp-long v1, v10, v4

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v6, :cond_c

    move v4, v3

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    if-eqz v7, :cond_d

    move v5, v3

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-nez v8, :cond_f

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    move v12, v3

    :goto_a
    if-eqz v1, :cond_10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v3

    goto :goto_b

    :cond_10
    const/4 v10, 0x0

    :goto_b
    const/16 v11, 0x20

    if-nez v4, :cond_11

    if-eqz v1, :cond_13

    if-nez v5, :cond_11

    if-eqz v12, :cond_13

    :cond_11
    add-int/lit8 v14, v10, 0x1

    if-lez v10, :cond_12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x68

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v14

    :cond_13
    if-nez v5, :cond_14

    if-eqz v12, :cond_16

    if-nez v4, :cond_14

    if-eqz v1, :cond_16

    :cond_14
    add-int/lit8 v6, v10, 0x1

    if-lez v10, :cond_15

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x6d

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v6

    :cond_16
    if-eqz v12, :cond_1c

    add-int/lit8 v6, v10, 0x1

    if-lez v10, :cond_17

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    if-nez v8, :cond_1b

    if-nez v1, :cond_1b

    if-nez v4, :cond_1b

    if-eqz v5, :cond_18

    goto :goto_c

    :cond_18
    if-lt v0, v13, :cond_19

    div-int v1, v0, v13

    rem-int/2addr v0, v13

    const-string v2, "ms"

    const/4 v4, 0x6

    invoke-static {v9, v1, v0, v4, v2}, LLc/a;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    :cond_19
    if-lt v0, v2, :cond_1a

    div-int/lit16 v1, v0, 0x3e8

    rem-int/2addr v0, v2

    const-string v2, "us"

    const/4 v4, 0x3

    invoke-static {v9, v1, v0, v4, v2}, LLc/a;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    :cond_1a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    :goto_c
    const-string v1, "s"

    const/16 v2, 0x9

    invoke-static {v9, v8, v0, v2, v1}, LLc/a;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    :goto_d
    move v10, v6

    :cond_1c
    if-eqz v16, :cond_1d

    if-le v10, v3, :cond_1d

    const/16 v0, 0x28

    invoke-virtual {v9, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method
