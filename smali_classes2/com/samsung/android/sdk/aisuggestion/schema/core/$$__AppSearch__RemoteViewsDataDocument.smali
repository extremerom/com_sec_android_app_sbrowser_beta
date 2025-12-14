.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__RemoteViewsDataDocument;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:RemoteViews"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;"
        }
    .end annotation

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string p0, "remoteViews"

    invoke-virtual {p1, p0}, Lv/u;->f(Ljava/lang/String;)[[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-eqz v4, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    const-string v4, "imageBindings"

    invoke-virtual {p1, v4}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_1

    aget-object v7, v4, v6

    const-class v8, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-virtual {v7, v8, p2}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v5, "actionBindings"

    invoke-virtual {p1, v5}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    array-length v5, p1

    if-ge v0, v5, :cond_3

    aget-object v5, p1, v0

    const-class v6, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-virtual {v5, v6, p2}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object v5, v3

    new-instance p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__RemoteViewsDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
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

    const-class p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    const-class v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 22

    const-string v0, "ContextualInsightData:RemoteViews"

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v12, "cardinality"

    invoke-static {v4, v10, v11, v0, v12}, LB/e;->k(IIILjava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/l;

    move-result-object v0

    new-instance v13, LB/i;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "remoteViews"

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v9}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

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

    iput-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v1, LN/g;

    iget-object v3, v13, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Property defined more than once: "

    if-eqz v4, :cond_5

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, v13, v2}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v2}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v14, "imageBindings"

    const/4 v15, 0x6

    const-string v17, "ContextualInsightData:ImageResource"

    const/16 v18, 0x0

    move-object v13, v3

    move/from16 v16, v4

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v21}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v4, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4, v3, v2}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v2}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v14, "actionBindings"

    const/4 v15, 0x6

    const-string v17, "ContextualInsightData:PotentialAction"

    const/16 v18, 0x0

    move-object v13, v3

    move/from16 v16, v4

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v21}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v5, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v5, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v5, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:RemoteViews"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;)Lv/u;
    .locals 6

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;->id:Ljava/lang/String;

    const-string v2, "ContextualInsightData:RemoteViews"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;->remoteViews:[B

    if-eqz v0, :cond_0

    const-string v1, "remoteViews"

    filled-new-array {v0}, [[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->q(Ljava/lang/String;[[B)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;->imageBindings:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lv/u;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v4

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_1
    const-string v0, "imageBindings"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;->actionBindings:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lv/u;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_3
    const-string p1, "actionBindings"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__RemoteViewsDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
