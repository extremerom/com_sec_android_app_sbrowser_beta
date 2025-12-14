.class public final Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__SetLongField;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.types.SetLongField"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;
    .locals 2

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object p2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;

    iget-object p0, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0, v1}, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__SetLongField;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;

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
    .locals 13

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "cardinality"

    invoke-static {v1, v4, v5, v2, v3}, LB/e;->h(ILjava/lang/String;III)LN/g;

    move-result-object v11

    const-string v3, "indexingType"

    invoke-static {v1, v1, v2, v3}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v12, LB/i;

    new-instance v9, LB/f;

    invoke-direct {v9, v1}, LB/f;-><init>(I)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v3, "value"

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-object v1, v12, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v11, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv/o;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "com.google.android.appfunctions.schema.common.v1.types.SetLongField"

    invoke-direct {v1, v0, p0, v2}, Lv/o;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v1

    :cond_0
    new-instance p0, Lx/b;

    const-string v0, "Property defined more than once: "

    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.types.SetLongField"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.types.SetLongField"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;->c:J

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__SetLongField;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/SetLongField;)Lv/u;

    move-result-object p0

    return-object p0
.end method
