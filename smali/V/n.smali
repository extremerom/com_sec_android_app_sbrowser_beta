.class public final LV/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LUc/e;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/Map;

.field public d:I

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LUc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/n;->a:LUc/e;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LV/n;->b:Ljava/util/LinkedHashMap;

    sget-object p1, Lfb/w;->a:Lfb/w;

    iput-object p1, p0, LV/n;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LV/n;->e:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LV/n;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LV/n;->g:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LV/n;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LV/n;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(LV/D;I)LV/e;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, LV/e;

    invoke-direct {v1}, LV/e;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LV/D;->b(I)J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long v6, v3, v5

    long-to-int v6, v6

    move/from16 v7, p2

    invoke-static {v6, v7}, LG5/U2;->a(II)J

    move-result-wide v6

    iget-object v8, v0, LV/D;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_0
    if-ge v2, v9, :cond_0

    invoke-virtual {v0, v2}, LV/D;->b(I)J

    move-result-wide v10

    shr-long v12, v10, v5

    long-to-int v12, v12

    shr-long v13, v3, v5

    long-to-int v13, v13

    sub-int/2addr v12, v13

    const-wide v13, 0xffffffffL

    and-long/2addr v10, v13

    long-to-int v10, v10

    move-wide v15, v6

    and-long v5, v3, v13

    long-to-int v5, v5

    sub-int/2addr v10, v5

    invoke-static {v12, v10}, LG5/U2;->a(II)J

    move-result-wide v5

    iget-object v7, v1, LV/e;->b:Ljava/util/ArrayList;

    new-instance v10, LV/N;

    const/16 v11, 0x20

    shr-long v13, v15, v11

    long-to-int v12, v13

    shr-long v13, v5, v11

    long-to-int v13, v13

    add-int/2addr v12, v13

    move/from16 p2, v12

    const-wide v13, 0xffffffffL

    and-long v11, v15, v13

    long-to-int v11, v11

    and-long/2addr v5, v13

    long-to-int v5, v5

    add-int/2addr v11, v5

    move/from16 v12, p2

    invoke-static {v12, v11}, LG5/U2;->a(II)J

    move-result-wide v5

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LV/C;

    iget-object v11, v11, LV/C;->b:Lz0/G;

    iget v11, v11, Lz0/G;->b:I

    invoke-direct {v10, v5, v6, v11}, LV/N;-><init>(JI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-wide v6, v15

    const/16 v5, 0x20

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final b(J)I
    .locals 2

    sget p0, LH0/i;->c:I

    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    long-to-int p0, p0

    return p0
.end method

.method public final c(LV/D;LV/e;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    :goto_0
    iget-object v2, v1, LV/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, LV/D;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v1, LV/e;->b:Ljava/util/ArrayList;

    if-le v2, v4, :cond_0

    invoke-static {v5}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    if-ge v2, v4, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, LV/D;->b(I)J

    move-result-wide v9

    new-instance v4, LV/N;

    iget-wide v11, v1, LV/e;->a:J

    sget v13, LH0/i;->c:I

    shr-long v13, v9, v8

    long-to-int v13, v13

    shr-long v14, v11, v8

    long-to-int v8, v14

    sub-int/2addr v13, v8

    and-long v8, v9, v6

    long-to-int v8, v8

    and-long/2addr v6, v11

    long-to-int v6, v6

    sub-int/2addr v8, v6

    invoke-static {v13, v8}, LG5/U2;->a(II)J

    move-result-wide v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV/C;

    iget-object v2, v2, LV/C;->b:Lz0/G;

    iget v2, v2, Lz0/G;->b:I

    invoke-direct {v4, v6, v7, v2}, LV/N;-><init>(JI)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LV/N;

    iget-wide v10, v9, LV/N;->c:J

    iget-wide v12, v1, LV/e;->a:J

    sget v14, LH0/i;->c:I

    shr-long v14, v10, v8

    long-to-int v14, v14

    shr-long v6, v12, v8

    long-to-int v6, v6

    add-int/2addr v14, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v10, v6

    long-to-int v10, v10

    and-long v11, v12, v6

    long-to-int v6, v11

    add-int/2addr v10, v6

    invoke-static {v14, v10}, LG5/U2;->a(II)J

    move-result-wide v6

    invoke-virtual {v0, v4}, LV/D;->b(I)J

    move-result-wide v10

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LV/C;

    iget-object v12, v12, LV/C;->b:Lz0/G;

    iget v12, v12, Lz0/G;->b:I

    iput v12, v9, LV/N;->a:I

    invoke-virtual {v0, v4}, LV/D;->a(I)LQ/A;

    move-result-object v12

    invoke-static {v6, v7, v10, v11}, LH0/i;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    iget-wide v6, v1, LV/e;->a:J

    shr-long v13, v10, v8

    long-to-int v13, v13

    shr-long v0, v6, v8

    long-to-int v0, v0

    sub-int/2addr v13, v0

    const-wide v0, 0xffffffffL

    and-long/2addr v10, v0

    long-to-int v10, v10

    and-long/2addr v6, v0

    long-to-int v6, v6

    sub-int/2addr v10, v6

    invoke-static {v13, v10}, LG5/U2;->a(II)J

    move-result-wide v6

    iput-wide v6, v9, LV/N;->c:J

    if-eqz v12, :cond_2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v9, LV/N;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance v6, LV/m;

    const/4 v7, 0x0

    invoke-direct {v6, v9, v12, v7}, LV/m;-><init>(LV/N;LQ/A;Lib/c;)V

    move-object/from16 v9, p0

    iget-object v10, v9, LV/n;->a:LUc/e;

    const/4 v11, 0x3

    invoke-static {v10, v7, v7, v6, v11}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    goto :goto_4

    :cond_2
    :goto_3
    move-object/from16 v9, p0

    goto :goto_4

    :cond_3
    const-wide v0, 0xffffffffL

    goto :goto_3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_4
    return-void
.end method
