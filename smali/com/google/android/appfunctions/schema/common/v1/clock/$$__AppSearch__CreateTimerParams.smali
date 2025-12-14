.class public final Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__CreateTimerParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.clock.CreateTimerParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;
    .locals 8

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

    move-result-wide v5

    const-string p2, "timerState"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v4, p2

    if-eqz v4, :cond_1

    aget-object p2, p2, v0

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const-string p2, "externalId"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-eqz p2, :cond_2

    aget-object p1, p1, v0

    move-object v7, p1

    goto :goto_2

    :cond_2
    move-object v7, v2

    :goto_2
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__CreateTimerParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;

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
    .locals 12

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "com.google.android.appfunctions.schema.common.v1.clock.CreateTimerParams"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "label"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2, v2}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x3

    const-string v4, "cardinality"

    invoke-static {v6, v0, v3, v4}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v3, "indexingType"

    invoke-static {v2, v2, v0, v3}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v0, LB/i;

    new-instance v10, LB/f;

    invoke-direct {v10, v2}, LB/f;-><init>(I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "originalDurationMillis"

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v3, p0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v3, LN/g;

    iget-object v4, v0, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "timerState"

    invoke-static {v3, v0, v4, v1, v2}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v3, "externalId"

    invoke-static {v0, v2, v2, p0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v2, v2, v2}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lx/b;

    const-string v0, "Property defined more than once: "

    invoke-static {v0, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.clock.CreateTimerParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;)Lv/u;
    .locals 4

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.clock.CreateTimerParams"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "label"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->d:J

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const-string v0, "originalDurationMillis"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "timerState"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "externalId"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/clock/$$__AppSearch__CreateTimerParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/clock/CreateTimerParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
