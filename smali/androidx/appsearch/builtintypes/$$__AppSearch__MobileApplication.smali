.class public final Landroidx/appsearch/builtintypes/$$__AppSearch__MobileApplication;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:MobileApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/MobileApplication;
    .locals 23

    move-object/from16 v0, p1

    iget-object v1, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    array-length v6, v2

    if-eqz v6, :cond_0

    aget-object v2, v2, v4

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v5

    :goto_0
    const-string v2, "alternateNames"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    const-string v2, "description"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v6, v2

    if-eqz v6, :cond_2

    aget-object v2, v2, v4

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v5

    :goto_2
    const-string v2, "image"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v6, v2

    if-eqz v6, :cond_3

    aget-object v2, v2, v4

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object v13, v5

    :goto_3
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    aget-object v2, v2, v4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object v14, v5

    :goto_4
    const-string v2, "potentialActions"

    invoke-virtual {v0, v2}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v4

    :goto_5
    array-length v8, v2

    if-ge v7, v8, :cond_5

    aget-object v8, v2, v7

    const-class v9, Landroidx/appsearch/builtintypes/PotentialAction;

    move-object/from16 v15, p2

    invoke-virtual {v8, v9, v15}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    move-object v15, v6

    goto :goto_6

    :cond_6
    move-object v15, v5

    :goto_6
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v6, v2

    if-eqz v6, :cond_7

    aget-object v2, v2, v4

    move-object/from16 v16, v2

    goto :goto_7

    :cond_7
    move-object/from16 v16, v5

    :goto_7
    const-string v2, "displayName"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v6, v2

    if-eqz v6, :cond_8

    aget-object v2, v2, v4

    move-object/from16 v17, v2

    goto :goto_8

    :cond_8
    move-object/from16 v17, v5

    :goto_8
    const-string v2, "iconUri"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    array-length v7, v6

    if-nez v7, :cond_9

    goto :goto_9

    :cond_9
    const-string v7, "String"

    array-length v8, v6

    invoke-static {v8, v7, v2}, Lv/u;->q(ILjava/lang/String;Ljava/lang/String;)V

    aget-object v2, v6, v4

    goto :goto_a

    :cond_a
    :goto_9
    move-object v2, v5

    :goto_a
    if-eqz v2, :cond_b

    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-object v2, v5

    :goto_b
    move-object/from16 v18, v2

    goto :goto_c

    :cond_b
    move-object/from16 v18, v5

    :goto_c
    const-string v2, "sha256Certificate"

    invoke-virtual {v0, v2}, Lv/u;->f(Ljava/lang/String;)[[B

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v6, v2

    if-eqz v6, :cond_c

    aget-object v2, v2, v4

    move-object/from16 v19, v2

    goto :goto_d

    :cond_c
    move-object/from16 v19, v5

    :goto_d
    const-string v2, "updatedTimestamp"

    invoke-virtual {v0, v2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v20

    const-string v2, "className"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v2, v0

    if-eqz v2, :cond_d

    aget-object v0, v0, v4

    move-object/from16 v22, v0

    goto :goto_e

    :cond_d
    move-object/from16 v22, v5

    :goto_e
    new-instance v0, Landroidx/appsearch/builtintypes/MobileApplication;

    move-object v2, v0

    iget-object v4, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget v5, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    iget-wide v6, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    iget-wide v8, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-direct/range {v2 .. v22}, Landroidx/appsearch/builtintypes/MobileApplication;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BJLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/builtintypes/$$__AppSearch__MobileApplication;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/MobileApplication;

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

    const-class p0, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 25

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "builtin:MobileApplication"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v2, v4}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v5, "alternateNames"

    invoke-static {v0, v1, v5, v3, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v5, "description"

    invoke-static {v1, v2, v4, v0, v5}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

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

    if-eqz v7, :cond_5

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const-string v7, "packageName"

    invoke-static {v6, v1, v7, v2, v2}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v6, "displayName"

    invoke-static {v1, v2, v4, v0, v6}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v3, v2, v4}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v6, "iconUri"

    invoke-static {v0, v1, v6, v2, v4}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v4, v4, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "sha256Certificate"

    const/16 v18, 0x5

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

    if-eqz v7, :cond_4

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3, v14, v15}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v6, "indexingType"

    invoke-static {v3, v4, v3, v6}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/i;

    new-instance v7, LB/f;

    invoke-direct {v7, v3}, LB/f;-><init>(I)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v17, "updatedTimestamp"

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move/from16 v19, v1

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_2

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

    :cond_2
    iget-object v1, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v3, "className"

    invoke-static {v1, v6, v3, v2, v4}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v4, v4, v0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v8, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v8, v6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:MobileApplication"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/builtintypes/MobileApplication;)Lv/u;
    .locals 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    const-string v3, "builtin:MobileApplication"

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
    iget-object v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    new-array v3, v0, [Ljava/lang/String;

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

    move v4, v0

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
    iget-object v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->l:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "packageName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->m:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "displayName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->o:Landroid/net/Uri;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconUri"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    iget-object v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->p:[B

    if-eqz v2, :cond_a

    const-string v3, "sha256Certificate"

    filled-new-array {v2}, [[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->q(Ljava/lang/String;[[B)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_a
    iget-wide v2, p1, Landroidx/appsearch/builtintypes/MobileApplication;->q:J

    new-array p0, p0, [J

    aput-wide v2, p0, v0

    const-string v0, "updatedTimestamp"

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p0, p1, Landroidx/appsearch/builtintypes/MobileApplication;->r:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string p1, "className"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_b
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/builtintypes/MobileApplication;

    invoke-virtual {p0, p1}, Landroidx/appsearch/builtintypes/$$__AppSearch__MobileApplication;->toGenericDocument(Landroidx/appsearch/builtintypes/MobileApplication;)Lv/u;

    move-result-object p0

    return-object p0
.end method
