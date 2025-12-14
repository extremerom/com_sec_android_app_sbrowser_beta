.class public final Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__Event;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.calendar.Event"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v4, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    array-length v7, v3

    if-eqz v7, :cond_0

    aget-object v3, v3, v5

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v8, v3

    if-eqz v8, :cond_1

    aget-object v3, v3, v5

    move-object v8, v3

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v3, "startDate"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    const-class v9, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v9, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v10, v3

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const-string v3, "endDate"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v9, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v9, v1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const-string v1, "attendeeIds"

    invoke-virtual {v0, v1}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    const-string v3, "allDay"

    invoke-virtual {v0, v3}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v11, v3

    if-eqz v11, :cond_5

    aget-boolean v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v11, v3

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    const-string v3, "location"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v12, v3

    if-eqz v12, :cond_6

    aget-object v3, v3, v5

    move-object v12, v3

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const-string v3, "recurrenceSchedule"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v13, v3

    if-eqz v13, :cond_7

    aget-object v3, v3, v5

    move-object v13, v3

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    const-string v3, "eventStatus"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v14, v3

    if-eqz v14, :cond_8

    aget-object v3, v3, v5

    move-object v14, v3

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    const-string v3, "isReadOnly"

    invoke-virtual {v0, v3}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v15, v3

    if-eqz v15, :cond_9

    aget-boolean v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v15, v3

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    :goto_9
    const-string v3, "isInPublicCalendar"

    invoke-virtual {v0, v3}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v3, :cond_a

    array-length v6, v3

    if-eqz v6, :cond_a

    aget-boolean v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_a

    :cond_a
    const/16 v16, 0x0

    :goto_a
    const-string v3, "isOrganizer"

    invoke-virtual {v0, v3}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v6, v3

    if-eqz v6, :cond_b

    aget-boolean v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_b

    :cond_b
    const/16 v17, 0x0

    :goto_b
    const-string v3, "selfAttendeeStatus"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v3, v0

    if-eqz v3, :cond_c

    aget-object v0, v0, v5

    move-object/from16 v18, v0

    goto :goto_c

    :cond_c
    const/16 v18, 0x0

    :goto_c
    new-instance v0, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;

    iget-object v5, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v3, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__Event;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;

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

    const-string v1, "com.google.android.appfunctions.schema.common.v1.calendar.Event"

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

    if-eqz v8, :cond_b

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

    if-eqz v8, :cond_a

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    const-string v8, "attendeeIds"

    invoke-static {v7, v1, v8, v4, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "allDay"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v8, "location"

    invoke-static {v1, v7, v8, v5, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v7, "recurrenceSchedule"

    invoke-static {v1, v3, v3, v0, v7}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v5, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v7, "eventStatus"

    invoke-static {v0, v1, v7, v5, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v1, 0x2

    invoke-static {v1, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "isReadOnly"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "isInPublicCalendar"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_4
    iget-object v1, v7, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v4, v2, v15}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/i;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v17, "isOrganizer"

    const/16 v18, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v1

    invoke-direct/range {v16 .. v24}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v1, :cond_5

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

    :cond_5
    iget-object v1, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v4, "selfAttendeeStatus"

    invoke-static {v1, v2, v4, v5, v3}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v9, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.calendar.Event"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;)Lv/u;
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->a:Ljava/lang/String;

    const-string v3, "com.google.android.appfunctions.schema.common.v1.calendar.Event"

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "description"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "startDate"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->f:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    const-string v3, "endDate"

    filled-new-array {v2}, [Lv/u;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "attendeeIds"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v3, p0, [Z

    aput-boolean v2, v3, v0

    const-string v2, "allDay"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v3, "location"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->j:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "recurrenceSchedule"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->k:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "eventStatus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v3, p0, [Z

    aput-boolean v2, v3, v0

    const-string v2, "isReadOnly"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v3, p0, [Z

    aput-boolean v2, v3, v0

    const-string v2, "isInPublicCalendar"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_a
    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->n:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array p0, p0, [Z

    aput-boolean v2, p0, v0

    const-string v0, "isOrganizer"

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_b
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;->o:Ljava/lang/String;

    if-eqz p0, :cond_c

    const-string p1, "selfAttendeeStatus"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_c
    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/calendar/$$__AppSearch__Event;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/calendar/Event;)Lv/u;

    move-result-object p0

    return-object p0
.end method
