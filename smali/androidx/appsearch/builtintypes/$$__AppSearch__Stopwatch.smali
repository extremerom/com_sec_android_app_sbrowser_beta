.class public final Landroidx/appsearch/builtintypes/$$__AppSearch__Stopwatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/q;"
    }
.end annotation


# static fields
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:Stopwatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Stopwatch;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v4, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    array-length v7, v3

    if-eqz v7, :cond_0

    aget-object v3, v3, v5

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v11, v6

    :goto_0
    const-string v3, "alternateNames"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    :cond_1
    move-object v12, v6

    :goto_1
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v7, v3

    if-eqz v7, :cond_2

    aget-object v3, v3, v5

    move-object v13, v3

    goto :goto_2

    :cond_2
    move-object v13, v6

    :goto_2
    const-string v3, "image"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v7, v3

    if-eqz v7, :cond_3

    aget-object v3, v3, v5

    move-object v14, v3

    goto :goto_3

    :cond_3
    move-object v14, v6

    :goto_3
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v7, v3

    if-eqz v7, :cond_4

    aget-object v3, v3, v5

    move-object v15, v3

    goto :goto_4

    :cond_4
    move-object v15, v6

    :goto_4
    const-string v3, "potentialActions"

    invoke-virtual {v0, v3}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v5

    :goto_5
    array-length v9, v3

    if-ge v8, v9, :cond_5

    aget-object v9, v3, v8

    const-class v10, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v9, v10, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v16, v7

    goto :goto_6

    :cond_6
    move-object/from16 v16, v6

    :goto_6
    const-string v3, "baseTimeMillis"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v17

    const-string v3, "baseTimeMillisInElapsedRealtime"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v19

    const-string v3, "bootCount"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v9, v7

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v10, v7

    const-string v3, "accumulatedDurationMillis"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v23

    const-string v3, "laps"

    invoke-virtual {v0, v3}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    array-length v6, v0

    if-ge v5, v6, :cond_7

    aget-object v6, v0, v5

    const-class v7, Landroidx/appsearch/builtintypes/StopwatchLap;

    invoke-virtual {v6, v7, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appsearch/builtintypes/StopwatchLap;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v25, v3

    goto :goto_8

    :cond_8
    move-object/from16 v25, v6

    :goto_8
    new-instance v0, Landroidx/appsearch/builtintypes/Stopwatch;

    move-object v3, v0

    iget-object v5, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget v6, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    iget-wide v7, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    iget-wide v1, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    move/from16 v21, v9

    move/from16 v22, v10

    move-wide v9, v1

    invoke-direct/range {v3 .. v25}, Landroidx/appsearch/builtintypes/Stopwatch;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJIIJLjava/util/ArrayList;)V

    return-object v0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/builtintypes/$$__AppSearch__Stopwatch;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-class p0, Landroidx/appsearch/builtintypes/PotentialAction;

    const-class v0, Landroidx/appsearch/builtintypes/StopwatchLap;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "builtin:Stopwatch"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v2, v4}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v5, "alternateNames"

    invoke-static {v0, v1, v5, v3, v4}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v5, "description"

    invoke-static {v1, v4, v4, v0, v5}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v4, v4, v4}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v5, "image"

    invoke-static {v0, v1, v5, v2, v4}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v5, "url"

    invoke-static {v1, v4, v4, v0, v5}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v4, v4, v4}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lt/b;->b(Lcom/google/firebase/messaging/l;Lv/n;I)LN/g;

    move-result-object v1

    const/4 v8, 0x1

    const/4 v2, 0x3

    const-string v14, "cardinality"

    invoke-static {v8, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v11, LB/d;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v11, v5, v4}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v6, "potentialActions"

    const/4 v7, 0x6

    const-string v9, "builtin:PotentialAction"

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v5, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v5, LN/g;

    iget-object v6, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Property defined more than once: "

    if-eqz v7, :cond_d

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v6, "indexingType"

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "baseTimeMillis"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v18, v1

    move-object/from16 v22, v9

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "baseTimeMillisInElapsedRealtime"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v18, v1

    move-object/from16 v22, v9

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "bootCount"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v18, v1

    move-object/from16 v22, v9

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "status"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v18, v1

    move-object/from16 v22, v9

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_4
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v7, LB/f;

    invoke-direct {v7, v4}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "accumulatedDurationMillis"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v6

    move/from16 v18, v1

    move-object/from16 v22, v7

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_5
    iget-object v1, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, v6, v4}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6, v3, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "laps"

    const/16 v17, 0x6

    const-string v19, "builtin:StopwatchLap"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v6

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_6
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lx/b;

    invoke-static {v8, v6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:Stopwatch"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/builtintypes/Stopwatch;)Lv/u;
    .locals 7

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    const-string v3, "builtin:Stopwatch"

    iget-object v4, p1, Landroidx/appsearch/builtintypes/Thing;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroidx/appsearch/builtintypes/Thing;->c:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->v(I)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v2, LB/a;

    iget-wide v3, p1, Landroidx/appsearch/builtintypes/Thing;->d:J

    iput-wide v3, v2, LB/a;->d:J

    iget-wide v2, p1, Landroidx/appsearch/builtintypes/Thing;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->w(J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->g:Ljava/util/List;

    if-eqz v2, :cond_1

    new-array v3, p0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "alternateNames"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "description"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "image"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "url"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->k:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lv/u;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, p0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appsearch/builtintypes/PotentialAction;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_5
    const-string v2, "potentialActions"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-wide v2, p1, Landroidx/appsearch/builtintypes/Stopwatch;->l:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "baseTimeMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-wide v2, p1, Landroidx/appsearch/builtintypes/Stopwatch;->m:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "baseTimeMillisInElapsedRealtime"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v2, p1, Landroidx/appsearch/builtintypes/Stopwatch;->n:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "bootCount"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v2, p1, Landroidx/appsearch/builtintypes/Stopwatch;->o:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "status"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-wide v2, p1, Landroidx/appsearch/builtintypes/Stopwatch;->p:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "accumulatedDurationMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p1, p1, Landroidx/appsearch/builtintypes/Stopwatch;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lv/u;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appsearch/builtintypes/StopwatchLap;

    add-int/lit8 v4, p0, 0x1

    invoke-static {v3}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v3

    aput-object v3, v2, p0

    move p0, v4

    goto :goto_1

    :cond_7
    const-string p0, "laps"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/builtintypes/Stopwatch;

    invoke-virtual {p0, p1}, Landroidx/appsearch/builtintypes/$$__AppSearch__Stopwatch;->toGenericDocument(Landroidx/appsearch/builtintypes/Stopwatch;)Lv/u;

    move-result-object p0

    return-object p0
.end method
