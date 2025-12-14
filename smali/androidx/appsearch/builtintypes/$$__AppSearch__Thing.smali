.class public final Landroidx/appsearch/builtintypes/$$__AppSearch__Thing;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:Thing"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Thing;
    .locals 16

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

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    array-length v10, v0

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    array-length v10, v0

    if-ge v4, v10, :cond_5

    aget-object v10, v0, v4

    const-class v11, Landroidx/appsearch/builtintypes/PotentialAction;

    move-object/from16 v12, p2

    invoke-virtual {v10, v11, v12}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appsearch/builtintypes/PotentialAction;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Lw/j;

    iget-object v4, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lw/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-virtual {v0, v2}, Lw/k;->e(I)V

    iget-wide v10, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-virtual {v0, v10, v11}, Lw/k;->c(J)V

    iget-wide v1, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-virtual {v0, v1, v2}, Lw/k;->f(J)V

    invoke-virtual {v0, v3}, Lw/k;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lw/k;->b(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lw/k;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lw/k;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lw/k;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lw/k;->i(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw/k;->l:Z

    new-instance v1, Landroidx/appsearch/builtintypes/Thing;

    iget v5, v0, Lw/k;->c:I

    iget-wide v6, v0, Lw/k;->d:J

    iget-wide v8, v0, Lw/k;->e:J

    iget-object v10, v0, Lw/k;->f:Ljava/lang/String;

    iget-object v11, v0, Lw/k;->g:Ljava/util/ArrayList;

    iget-object v12, v0, Lw/k;->h:Ljava/lang/String;

    iget-object v13, v0, Lw/k;->i:Ljava/lang/String;

    iget-object v14, v0, Lw/k;->j:Ljava/lang/String;

    iget-object v15, v0, Lw/k;->k:Ljava/util/ArrayList;

    iget-object v3, v0, Lw/k;->a:Ljava/lang/String;

    iget-object v4, v0, Lw/k;->b:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/builtintypes/$$__AppSearch__Thing;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/builtintypes/Thing;

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

    const-string v0, "builtin:Thing"

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

    const/4 v1, 0x3

    const-string v4, "cardinality"

    invoke-static {v7, v2, v1, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v10, LB/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v10, v1, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v0, LB/i;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v5, "potentialActions"

    const/4 v6, 0x6

    const-string v8, "builtin:PotentialAction"

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, p0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v1, LN/g;

    iget-object v2, v0, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lx/b;

    const-string v0, "Property defined more than once: "

    invoke-static {v0, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:Thing"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/builtintypes/Thing;)Lv/u;
    .locals 4

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    const-string v1, "builtin:Thing"

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
    invoke-virtual {p1}, Landroidx/appsearch/builtintypes/Thing;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "alternateNames"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "description"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v0, p1, Landroidx/appsearch/builtintypes/Thing;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "url"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object p1, p1, Landroidx/appsearch/builtintypes/Thing;->k:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lv/u;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appsearch/builtintypes/PotentialAction;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_5
    const-string p1, "potentialActions"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/builtintypes/Thing;

    invoke-virtual {p0, p1}, Landroidx/appsearch/builtintypes/$$__AppSearch__Thing;->toGenericDocument(Landroidx/appsearch/builtintypes/Thing;)Lv/u;

    move-result-object p0

    return-object p0
.end method
