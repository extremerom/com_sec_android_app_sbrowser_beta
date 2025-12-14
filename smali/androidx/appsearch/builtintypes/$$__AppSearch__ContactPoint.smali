.class public final Landroidx/appsearch/builtintypes/$$__AppSearch__ContactPoint;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:ContactPoint"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/ContactPoint;
    .locals 30

    move-object/from16 v0, p1

    iget-object v1, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v2, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    array-length v6, v3

    if-eqz v6, :cond_0

    aget-object v3, v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v6, "alternateNames"

    invoke-virtual {v0, v6}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    const-string v7, "description"

    invoke-virtual {v0, v7}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v8, v7

    if-eqz v8, :cond_2

    aget-object v7, v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v5

    :goto_2
    const-string v8, "image"

    invoke-virtual {v0, v8}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v9, v8

    if-eqz v9, :cond_3

    aget-object v8, v8, v4

    goto :goto_3

    :cond_3
    move-object v8, v5

    :goto_3
    const-string v9, "url"

    invoke-virtual {v0, v9}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    array-length v10, v9

    if-eqz v10, :cond_4

    aget-object v9, v9, v4

    goto :goto_4

    :cond_4
    move-object v9, v5

    :goto_4
    const-string v10, "potentialActions"

    invoke-virtual {v0, v10}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v10

    if-eqz v10, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v10

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v4

    :goto_5
    array-length v13, v10

    if-ge v12, v13, :cond_6

    aget-object v13, v10, v12

    const-class v14, Landroidx/appsearch/builtintypes/PotentialAction;

    move-object/from16 v15, p2

    invoke-virtual {v13, v14, v15}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    move-object v11, v5

    :cond_6
    const-string v10, "label"

    invoke-virtual {v0, v10}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    array-length v12, v10

    if-eqz v12, :cond_7

    aget-object v4, v10, v4

    move-object/from16 v26, v4

    goto :goto_6

    :cond_7
    move-object/from16 v26, v5

    :goto_6
    const-string v4, "address"

    invoke-virtual {v0, v4}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v5

    :goto_7
    const-string v10, "email"

    invoke-virtual {v0, v10}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_8

    :cond_9
    move-object v10, v5

    :goto_8
    const-string v12, "telephone"

    invoke-virtual {v0, v12}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :cond_a
    new-instance v0, Lw/e;

    iget-object v12, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v12}, Lw/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lw/f;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lw/f;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lw/f;->o:Ljava/util/List;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-virtual {v0, v2}, Lw/k;->e(I)V

    iget-wide v12, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-virtual {v0, v12, v13}, Lw/k;->c(J)V

    iget-wide v1, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-virtual {v0, v1, v2}, Lw/k;->f(J)V

    invoke-virtual {v0, v3}, Lw/k;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lw/k;->b(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lw/k;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lw/k;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lw/k;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lw/k;->i(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/util/List;

    iput-object v4, v0, Lw/f;->m:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/util/List;

    iput-object v10, v0, Lw/f;->n:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Lw/f;->o:Ljava/util/List;

    new-instance v1, Landroidx/appsearch/builtintypes/ContactPoint;

    move-object v12, v1

    iget v15, v0, Lw/k;->c:I

    iget-wide v2, v0, Lw/k;->d:J

    move-wide/from16 v16, v2

    iget-wide v2, v0, Lw/k;->e:J

    move-wide/from16 v18, v2

    iget-object v2, v0, Lw/k;->f:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v0, Lw/k;->g:Ljava/util/ArrayList;

    move-object/from16 v21, v2

    iget-object v2, v0, Lw/k;->h:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lw/k;->i:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lw/k;->j:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v0, Lw/k;->k:Ljava/util/ArrayList;

    move-object/from16 v25, v2

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v27, v2

    iget-object v3, v0, Lw/f;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v28, v2

    iget-object v3, v0, Lw/f;->n:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v29, v2

    iget-object v3, v0, Lw/f;->o:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v0, Lw/k;->a:Ljava/lang/String;

    iget-object v14, v0, Lw/k;->b:Ljava/lang/String;

    invoke-direct/range {v12 .. v29}, Landroidx/appsearch/builtintypes/ContactPoint;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/builtintypes/$$__AppSearch__ContactPoint;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/ContactPoint;

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
    .locals 13

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "builtin:ContactPoint"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v1, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    const-string v4, "alternateNames"

    invoke-static {p0, v0, v4, v2, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v4, "description"

    invoke-static {v0, v3, v3, p0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    const-string v4, "image"

    invoke-static {p0, v0, v4, v1, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v4, "url"

    invoke-static {v0, v3, v3, p0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lt/b;->b(Lcom/google/firebase/messaging/l;Lv/n;I)LN/g;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v4, 0x3

    const-string v5, "cardinality"

    invoke-static {v7, v2, v4, v5}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v10, LB/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v10, v4, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v0, LB/i;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v5, "potentialActions"

    const/4 v6, 0x6

    const-string v8, "builtin:PotentialAction"

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, p0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v4, p0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v4, LN/g;

    iget-object v5, v0, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    const-string v5, "label"

    invoke-static {v4, v0, v5, v1, v2}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v4, "address"

    invoke-static {v0, v1, v3, p0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, v1, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    const-string v4, "email"

    invoke-static {p0, v0, v4, v2, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v4, "telephone"

    invoke-static {v0, v1, v3, p0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, v1, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lx/b;

    const-string v0, "Property defined more than once: "

    invoke-static {v0, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:ContactPoint"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/builtintypes/ContactPoint;)Lv/u;
    .locals 6

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    const-string v1, "builtin:ContactPoint"

    iget-object v2, p1, Landroidx/appsearch/builtintypes/Thing;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroidx/appsearch/builtintypes/Thing;->c:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->v(I)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, LB/a;

    iget-wide v1, p1, Landroidx/appsearch/builtintypes/Thing;->d:J

    iput-wide v1, v0, LB/a;->d:J

    iget-wide v0, p1, Landroidx/appsearch/builtintypes/Thing;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->w(J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Landroidx/appsearch/builtintypes/Thing;->g:Ljava/util/List;

    if-eqz v1, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "alternateNames"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v1, p1, Landroidx/appsearch/builtintypes/Thing;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "description"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v1, p1, Landroidx/appsearch/builtintypes/Thing;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "image"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v1, p1, Landroidx/appsearch/builtintypes/Thing;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "url"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v1, p1, Landroidx/appsearch/builtintypes/Thing;->k:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lv/u;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appsearch/builtintypes/PotentialAction;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v4

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_5
    const-string v1, "potentialActions"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object v1, p1, Landroidx/appsearch/builtintypes/ContactPoint;->l:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "label"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object v1, p1, Landroidx/appsearch/builtintypes/ContactPoint;->m:Ljava/util/List;

    if-eqz v1, :cond_8

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object v1, p1, Landroidx/appsearch/builtintypes/ContactPoint;->n:Ljava/util/List;

    if-eqz v1, :cond_9

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    iget-object p1, p1, Landroidx/appsearch/builtintypes/ContactPoint;->o:Ljava/util/List;

    if-eqz p1, :cond_a

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, "telephone"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/builtintypes/ContactPoint;

    invoke-virtual {p0, p1}, Landroidx/appsearch/builtintypes/$$__AppSearch__ContactPoint;->toGenericDocument(Landroidx/appsearch/builtintypes/ContactPoint;)Lv/u;

    move-result-object p0

    return-object p0
.end method
