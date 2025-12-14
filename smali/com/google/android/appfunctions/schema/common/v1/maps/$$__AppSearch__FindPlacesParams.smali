.class public final Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindPlacesParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.maps.FindPlacesParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;
    .locals 6

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "query"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v0, "locationBias"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v2, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    invoke-virtual {v0, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const-string p2, "maxCount"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int v5, p1

    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/maps/Location;I)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindPlacesParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;

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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.maps.FindPlacesParams"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "query"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lt/b;->b(Lcom/google/firebase/messaging/l;Lv/n;I)LN/g;

    move-result-object v1

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v13, 0x3

    const-string v14, "cardinality"

    invoke-static {v7, v2, v13, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v10, LB/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v10, v4, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v5, "locationBias"

    const/4 v6, 0x6

    const-string v8, "com.google.android.appfunctions.schema.common.v1.maps.Location"

    const/4 v9, 0x0

    move-object v4, v1

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

    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Property defined more than once: "

    if-eqz v6, :cond_3

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1, v2, v13, v14}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v5, "indexingType"

    invoke-static {v3, v3, v2, v5}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    new-instance v5, LB/f;

    invoke-direct {v5, v3}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "maxCount"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move/from16 v18, v1

    move-object/from16 v22, v5

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lx/b;

    invoke-static {v7, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.maps.FindPlacesParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.maps.FindPlacesParams"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "query"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;->d:Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "locationBias"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget p1, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;->e:I

    int-to-long v0, p1

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    const-string v0, "maxCount"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindPlacesParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/maps/FindPlacesParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
