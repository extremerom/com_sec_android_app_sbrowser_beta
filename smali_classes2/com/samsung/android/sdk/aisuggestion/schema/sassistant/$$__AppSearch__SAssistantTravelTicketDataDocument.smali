.class public final Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantTravelTicketDataDocument;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:SAssistantTravelTicket"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v1, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string v2, "schemaVersion"

    invoke-virtual {v0, v2}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v14

    const-string v2, "reasonDescription"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    array-length v6, v2

    if-eqz v6, :cond_0

    aget-object v2, v2, v4

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v2, "insightMessageTitle"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v7, v2

    if-eqz v7, :cond_1

    aget-object v2, v2, v4

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v2, "insightMessageDescription"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v8, v2

    if-eqz v8, :cond_2

    aget-object v2, v2, v4

    move-object v8, v2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const-string v2, "refreshDocumentAction"

    invoke-virtual {v0, v2}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v2

    if-eqz v2, :cond_3

    const-class v9, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object/from16 v10, p2

    invoke-virtual {v2, v9, v10}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object v13, v2

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const-string v2, "transport"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v9, v2

    if-eqz v9, :cond_4

    aget-object v2, v2, v4

    move-object v9, v2

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const-string v2, "cardArtColor"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v10, v2

    if-eqz v10, :cond_5

    aget-object v2, v2, v4

    move-object v10, v2

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    const-string v2, "cardFontColor"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v11, v2

    if-eqz v11, :cond_6

    aget-object v2, v2, v4

    move-object v11, v2

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v12, v2

    if-eqz v12, :cond_7

    aget-object v2, v2, v4

    move-object v12, v2

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    const-string v2, "departureDate"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v5, v2

    if-eqz v5, :cond_8

    aget-object v2, v2, v4

    move-object/from16 v16, v2

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    const-string v2, "departureTime"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v5, v2

    if-eqz v5, :cond_9

    aget-object v2, v2, v4

    move-object/from16 v17, v2

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    :goto_9
    const-string v2, "fromName"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v5, v2

    if-eqz v5, :cond_a

    aget-object v2, v2, v4

    move-object/from16 v18, v2

    goto :goto_a

    :cond_a
    const/16 v18, 0x0

    :goto_a
    const-string v2, "toName"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v5, v2

    if-eqz v5, :cond_b

    aget-object v2, v2, v4

    move-object/from16 v19, v2

    goto :goto_b

    :cond_b
    const/16 v19, 0x0

    :goto_b
    const-string v2, "from"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v5, v2

    if-eqz v5, :cond_c

    aget-object v2, v2, v4

    move-object/from16 v20, v2

    goto :goto_c

    :cond_c
    const/16 v20, 0x0

    :goto_c
    const-string v2, "to"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    array-length v5, v2

    if-eqz v5, :cond_d

    aget-object v2, v2, v4

    move-object/from16 v21, v2

    goto :goto_d

    :cond_d
    const/16 v21, 0x0

    :goto_d
    const-string v2, "gate"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    array-length v5, v2

    if-eqz v5, :cond_e

    aget-object v2, v2, v4

    move-object/from16 v22, v2

    goto :goto_e

    :cond_e
    const/16 v22, 0x0

    :goto_e
    const-string v2, "terminal"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    array-length v5, v2

    if-eqz v5, :cond_f

    aget-object v2, v2, v4

    move-object/from16 v23, v2

    goto :goto_f

    :cond_f
    const/16 v23, 0x0

    :goto_f
    const-string v2, "transportationNumber"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    array-length v5, v2

    if-eqz v5, :cond_10

    aget-object v2, v2, v4

    move-object/from16 v24, v2

    goto :goto_10

    :cond_10
    const/16 v24, 0x0

    :goto_10
    const-string v2, "seat"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    array-length v5, v2

    if-eqz v5, :cond_11

    aget-object v2, v2, v4

    move-object/from16 v25, v2

    goto :goto_11

    :cond_11
    const/16 v25, 0x0

    :goto_11
    const-string v2, "klass"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    array-length v5, v2

    if-eqz v5, :cond_12

    aget-object v2, v2, v4

    move-object/from16 v26, v2

    goto :goto_12

    :cond_12
    const/16 v26, 0x0

    :goto_12
    const-string v2, "appCardId"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    array-length v5, v2

    if-eqz v5, :cond_13

    aget-object v2, v2, v4

    move-object/from16 v27, v2

    goto :goto_13

    :cond_13
    const/16 v27, 0x0

    :goto_13
    const-string v2, "estimatedOrActualStartDate"

    invoke-virtual {v0, v2}, Lv/u;->l(Ljava/lang/String;)[J

    move-result-object v2

    if-eqz v2, :cond_14

    array-length v5, v2

    if-eqz v5, :cond_14

    aget-wide v28, v2, v4

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v28, v2

    goto :goto_14

    :cond_14
    const/16 v28, 0x0

    :goto_14
    const-string v2, "estimatedOrActualEndDate"

    invoke-virtual {v0, v2}, Lv/u;->l(Ljava/lang/String;)[J

    move-result-object v2

    if-eqz v2, :cond_15

    array-length v5, v2

    if-eqz v5, :cond_15

    aget-wide v29, v2, v4

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_15

    :cond_15
    const/16 v29, 0x0

    :goto_15
    const-string v2, "departTimezone"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    array-length v5, v2

    if-eqz v5, :cond_16

    aget-object v2, v2, v4

    move-object/from16 v30, v2

    goto :goto_16

    :cond_16
    const/16 v30, 0x0

    :goto_16
    const-string v2, "arriveTimezone"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    array-length v5, v2

    if-eqz v5, :cond_17

    aget-object v2, v2, v4

    move-object/from16 v31, v2

    goto :goto_17

    :cond_17
    const/16 v31, 0x0

    :goto_17
    const-string v2, "capturedDepartureDate"

    invoke-virtual {v0, v2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    array-length v2, v0

    if-eqz v2, :cond_18

    aget-object v0, v0, v4

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    new-instance v5, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;

    move-object v2, v5

    move-object v4, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v9

    move-object v9, v11

    move-object v11, v10

    move-object v10, v12

    move-object v12, v11

    move-object/from16 v11, v16

    move-object/from16 v32, v12

    move-object/from16 v12, v17

    move-object/from16 v33, v13

    move-object/from16 v13, v18

    move-wide/from16 v34, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v27, v0

    invoke-direct/range {v2 .. v27}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->id:Ljava/lang/String;

    move-wide/from16 v1, v34

    iput-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->schemaVersion:J

    move-object/from16 v2, v33

    iput-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->refreshDocumentAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object v0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantTravelTicketDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
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

    const-class p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    const-class v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    const-string v0, "ContextualInsightData:SAssistantTravelTicket"

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v12, "cardinality"

    invoke-static {v4, v10, v11, v0, v12}, LV0/c;->e(IIILjava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/l;

    move-result-object v0

    const/4 v13, 0x0

    const-string v14, "indexingType"

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/i;

    new-instance v8, LB/f;

    invoke-direct {v8, v13}, LB/f;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v2, "schemaVersion"

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

    if-eqz v3, :cond_7

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "reasonDescription"

    const/4 v5, 0x2

    invoke-static {v2, v15, v3, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "insightMessageTitle"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "insightMessageDescription"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    invoke-static {v2, v13, v13, v0, v13}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v13}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v2, LB/i;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "refreshDocumentAction"

    const/16 v17, 0x6

    const-string v19, "ContextualInsightData:PotentialAction"

    const/16 v20, 0x0

    move-object v15, v2

    move/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v3, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v6, "transport"

    invoke-static {v3, v2, v6, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "cardArtColor"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "cardFontColor"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "departureDate"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "departureTime"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "fromName"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "toName"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "from"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "to"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "gate"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "terminal"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "transportationNumber"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "seat"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    const-string v3, "klass"

    invoke-static {v0, v2, v3, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "appCardId"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    new-instance v6, LB/f;

    invoke-direct {v6, v13}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "estimatedOrActualStartDate"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    move/from16 v18, v2

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    new-instance v6, LB/f;

    invoke-direct {v6, v13}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "estimatedOrActualEndDate"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    move/from16 v18, v2

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v13, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "departTimezone"

    invoke-static {v1, v3, v2, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v2, "arriveTimezone"

    invoke-static {v1, v13, v13, v0, v2}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v2, "capturedDepartureDate"

    invoke-static {v0, v1, v2, v5, v13}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v13, v13, v0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object v0

    return-object v0

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

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v4, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:SAssistantTravelTicket"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;)Lv/u;
    .locals 5

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->id:Ljava/lang/String;

    const-string v2, "ContextualInsightData:SAssistantTravelTicket"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->schemaVersion:J

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    const-string v0, "schemaVersion"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->reasonDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "reasonDescription"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->insightMessageTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "insightMessageTitle"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->insightMessageDescription:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "insightMessageDescription"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->refreshDocumentAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "refreshDocumentAction"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getTransport()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "transport"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getCardArtColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "cardArtColor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getCardFontColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "cardFontColor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getDepartureDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "departureDate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getDepartureTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "departureTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getFromName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "fromName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getToName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "toName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "from"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "to"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getGate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "gate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getTerminal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "terminal"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getTransportationNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "transportationNumber"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_10
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getSeat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "seat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_11
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getKlass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "klass"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getAppCardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "appCardId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getEstimatedOrActualStartDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-array v3, v2, [J

    aput-wide v0, v3, v4

    const-string v0, "estimatedOrActualStartDate"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getEstimatedOrActualEndDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-array v2, v2, [J

    aput-wide v0, v2, v4

    const-string v0, "estimatedOrActualEndDate"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_15
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getDepartTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "departTimezone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_16
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getArriveTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "arriveTimezone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_17
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;->getCapturedDepartureDate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v0, "capturedDepartureDate"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantTravelTicketDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantTravelTicketDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
