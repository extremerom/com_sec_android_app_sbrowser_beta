.class public final Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__Attachment;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.types.Attachment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;
    .locals 6

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    aget-object v0, v0, v1

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    if-eqz v5, :cond_1

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object p1

    if-eqz p1, :cond_2

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {p1, v0, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    move-object v1, p1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    iget-object v3, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;-><init>(Lcom/google/android/appfunctions/schema/common/v1/types/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__Attachment;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

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
    .locals 12

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "com.google.android.appfunctions.schema.common.v1.types.Attachment"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "displayName"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2, v2}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    const-string v3, "mimeType"

    const/4 v4, 0x2

    invoke-static {p0, v0, v3, v4, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, p0, v2}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const-string v4, "cardinality"

    invoke-static {v6, v3, v1, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v9, LB/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v9, v1, v2}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v0, LB/i;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "uri"

    const/4 v5, 0x6

    const-string v7, "com.google.android.appfunctions.schema.common.v1.types.Uri"

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    const-string p0, "com.google.android.appfunctions.schema.common.v1.types.Attachment"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.types.Attachment"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "displayName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "mimeType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;->e:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p1

    const-string v0, "uri"

    filled-new-array {p1}, [Lv/u;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__Attachment;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;)Lv/u;

    move-result-object p0

    return-object p0
.end method
