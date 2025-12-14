.class public final Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__CreateEventParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.calendar.CreateEventParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;
    .locals 13

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
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    if-eqz v5, :cond_1

    aget-object v0, v0, v2

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const-string v0, "startDate"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    const-class v6, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    const-string v0, "endDate"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v6, p2

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    const-string p2, "attendeeIds"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_4
    move-object p2, v0

    :goto_4
    const-string v0, "allDay"

    invoke-virtual {p1, v0}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v8, v0

    if-eqz v8, :cond_5

    aget-boolean v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_5
    move-object v8, v3

    :goto_5
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v9, v0

    if-eqz v9, :cond_6

    aget-object v0, v0, v2

    move-object v9, v0

    goto :goto_6

    :cond_6
    move-object v9, v3

    :goto_6
    const-string v0, "recurrenceSchedule"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v10, v0

    if-eqz v10, :cond_7

    aget-object v0, v0, v2

    move-object v10, v0

    goto :goto_7

    :cond_7
    move-object v10, v3

    :goto_7
    const-string v0, "eventStatus"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v11, v0

    if-eqz v11, :cond_8

    aget-object v0, v0, v2

    move-object v11, v0

    goto :goto_8

    :cond_8
    move-object v11, v3

    :goto_8
    const-string v0, "externalId"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    array-length v0, p1

    if-eqz v0, :cond_9

    aget-object p1, p1, v2

    move-object v12, p1

    goto :goto_9

    :cond_9
    move-object v12, v3

    :goto_9
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__CreateEventParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;

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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 25

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.calendar.CreateEventParams"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v4, "description"

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0, v3}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v1

    const/4 v9, 0x3

    const/4 v4, 0x1

    const-string v15, "cardinality"

    invoke-static {v9, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v12, LB/d;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v6, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v7, "startDate"

    const/4 v8, 0x6

    const-string v10, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v6, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v6, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v6, LN/g;

    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Property defined more than once: "

    if-eqz v8, :cond_5

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v7, 0x3

    invoke-static {v7, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v8, LB/d;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v10, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "endDate"

    const/16 v18, 0x6

    const-string v20, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v19, v7

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    const-string v8, "attendeeIds"

    invoke-static {v7, v1, v8, v4, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "allDay"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v4, "location"

    invoke-static {v1, v2, v4, v5, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v2, "recurrenceSchedule"

    invoke-static {v1, v3, v3, v0, v2}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v5, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v2, "eventStatus"

    invoke-static {v0, v1, v2, v5, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v2, "externalId"

    invoke-static {v1, v3, v3, v0, v2}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v5, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.calendar.CreateEventParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;)Lv/u;
    .locals 4

    const/4 p0, 0x0

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->a:Ljava/lang/String;

    const-string v2, "com.google.android.appfunctions.schema.common.v1.calendar.CreateEventParams"

    iget-object v3, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "description"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    const-string v2, "startDate"

    filled-new-array {v1}, [Lv/u;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    const-string v2, "endDate"

    filled-new-array {v1}, [Lv/u;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    new-array v2, p0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "attendeeIds"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Z

    aput-boolean v1, v2, p0

    const-string p0, "allDay"

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->i:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string v1, "location"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->j:Ljava/lang/String;

    if-eqz p0, :cond_7

    const-string v1, "recurrenceSchedule"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->k:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string v1, "eventStatus"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;->l:Ljava/lang/String;

    if-eqz p0, :cond_9

    const-string p1, "externalId"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__CreateEventParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/CreateEventParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
