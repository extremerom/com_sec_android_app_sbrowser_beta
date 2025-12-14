.class public final Landroidx/appsearch/usagereporting/$$__AppSearch__ImpressionAction;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "builtin:ImpressionAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/usagereporting/ImpressionAction;
    .locals 12

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string p2, "actionType"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v7, v2

    const-string p2, "query"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    aget-object p2, p2, v0

    move-object v8, p2

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    const-string p2, "referencedQualifiedId"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v3, p2

    if-eqz v3, :cond_1

    aget-object p2, p2, v0

    move-object v9, p2

    goto :goto_1

    :cond_1
    move-object v9, v2

    :goto_1
    const-string p2, "resultRankInBlock"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v10, v2

    const-string p2, "resultRankGlobal"

    invoke-virtual {p1, p2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int v11, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/appsearch/usagereporting/ImpressionAction;

    iget-wide v3, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    iget-wide v5, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroidx/appsearch/usagereporting/ImpressionAction;-><init>(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;II)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appsearch/usagereporting/$$__AppSearch__ImpressionAction;->fromGenericDocument(Lv/u;Lv/s;)Landroidx/appsearch/usagereporting/ImpressionAction;

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
    .locals 24

    const-string v0, "builtin:ImpressionAction"

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v12, "cardinality"

    invoke-static {v4, v10, v11, v0, v12}, LB/e;->k(IIILjava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/l;

    move-result-object v0

    const/4 v13, 0x0

    const-string v14, "indexingType"

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v13}, LB/f;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v2, "actionType"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v9}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v1, LN/g;

    iget-object v2, v15, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Property defined more than once: "

    if-eqz v3, :cond_5

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "query"

    const/4 v5, 0x2

    invoke-static {v2, v15, v3, v5, v10}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "referencedQualifiedId"

    invoke-static {v2, v5, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v10}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    new-instance v5, LB/f;

    invoke-direct {v5, v13}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "resultRankInBlock"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    move/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_1

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

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    new-instance v5, LB/f;

    invoke-direct {v5, v13}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "resultRankGlobal"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    move/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_2

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

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

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

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "builtin:ImpressionAction"

    return-object p0
.end method

.method public toGenericDocument(Landroidx/appsearch/usagereporting/ImpressionAction;)Lv/u;
    .locals 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/usagereporting/TakenAction;->a:Ljava/lang/String;

    const-string v3, "builtin:ImpressionAction"

    iget-object v4, p1, Landroidx/appsearch/usagereporting/TakenAction;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Landroidx/appsearch/usagereporting/TakenAction;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->w(J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v2, LB/a;

    iget-wide v3, p1, Landroidx/appsearch/usagereporting/TakenAction;->d:J

    iput-wide v3, v2, LB/a;->d:J

    iget v2, p1, Landroidx/appsearch/usagereporting/TakenAction;->e:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "actionType"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Landroidx/appsearch/usagereporting/ImpressionAction;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "query"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v2, p1, Landroidx/appsearch/usagereporting/ImpressionAction;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "referencedQualifiedId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget v2, p1, Landroidx/appsearch/usagereporting/ImpressionAction;->h:I

    int-to-long v2, v2

    new-array v4, v0, [J

    aput-wide v2, v4, p0

    const-string v2, "resultRankInBlock"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget p1, p1, Landroidx/appsearch/usagereporting/ImpressionAction;->i:I

    int-to-long v2, p1

    new-array p1, v0, [J

    aput-wide v2, p1, p0

    const-string p0, "resultRankGlobal"

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Landroidx/appsearch/usagereporting/ImpressionAction;

    invoke-virtual {p0, p1}, Landroidx/appsearch/usagereporting/$$__AppSearch__ImpressionAction;->toGenericDocument(Landroidx/appsearch/usagereporting/ImpressionAction;)Lv/u;

    move-result-object p0

    return-object p0
.end method
