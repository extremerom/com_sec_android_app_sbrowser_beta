.class public final LV/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/ArrayList;

.field public final g:LV/n;

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:Z


# direct methods
.method public constructor <init>(IILjava/lang/Object;IIILjava/util/ArrayList;LV/n;JZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LV/D;->a:I

    iput-object p3, p0, LV/D;->b:Ljava/lang/Object;

    iput p4, p0, LV/D;->c:I

    iput p5, p0, LV/D;->d:I

    iput p6, p0, LV/D;->e:I

    iput-object p7, p0, LV/D;->f:Ljava/util/ArrayList;

    iput-object p8, p0, LV/D;->g:LV/n;

    iput-wide p9, p0, LV/D;->h:J

    iput-boolean p11, p0, LV/D;->i:Z

    iput p12, p0, LV/D;->j:I

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-virtual {p0, p3}, LV/D;->a(I)LQ/A;

    move-result-object p4

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p2, p0, LV/D;->k:Z

    return-void
.end method


# virtual methods
.method public final a(I)LQ/A;
    .locals 0

    iget-object p0, p0, LV/D;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV/C;

    iget-object p0, p0, LV/C;->b:Lz0/G;

    invoke-virtual {p0}, Lz0/G;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LQ/A;

    if-eqz p1, :cond_0

    check-cast p0, LQ/A;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b(I)J
    .locals 0

    iget-object p0, p0, LV/D;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV/C;

    iget-wide p0, p0, LV/C;->a:J

    return-wide p0
.end method

.method public final c(Lz0/F;)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x20

    const-string v4, "scope"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LV/D;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/C;

    iget-object v7, v7, LV/C;->b:Lz0/G;

    iget v8, v7, Lz0/G;->b:I

    iget v9, v0, LV/D;->d:I

    sub-int/2addr v9, v8

    invoke-virtual {v0, v6}, LV/D;->a(I)LQ/A;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v6}, LV/D;->b(I)J

    move-result-wide v10

    iget-object v8, v0, LV/D;->g:LV/n;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v0, LV/D;->b:Ljava/lang/Object;

    iget-object v13, v8, LV/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LV/e;

    if-nez v12, :cond_0

    move/from16 p1, v5

    move/from16 v16, v6

    move-wide v2, v10

    move-object v11, v4

    goto/16 :goto_1

    :cond_0
    iget-object v10, v12, LV/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LV/N;

    iget-object v11, v10, LV/N;->b:LQ/d;

    iget-object v11, v11, LQ/d;->c:LQ/i;

    iget-object v11, v11, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH0/i;

    iget-wide v13, v11, LH0/i;->a:J

    iget-wide v2, v12, LV/e;->a:J

    move-object v11, v4

    move/from16 p1, v5

    shr-long v4, v13, v1

    long-to-int v4, v4

    move/from16 v16, v6

    shr-long v5, v2, v1

    long-to-int v5, v5

    add-int/2addr v4, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v13, v5

    long-to-int v13, v13

    and-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v13, v2

    invoke-static {v4, v13}, LG5/U2;->a(II)J

    move-result-wide v2

    iget-wide v4, v10, LV/N;->c:J

    iget-wide v12, v12, LV/e;->a:J

    shr-long v14, v4, v1

    long-to-int v6, v14

    shr-long v14, v12, v1

    long-to-int v14, v14

    add-int/2addr v6, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    long-to-int v4, v4

    and-long/2addr v12, v14

    long-to-int v5, v12

    add-int/2addr v4, v5

    invoke-static {v6, v4}, LG5/U2;->a(II)J

    move-result-wide v4

    iget-object v6, v10, LV/N;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v8, v4, v5}, LV/n;->b(J)I

    move-result v6

    if-gt v6, v9, :cond_1

    invoke-virtual {v8, v2, v3}, LV/n;->b(J)I

    move-result v6

    if-le v6, v9, :cond_2

    :cond_1
    invoke-virtual {v8, v4, v5}, LV/n;->b(J)I

    move-result v4

    iget v5, v0, LV/D;->e:I

    if-lt v4, v5, :cond_3

    invoke-virtual {v8, v2, v3}, LV/n;->b(J)I

    move-result v4

    if-lt v4, v5, :cond_3

    :cond_2
    new-instance v4, LV/j;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5}, LV/j;-><init>(LV/N;Lib/c;)V

    iget-object v6, v8, LV/n;->a:LUc/e;

    const/4 v8, 0x3

    invoke-static {v6, v5, v5, v4, v8}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_3
    :goto_1
    move/from16 v6, v16

    goto :goto_2

    :cond_4
    move-object v11, v4

    move/from16 p1, v5

    invoke-virtual {v0, v6}, LV/D;->b(I)J

    move-result-wide v2

    :goto_2
    iget-boolean v4, v0, LV/D;->i:Z

    if-eqz v4, :cond_5

    sget v4, LH0/i;->c:I

    shr-long v4, v2, v1

    long-to-int v4, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    long-to-int v2, v2

    iget v3, v0, LV/D;->j:I

    sub-int/2addr v3, v2

    iget v2, v7, Lz0/G;->b:I

    sub-int/2addr v3, v2

    invoke-static {v4, v3}, LG5/U2;->a(II)J

    move-result-wide v2

    :cond_5
    sget-object v4, Lz0/H;->a:Lz0/H;

    sget v5, LH0/i;->c:I

    shr-long v8, v2, v1

    long-to-int v5, v8

    iget-wide v8, v0, LV/D;->h:J

    shr-long v12, v8, v1

    long-to-int v10, v12

    add-int/2addr v5, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    long-to-int v2, v2

    and-long/2addr v8, v12

    long-to-int v3, v8

    add-int/2addr v2, v3

    invoke-static {v5, v2}, LG5/U2;->a(II)J

    move-result-wide v2

    sget v5, Lz0/I;->b:I

    const/4 v5, 0x0

    iget-wide v8, v7, Lz0/G;->e:J

    sget v10, LH0/i;->c:I

    shr-long v12, v2, v1

    long-to-int v10, v12

    shr-long v12, v8, v1

    long-to-int v12, v12

    add-int/2addr v10, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    long-to-int v2, v2

    and-long/2addr v8, v12

    long-to-int v3, v8

    add-int/2addr v2, v3

    invoke-static {v10, v2}, LG5/U2;->a(II)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3, v5, v4}, Lz0/G;->u(JFLsb/k;)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p1

    move-object v4, v11

    goto/16 :goto_0

    :cond_6
    return-void
.end method
