.class public final Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__FindMessagesParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.messages.FindMessagesParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;
    .locals 10

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "senderId"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    aget-object v0, v0, v2

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v0, "recipientsIds"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    :cond_1
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    const-class v6, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    const-string v0, "endTime"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v6, p2

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    const-string p2, "query"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v0, p2

    if-eqz v0, :cond_4

    aget-object p2, p2, v2

    goto :goto_3

    :cond_4
    move-object p2, v3

    :goto_3
    const-string v0, "read"

    invoke-virtual {p1, v0}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v8, v0

    if-eqz v8, :cond_5

    aget-boolean v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_5
    move-object v8, v3

    :goto_4
    const-string v0, "maxCount"

    invoke-virtual {p1, v0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v9, v2

    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Ljava/lang/String;Ljava/lang/Boolean;I)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__FindMessagesParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;

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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 25

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.messages.FindMessagesParams"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "senderId"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v4, "recipientsIds"

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0, v3}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v1

    const/4 v9, 0x2

    const/4 v4, 0x3

    const-string v15, "cardinality"

    invoke-static {v9, v5, v4, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v12, LB/d;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v6, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v7, "startTime"

    const/4 v8, 0x6

    const-string v10, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v6, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v6, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v6, LN/g;

    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Property defined more than once: "

    if-eqz v8, :cond_7

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v7, 0x2

    invoke-static {v7, v5, v4, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v8, LB/d;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v10, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "endTime"

    const/16 v18, 0x6

    const-string v20, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v19, v7

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    const-string v8, "query"

    invoke-static {v7, v1, v8, v2, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v5, v4, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "read"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_2

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1, v5, v4, v15}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v2, "indexingType"

    invoke-static {v3, v3, v5, v2}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    new-instance v4, LB/f;

    invoke-direct {v4, v3}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "maxCount"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.messages.FindMessagesParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;)Lv/u;
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->a:Ljava/lang/String;

    const-string v3, "com.google.android.appfunctions.schema.common.v1.messages.FindMessagesParams"

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "senderId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "recipientsIds"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "startTime"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "endTime"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "query"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v3, p0, [Z

    aput-boolean v2, v3, v0

    const-string v2, "read"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget p1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;->i:I

    int-to-long v2, p1

    new-array p0, p0, [J

    aput-wide v2, p0, v0

    const-string p1, "maxCount"

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__FindMessagesParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/messages/FindMessagesParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
