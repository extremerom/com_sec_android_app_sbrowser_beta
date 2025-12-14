.class public final Lcom/google/android/appfunctions/schema/common/v1/video/$$__AppSearch__VideoItem;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.video.VideoItem"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;
    .locals 12

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "title"

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
    const-string v0, "durationInSecond"

    invoke-virtual {p1, v0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "thumbnailUri"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v7, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {v0, v7, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    const-string v0, "thumbnailWidth"

    invoke-virtual {p1, v0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    const-string v0, "thumbnailHeight"

    invoke-virtual {p1, v0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v8, v8

    const-string v0, "categories"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    :cond_2
    const-string v0, "attributionText"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v10, v0

    if-eqz v10, :cond_3

    aget-object v0, v0, v2

    move-object v10, v0

    goto :goto_2

    :cond_3
    move-object v10, v3

    :goto_2
    const-string v0, "transcriptId"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    aget-object p1, p1, v2

    move-object v11, p1

    goto :goto_3

    :cond_4
    move-object v11, v3

    :goto_3
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v3, v4

    move-wide v4, v5

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/appfunctions/schema/common/v1/types/Uri;IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/video/$$__AppSearch__VideoItem;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;

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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.video.VideoItem"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v7, 0x3

    const/4 v1, 0x1

    const-string v13, "cardinality"

    invoke-static {v7, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v14, "indexingType"

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/i;

    new-instance v11, LB/f;

    invoke-direct {v11, v3}, LB/f;-><init>(I)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v5, "durationInSecond"

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

    if-eqz v6, :cond_7

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v15, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v8, LB/d;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v9, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v5, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "thumbnailUri"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.Uri"

    const/16 v20, 0x0

    move-object v15, v5

    move/from16 v18, v6

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v6, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v6, v5, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v3}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "thumbnailWidth"

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

    if-eqz v8, :cond_5

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-static {v5, v1, v2, v13}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v3, v3, v1, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v3}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "thumbnailHeight"

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

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    const-string v5, "categories"

    invoke-static {v4, v6, v5, v1, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v4, "attributionText"

    invoke-static {v1, v3, v3, v0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v4, "transcriptId"

    invoke-static {v0, v1, v4, v2, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v7, v6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.video.VideoItem"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;)Lv/u;
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->a:Ljava/lang/String;

    const-string v3, "com.google.android.appfunctions.schema.common.v1.video.VideoItem"

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->d:J

    new-array v4, p0, [J

    aput-wide v2, v4, v0

    const-string v2, "durationInSecond"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->e:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "thumbnailUri"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->f:I

    int-to-long v2, v2

    new-array v4, p0, [J

    aput-wide v2, v4, v0

    const-string v2, "thumbnailWidth"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v2, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->g:I

    int-to-long v2, v2

    new-array p0, p0, [J

    aput-wide v2, p0, v0

    const-string v2, "thumbnailHeight"

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string v0, "categories"

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->i:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, "attributionText"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;->j:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string p1, "transcriptId"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/video/$$__AppSearch__VideoItem;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/video/VideoItem;)Lv/u;

    move-result-object p0

    return-object p0
.end method
