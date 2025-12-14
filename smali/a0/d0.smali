.class public final La0/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:LN/q;

.field public final f:Ldb/o;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La0/d0;->a:Ljava/util/ArrayList;

    iput p1, p0, La0/d0;->b:I

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La0/d0;->d:Ljava/util/ArrayList;

    new-instance p1, LN/q;

    invoke-direct {p1}, LN/q;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :goto_1
    if-ge v0, p2, :cond_1

    iget-object v2, p0, La0/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/Q;

    iget v3, v2, La0/Q;->c:I

    new-instance v4, La0/K;

    iget v2, v2, La0/Q;->d:I

    invoke-direct {v4, v0, v1, v2}, La0/K;-><init>(III)V

    invoke-virtual {p1, v3, v4}, LN/q;->d(ILjava/lang/Object;)V

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, La0/d0;->e:LN/q;

    new-instance p1, LA4/a;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, La0/d0;->f:Ldb/o;

    return-void

    :cond_2
    const-string p0, "Invalid start index"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(II)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v0, v0, La0/d0;->e:LN/q;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/K;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v4, v2, La0/K;->b:I

    iget v5, v2, La0/K;->c:I

    sub-int v5, v1, v5

    iput v1, v2, La0/K;->c:I

    if-eqz v5, :cond_3

    iget-object v1, v0, LN/q;->c:[Ljava/lang/Object;

    iget-object v0, v0, LN/q;->a:[J

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_3

    move v7, v3

    :goto_0
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v3

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    check-cast v13, La0/K;

    iget v14, v13, La0/K;->b:I

    if-lt v14, v4, :cond_0

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    iget v14, v13, La0/K;->b:I

    add-int/2addr v14, v5

    if-ltz v14, :cond_0

    iput v14, v13, La0/K;->b:I

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v3
.end method
