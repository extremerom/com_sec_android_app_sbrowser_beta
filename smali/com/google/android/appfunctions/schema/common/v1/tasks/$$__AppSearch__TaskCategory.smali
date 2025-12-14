.class public final Lcom/google/android/appfunctions/schema/common/v1/tasks/$$__AppSearch__TaskCategory;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.tasks.TaskCategory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;
    .locals 6

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string p2, "title"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    aget-object p2, p2, v0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string p2, "taskIds"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v4, p2

    :cond_1
    const-string p2, "isReadOnly"

    invoke-virtual {p1, p2}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-eqz p2, :cond_2

    aget-boolean p1, p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v5, p1

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/tasks/$$__AppSearch__TaskCategory;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;

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
    .locals 14

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "com.google.android.appfunctions.schema.common.v1.tasks.TaskCategory"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2, v2}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    const-string v3, "taskIds"

    const/4 v4, 0x1

    invoke-static {p0, v0, v3, v4, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v8, 0x2

    const-string v0, "cardinality"

    invoke-static {v8, v4, v1, v0}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v0, LB/i;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v6, "isReadOnly"

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, p0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/firebase/messaging/l;->a:Z

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

    const-string p0, "com.google.android.appfunctions.schema.common.v1.tasks.TaskCategory"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;)Lv/u;
    .locals 4

    const/4 p0, 0x0

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;->a:Ljava/lang/String;

    const-string v2, "com.google.android.appfunctions.schema.common.v1.tasks.TaskCategory"

    iget-object v3, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    new-array v2, p0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "taskIds"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean p1, v1, p0

    const-string p0, "isReadOnly"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/tasks/$$__AppSearch__TaskCategory;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/tasks/TaskCategory;)Lv/u;

    move-result-object p0

    return-object p0
.end method
