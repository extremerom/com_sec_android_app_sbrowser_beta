.class public final Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__UpdateEventParams;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.calendar.UpdateEventParams"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v4, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v3, "eventId"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    array-length v6, v3

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    aget-object v3, v3, v6

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    const-class v7, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    const-class v9, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v9, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object v10, v5

    :goto_2
    const-string v3, "startDate"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    const-class v11, Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v11, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    move-object v12, v3

    goto :goto_3

    :cond_3
    move-object v12, v5

    :goto_3
    const-string v3, "endDate"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v11, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    move-object v11, v3

    goto :goto_4

    :cond_4
    move-object v11, v5

    :goto_4
    const-string v3, "attendeeIds"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_5

    const-class v13, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringListField;

    invoke-virtual {v3, v13, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringListField;

    move-object v13, v3

    goto :goto_5

    :cond_5
    move-object v13, v5

    :goto_5
    const-string v3, "allDay"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_6

    const-class v14, Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanField;

    invoke-virtual {v3, v14, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanField;

    move-object v14, v3

    goto :goto_6

    :cond_6
    move-object v14, v5

    :goto_6
    const-string v3, "location"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v9, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    move-object v15, v3

    goto :goto_7

    :cond_7
    move-object v15, v5

    :goto_7
    const-string v3, "recurrenceSchedule"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v9, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    move-object/from16 v16, v3

    goto :goto_8

    :cond_8
    move-object/from16 v16, v5

    :goto_8
    const-string v3, "eventStatus"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v7, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    goto :goto_9

    :cond_9
    move-object v0, v5

    :goto_9
    new-instance v1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;

    iget-object v5, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v3, v1

    move-object v7, v8

    move-object v8, v10

    move-object v9, v12

    move-object v10, v11

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object v15, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringListField;Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;)V

    return-object v1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__UpdateEventParams;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;

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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringListField;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanField;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.calendar.UpdateEventParams"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "eventId"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lt/b;->b(Lcom/google/firebase/messaging/l;Lv/n;I)LN/g;

    move-result-object v1

    const/4 v7, 0x2

    const/4 v13, 0x1

    const-string v14, "cardinality"

    invoke-static {v7, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v10, LB/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v10, v4, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v5, "title"

    const/4 v6, 0x6

    const-string v8, "com.google.android.appfunctions.schema.common.v1.types.SetStringField"

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v4, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v4, LN/g;

    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Property defined more than once: "

    if-eqz v6, :cond_11

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "description"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetStringNullableField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_1

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "startDate"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetDateTimeField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_2

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "endDate"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetDateTimeField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_3

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "attendeeIds"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetStringListField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_4

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_4
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "allDay"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetBooleanField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_5

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_5
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "location"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetStringNullableField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_6

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_6
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "recurrenceSchedule"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetStringNullableField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_7

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_7
    iget-object v5, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5, v13, v2, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/d;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v6, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "eventStatus"

    const/16 v17, 0x6

    const-string v19, "com.google.android.appfunctions.schema.common.v1.types.SetStringField"

    const/16 v20, 0x0

    move-object v15, v1

    move/from16 v18, v5

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_8

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

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_8
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v7, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lx/b;

    invoke-static {v7, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.calendar.UpdateEventParams"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.calendar.UpdateEventParams"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "eventId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "title"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "description"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "startDate"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeField;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "endDate"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->h:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringListField;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "attendeeIds"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->i:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanField;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "allDay"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->j:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "location"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->k:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "recurrenceSchedule"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;->l:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p1

    const-string v0, "eventStatus"

    filled-new-array {p1}, [Lv/u;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__UpdateEventParams;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/UpdateEventParams;)Lv/u;

    move-result-object p0

    return-object p0
.end method
