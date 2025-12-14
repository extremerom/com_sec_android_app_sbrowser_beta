.class public final Landroidx/appsearch/builtintypes/$$__AppSearch__Alarm;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:Alarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Alarm;
    .locals 45

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    array-length v7, v4

    if-eqz v7, :cond_0

    aget-object v4, v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v7, "alternateNames"

    invoke-virtual {v0, v7}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "description"

    invoke-virtual {v0, v8}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    array-length v9, v8

    if-eqz v9, :cond_2

    aget-object v8, v8, v5

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const-string v9, "image"

    invoke-virtual {v0, v9}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    array-length v10, v9

    if-eqz v10, :cond_3

    aget-object v9, v9, v5

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const-string v10, "url"

    invoke-virtual {v0, v10}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    array-length v11, v10

    if-eqz v11, :cond_4

    aget-object v10, v10, v5

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const-string v11, "potentialActions"

    invoke-virtual {v0, v11}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v11

    if-eqz v11, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v11

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v5

    :goto_5
    array-length v14, v11

    if-ge v13, v14, :cond_6

    aget-object v14, v11, v13

    const-class v15, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v14, v15, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :cond_6
    const-string v11, "enabled"

    invoke-virtual {v0, v11}, Lv/u;->d(Ljava/lang/String;)Z

    move-result v11

    const-string v13, "daysOfWeek"

    invoke-virtual {v0, v13}, Lv/u;->l(Ljava/lang/String;)[J

    move-result-object v14

    if-eqz v14, :cond_8

    array-length v15, v14

    new-array v15, v15, [I

    move v6, v5

    :goto_6
    array-length v5, v14

    move/from16 v16, v11

    if-ge v6, v5, :cond_7

    move-object v5, v12

    aget-wide v11, v14, v6

    long-to-int v11, v11

    aput v11, v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object v12, v5

    move/from16 v11, v16

    goto :goto_6

    :cond_7
    move-object v5, v12

    goto :goto_7

    :cond_8
    move/from16 v16, v11

    move-object v5, v12

    const/4 v15, 0x0

    :goto_7
    const-string v6, "hour"

    invoke-virtual {v0, v6}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v11, v11

    const-string v12, "minute"

    move-object/from16 v17, v13

    invoke-virtual {v0, v12}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v13

    long-to-int v13, v13

    const-string v14, "blackoutPeriodStartDate"

    invoke-virtual {v0, v14}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v12

    if-eqz v14, :cond_9

    array-length v12, v14

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    aget-object v14, v14, v12

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_8
    const-string v12, "blackoutPeriodEndDate"

    invoke-virtual {v0, v12}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v14

    if-eqz v12, :cond_a

    array-length v14, v12

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    aget-object v12, v12, v14

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    const/4 v12, 0x0

    :goto_9
    const-string v14, "ringtone"

    invoke-virtual {v0, v14}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v39, v12

    if-eqz v14, :cond_b

    array-length v12, v14

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    aget-object v14, v14, v12

    move-object/from16 v40, v14

    goto :goto_a

    :cond_b
    const/16 v40, 0x0

    :goto_a
    const-string v12, "shouldVibrate"

    invoke-virtual {v0, v12}, Lv/u;->d(Ljava/lang/String;)Z

    move-result v41

    const-string v12, "previousInstance"

    invoke-virtual {v0, v12}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v12

    const-class v14, Landroidx/appsearch/builtintypes/AlarmInstance;

    if-eqz v12, :cond_c

    invoke-virtual {v12, v14, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appsearch/builtintypes/AlarmInstance;

    move-object/from16 v42, v12

    goto :goto_b

    :cond_c
    const/16 v42, 0x0

    :goto_b
    const-string v12, "nextInstance"

    invoke-virtual {v0, v12}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v12, v14, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appsearch/builtintypes/AlarmInstance;

    move-object/from16 v43, v1

    goto :goto_c

    :cond_d
    const/16 v43, 0x0

    :goto_c
    const-string v1, "computingDevice"

    invoke-virtual {v0, v1}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lw/a;

    iget-object v12, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v12}, Lw/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-virtual {v1, v3}, Lw/k;->e(I)V

    move v3, v13

    iget-wide v12, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-virtual {v1, v12, v13}, Lw/k;->c(J)V

    iget-wide v12, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-virtual {v1, v12, v13}, Lw/k;->f(J)V

    invoke-virtual {v1, v4}, Lw/k;->h(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lw/k;->b(Ljava/util/List;)V

    invoke-virtual {v1, v8}, Lw/k;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lw/k;->g(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lw/k;->j(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lw/k;->i(Ljava/util/ArrayList;)V

    move/from16 v2, v16

    iput-boolean v2, v1, Lw/b;->m:Z

    if-eqz v15, :cond_e

    array-length v2, v15

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v2, :cond_e

    aget v4, v15, v12

    const/4 v5, 0x7

    const/4 v7, 0x1

    move-object/from16 v8, v17

    invoke-static {v4, v7, v5, v8}, LG6/a;->b(IIILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_e
    iput-object v15, v1, Lw/b;->n:[I

    const/16 v2, 0x17

    const/4 v4, 0x0

    invoke-static {v11, v4, v2, v6}, LG6/a;->b(IIILjava/lang/String;)V

    iput v11, v1, Lw/b;->o:I

    const/16 v2, 0x3b

    move-object/from16 v5, v18

    invoke-static {v3, v4, v2, v5}, LG6/a;->b(IIILjava/lang/String;)V

    iput v3, v1, Lw/b;->p:I

    const-string v2, "yyyy-MM-dd"

    move-object/from16 v14, v19

    if-eqz v19, :cond_f

    invoke-static {v2, v14}, LG5/h2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "blackoutPeriodStartDate must be in the format: yyyy-MM-dd"

    invoke-static {v4, v3}, LG6/a;->a(Ljava/lang/String;Z)V

    :cond_f
    iput-object v14, v1, Lw/b;->q:Ljava/lang/String;

    move-object/from16 v12, v39

    if-eqz v39, :cond_10

    invoke-static {v2, v12}, LG5/h2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "blackoutPeriodEndDate must be in the format: yyyy-MM-dd"

    invoke-static {v3, v2}, LG6/a;->a(Ljava/lang/String;Z)V

    :cond_10
    new-instance v2, Landroidx/appsearch/builtintypes/Alarm;

    move-object/from16 v20, v2

    iget v3, v1, Lw/k;->c:I

    move/from16 v23, v3

    iget-wide v3, v1, Lw/k;->d:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lw/k;->e:J

    move-wide/from16 v26, v3

    iget-object v3, v1, Lw/k;->f:Ljava/lang/String;

    move-object/from16 v28, v3

    iget-object v3, v1, Lw/k;->g:Ljava/util/ArrayList;

    move-object/from16 v29, v3

    iget-object v3, v1, Lw/k;->h:Ljava/lang/String;

    move-object/from16 v30, v3

    iget-object v3, v1, Lw/k;->i:Ljava/lang/String;

    move-object/from16 v31, v3

    iget-object v3, v1, Lw/k;->j:Ljava/lang/String;

    move-object/from16 v32, v3

    iget-object v3, v1, Lw/k;->k:Ljava/util/ArrayList;

    move-object/from16 v33, v3

    iget-boolean v3, v1, Lw/b;->m:Z

    move/from16 v34, v3

    iget-object v3, v1, Lw/b;->n:[I

    move-object/from16 v35, v3

    iget v3, v1, Lw/b;->o:I

    move/from16 v36, v3

    iget v3, v1, Lw/b;->p:I

    move/from16 v37, v3

    iget-object v3, v1, Lw/b;->q:Ljava/lang/String;

    move-object/from16 v38, v3

    iget-object v3, v1, Lw/k;->a:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v1, v1, Lw/k;->b:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v39, v12

    move/from16 v44, v0

    invoke-direct/range {v20 .. v44}, Landroidx/appsearch/builtintypes/Alarm;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroidx/appsearch/builtintypes/AlarmInstance;Landroidx/appsearch/builtintypes/AlarmInstance;I)V

    return-object v2
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/builtintypes/$$__AppSearch__Alarm;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Alarm;

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

    const-class v0, Landroidx/appsearch/builtintypes/AlarmInstance;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 25

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "builtin:Alarm"

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

    const/4 v14, 0x3

    const-string v15, "cardinality"

    invoke-static {v8, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

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

    if-eqz v7, :cond_11

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "enabled"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v6

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_1

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

    :cond_1
    iget-object v1, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v6, "indexingType"

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "daysOfWeek"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    if-eqz v9, :cond_f

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "hour"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    if-eqz v9, :cond_e

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v4}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "minute"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    if-eqz v9, :cond_d

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v9, "blackoutPeriodStartDate"

    invoke-static {v1, v7, v9, v2, v4}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v7, "blackoutPeriodEndDate"

    invoke-static {v1, v4, v4, v0, v7}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v4, v4, v4}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v7, "ringtone"

    invoke-static {v0, v1, v7, v2, v4}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v4, v4, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "shouldVibrate"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, v2, v4}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/d;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v9, v4}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "previousInstance"

    const/16 v18, 0x6

    const-string v20, "builtin:AlarmInstance"

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v19, v2

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_6
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2, v1, v4}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/d;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v9, v4}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "nextInstance"

    const/16 v18, 0x6

    const-string v20, "builtin:AlarmInstance"

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v19, v2

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_7
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v4, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    new-instance v3, LB/f;

    invoke-direct {v3, v4}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "computingDevice"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_8
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lx/b;

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lx/b;

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lx/b;

    invoke-static {v8, v6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:Alarm"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/builtintypes/Alarm;)Lv/u;
    .locals 7

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    const-string v3, "builtin:Alarm"

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
    iget-boolean v2, p1, Landroidx/appsearch/builtintypes/Alarm;->l:Z

    new-array v3, v0, [Z

    aput-boolean v2, v3, p0

    const-string v2, "enabled"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->m:[I

    if-eqz v2, :cond_8

    array-length v3, v2

    new-array v3, v3, [J

    move v4, p0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_7

    aget v5, v2, v4

    int-to-long v5, v5

    aput-wide v5, v3, v4

    add-int/2addr v4, v0

    goto :goto_1

    :cond_7
    const-string v2, "daysOfWeek"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget v2, p1, Landroidx/appsearch/builtintypes/Alarm;->n:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "hour"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v2, p1, Landroidx/appsearch/builtintypes/Alarm;->o:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "minute"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->p:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v3, "blackoutPeriodStartDate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->q:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v3, "blackoutPeriodEndDate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_a
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->r:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "ringtone"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_b
    iget-boolean v2, p1, Landroidx/appsearch/builtintypes/Alarm;->s:Z

    new-array v3, v0, [Z

    aput-boolean v2, v3, p0

    const-string v2, "shouldVibrate"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->t:Landroidx/appsearch/builtintypes/AlarmInstance;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "previousInstance"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_c
    iget-object v2, p1, Landroidx/appsearch/builtintypes/Alarm;->u:Landroidx/appsearch/builtintypes/AlarmInstance;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "nextInstance"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_d
    iget p1, p1, Landroidx/appsearch/builtintypes/Alarm;->v:I

    int-to-long v2, p1

    new-array p1, v0, [J

    aput-wide v2, p1, p0

    const-string p0, "computingDevice"

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/builtintypes/Alarm;

    invoke-virtual {p0, p1}, Landroidx/appsearch/builtintypes/$$__AppSearch__Alarm;->toGenericDocument(Landroidx/appsearch/builtintypes/Alarm;)Lv/u;

    move-result-object p0

    return-object p0
.end method
