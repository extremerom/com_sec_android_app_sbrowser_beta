.class public final Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__TimeOfDayRange;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.types.TimeOfDayRange"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;
    .locals 5

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v0, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object p0, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string v1, "startTime"

    invoke-virtual {p1, v1}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v1

    const-class v2, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "endTime"

    invoke-virtual {p1, v4}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    :cond_1
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;

    invoke-direct {p1, v0, p0, v1, v3}, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__TimeOfDayRange;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;

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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 23

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.types.TimeOfDayRange"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v5, 0x2

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

    const-string v3, "startTime"

    const/4 v4, 0x6

    const-string v6, "com.google.android.appfunctions.schema.common.v1.types.TimeOfDay"

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

    const/4 v4, 0x2

    invoke-static {v4, v11, v12, v13}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v1}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "endTime"

    const/16 v16, 0x6

    const-string v18, "com.google.android.appfunctions.schema.common.v1.types.TimeOfDay"

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
    iget-object v1, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lx/b;

    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string p0, "com.google.android.appfunctions.schema.common.v1.types.TimeOfDayRange"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.types.TimeOfDayRange"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;->c:Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "startTime"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;->d:Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p1

    const-string v0, "endTime"

    filled-new-array {p1}, [Lv/u;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/types/$$__AppSearch__TimeOfDayRange;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDayRange;)Lv/u;

    move-result-object p0

    return-object p0
.end method
