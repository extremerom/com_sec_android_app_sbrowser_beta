.class public final Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindDirectionsParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.maps.FindDirectionsParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;
    .locals 9

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "origin"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    const-class v2, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v0, "destinations"

    invoke-virtual {p1, v0}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v6

    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_1

    aget-object v8, v0, v7

    invoke-virtual {v8, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "transportationType"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    aget-object p2, p2, v6

    goto :goto_2

    :cond_2
    move-object p2, v3

    :goto_2
    const-string v0, "avoidTypes"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v6, p1

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/maps/Location;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindDirectionsParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;

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
    .locals 23

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.maps.FindDirectionsParams"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-string v13, "cardinality"

    invoke-static {v1, v13, v5, v11, v12}, LB/e;->h(ILjava/lang/String;III)LN/g;

    move-result-object v2

    new-instance v8, LB/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v3, v1}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v14, LB/i;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "origin"

    const/4 v4, 0x6

    const-string v6, "com.google.android.appfunctions.schema.common.v1.maps.Location"

    const/4 v7, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v10}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_0

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

    iput-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v2, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v2, LN/g;

    iget-object v3, v14, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Property defined more than once: "

    if-eqz v4, :cond_3

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, v14, v1}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v11, v12, v13}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v1}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "destinations"

    const/16 v16, 0x6

    const-string v18, "com.google.android.appfunctions.schema.common.v1.maps.Location"

    const/16 v19, 0x0

    move-object v14, v3

    move/from16 v17, v4

    move-object/from16 v20, v6

    invoke-direct/range {v14 .. v22}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    iput-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v4, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v4, "transportationType"

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v1}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "avoidTypes"

    invoke-static {v2, v1, v1, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v11, v1, v1, v1}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lx/b;

    invoke-static {v5, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v5, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.maps.FindDirectionsParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;)Lv/u;
    .locals 6

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.maps.FindDirectionsParams"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->c:Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "origin"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->d:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lv/u;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/appfunctions/schema/common/v1/maps/Location;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v4

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_1
    const-string v1, "destinations"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "transportationType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;->f:Ljava/util/List;

    if-eqz p1, :cond_4

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, "avoidTypes"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/maps/$$__AppSearch__FindDirectionsParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/maps/FindDirectionsParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
