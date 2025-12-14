.class public final Lcom/google/android/appfunctions/$$__AppSearch__AppFunctionMetadata;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "AppFunctionMetadata"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/AppFunctionMetadata;
    .locals 9

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string p0, "enabledByDefault"

    invoke-virtual {p1, p0}, Lv/u;->d(Ljava/lang/String;)Z

    move-result v3

    const-string p0, "description"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    const-string v5, "parameters"

    invoke-virtual {p1, v5}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_1

    aget-object v7, v5, v0

    const-class v8, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    invoke-virtual {v7, v8, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v6

    const-string v0, "returnType"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object p1

    if-eqz p1, :cond_2

    const-class v0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    invoke-virtual {p1, v0, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    move-object v6, p1

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    new-instance p1, Lcom/google/android/appfunctions/AppFunctionMetadata;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/$$__AppSearch__AppFunctionMetadata;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/AppFunctionMetadata;

    move-result-object p0

    return-object p0
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

    const-class p0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    const-class v0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 22

    const-string v0, "AppFunctionMetadata"

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v12, "cardinality"

    invoke-static {v4, v10, v11, v0, v12}, LB/e;->k(IIILjava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/l;

    move-result-object v0

    new-instance v13, LB/i;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "enabledByDefault"

    const/4 v3, 0x4

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

    const-string v4, "description"

    const/4 v6, 0x2

    invoke-static {v3, v13, v4, v6, v2}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v3

    invoke-static {v3, v2, v2, v0, v2}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

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

    const-string v14, "parameters"

    const/4 v15, 0x6

    const-string v17, "AppFunctionParameterMetadata"

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

    const/4 v4, 0x2

    invoke-static {v4, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v2}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v14, "returnType"

    const/4 v15, 0x6

    const-string v17, "AppFunctionDataTypeMetadata"

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

    const-string p0, "AppFunctionMetadata"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/AppFunctionMetadata;)Lv/u;
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->b:Ljava/lang/String;

    const-string v3, "AppFunctionMetadata"

    iget-object v4, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->c:Z

    new-array v3, v0, [Z

    aput-boolean v2, v3, p0

    const-string v2, "enabledByDefault"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "description"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v2, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lv/u;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    add-int/lit8 v5, p0, 0x1

    invoke-static {v4}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v4

    aput-object v4, v3, p0

    move p0, v5

    goto :goto_0

    :cond_1
    const-string p0, "parameters"

    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object p0, p1, Lcom/google/android/appfunctions/AppFunctionMetadata;->f:Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p0

    const-string p1, "returnType"

    filled-new-array {p0}, [Lv/u;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/AppFunctionMetadata;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/$$__AppSearch__AppFunctionMetadata;->toGenericDocument(Lcom/google/android/appfunctions/AppFunctionMetadata;)Lv/u;

    move-result-object p0

    return-object p0
.end method
