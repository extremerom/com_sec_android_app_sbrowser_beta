.class public final Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__Timer;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.clock.Timer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;
    .locals 13

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string p2, "label"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    aget-object p2, p2, v0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string p2, "originalDurationMillis"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v4

    const-string p2, "durationMillis"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v6

    const-string p2, "timerState"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v8, p2

    if-eqz v8, :cond_1

    aget-object p2, p2, v0

    move-object v8, p2

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    const-string p2, "remainingDurationMillis"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v9

    const-string p2, "expireTimeEpochMillis"

    invoke-virtual {p1, p2}, Lv/u;->l(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v11, p2

    if-eqz v11, :cond_2

    aget-wide v11, p2, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object v11, p2

    goto :goto_2

    :cond_2
    move-object v11, v2

    :goto_2
    const-string p2, "isFiring"

    invoke-virtual {p1, p2}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-eqz p2, :cond_3

    aget-boolean p1, p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_3

    :cond_3
    move-object v12, v2

    :goto_3
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/Long;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__Timer;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;

    move-result-object p0

    return-object p0
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 25

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.clock.Timer"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "label"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v13, "cardinality"

    invoke-static {v7, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v14, "indexingType"

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/i;

    new-instance v11, LB/f;

    invoke-direct {v11, v3}, LB/f;-><init>(I)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v5, "originalDurationMillis"

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v12}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v4, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v4, LN/g;

    iget-object v5, v15, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Property defined more than once: "

    if-eqz v6, :cond_9

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v3}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "durationMillis"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move/from16 v19, v5

    move-object/from16 v23, v8

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v5, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const-string v8, "timerState"

    invoke-static {v5, v6, v8, v2, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v5

    invoke-static {v5, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v5, 0x3

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v3}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "remainingDurationMillis"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v6

    move/from16 v18, v5

    move-object/from16 v22, v8

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v5, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v3}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "expireTimeEpochMillis"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v6

    move/from16 v18, v5

    move-object/from16 v22, v8

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v5, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v1, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "isFiring"

    const/16 v16, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v1

    move/from16 v17, v5

    invoke-direct/range {v14 .. v22}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_4
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v7, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.clock.Timer"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;)Lv/u;
    .locals 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->a:Ljava/lang/String;

    const-string v3, "com.google.android.appfunctions.schema.common.v1.clock.Timer"

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "label"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->d:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "originalDurationMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->e:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "durationMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "timerState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->g:J

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "remainingDurationMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->h:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "expireTimeEpochMillis"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->i:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-array v0, v0, [Z

    aput-boolean p1, v0, p0

    const-string p0, "isFiring"

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__Timer;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;)Lv/u;

    move-result-object p0

    return-object p0
.end method
