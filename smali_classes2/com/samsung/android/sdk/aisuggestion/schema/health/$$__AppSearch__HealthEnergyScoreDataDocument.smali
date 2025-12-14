.class public final Lcom/samsung/android/sdk/aisuggestion/schema/health/$$__AppSearch__HealthEnergyScoreDataDocument;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:HealthEnergyScore"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v4, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string v3, "schemaVersion"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "reasonDescription"

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
    const-string v3, "insightMessageTitle"

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
    const-string v3, "insightMessageDescription"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v9, v3

    if-eqz v9, :cond_2

    aget-object v3, v3, v5

    move-object v9, v3

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const-string v3, "refreshDocumentAction"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_3

    const-class v10, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-virtual {v3, v10, v1}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const-string v3, "trackerName"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v10, v3

    if-eqz v10, :cond_4

    aget-object v3, v3, v5

    move-object v10, v3

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const-string v3, "score"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v11

    const-string v3, "scoreDiff"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v16

    const-string v3, "grade"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v6, v3

    if-eqz v6, :cond_5

    aget-object v3, v3, v5

    move-object/from16 v18, v3

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    :goto_5
    const-string v3, "characterUri"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v6, v3

    if-eqz v6, :cond_6

    aget-object v3, v3, v5

    move-object/from16 v19, v3

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    const-string v3, "measurementDate"

    invoke-virtual {v0, v3}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v21

    const-string v3, "characterIcon"

    invoke-virtual {v0, v3}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v3

    if-eqz v3, :cond_7

    const-class v6, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-virtual {v3, v6, v1}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    const-string v3, "healthInsightMessageTitle"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v6, v3

    if-eqz v6, :cond_8

    aget-object v3, v3, v5

    move-object/from16 v23, v3

    goto :goto_8

    :cond_8
    const/16 v23, 0x0

    :goto_8
    const-string v3, "healthInsightMessageDescription"

    invoke-virtual {v0, v3}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v6, v3

    if-eqz v6, :cond_9

    aget-object v3, v3, v5

    move-object/from16 v24, v3

    goto :goto_9

    :cond_9
    const/16 v24, 0x0

    :goto_9
    const-string v3, "isByLLM"

    invoke-virtual {v0, v3}, Lv/u;->d(Ljava/lang/String;)Z

    move-result v20

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;

    move-object v3, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-wide v9, v11

    move-wide/from16 v11, v16

    move-object/from16 v25, v13

    move-object/from16 v13, v18

    move-wide/from16 v26, v14

    move-object/from16 v14, v19

    move-wide/from16 v15, v21

    move-object/from16 v17, v1

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    invoke-direct/range {v3 .. v20}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->id:Ljava/lang/String;

    move-wide/from16 v1, v26

    iput-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->schemaVersion:J

    move-object/from16 v3, v25

    iput-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->refreshDocumentAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object v0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/health/$$__AppSearch__HealthEnergyScoreDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 2
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

    const-class v1, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-static {p0, v0, v1}, LB/e;->t(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 24

    const-string v0, "ContextualInsightData:HealthEnergyScore"

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

    if-eqz v3, :cond_d

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

    if-eqz v6, :cond_c

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v6, "trackerName"

    invoke-static {v3, v2, v6, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    invoke-static {v2, v13, v13, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    invoke-static {v13, v13, v10, v14}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    new-instance v6, LB/f;

    invoke-direct {v6, v13}, LB/f;-><init>(I)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v16, "score"

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

    if-eqz v6, :cond_b

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

    const-string v16, "scoreDiff"

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

    move-result v6

    if-eqz v6, :cond_a

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v6, "grade"

    invoke-static {v2, v3, v6, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "characterUri"

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

    const-string v16, "measurementDate"

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    move/from16 v18, v2

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v23}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_4

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

    :cond_4
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2, v3, v13}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v6, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7, v13}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v2, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "characterIcon"

    const/16 v16, 0x6

    const-string v18, "ContextualInsightData:ImageResource"

    const/16 v19, 0x0

    move-object v14, v2

    move/from16 v17, v3

    move-object/from16 v20, v6

    invoke-direct/range {v14 .. v22}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v3, :cond_5

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

    :cond_5
    iget-object v3, v2, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v6, "healthInsightMessageTitle"

    invoke-static {v3, v2, v6, v5, v13}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    const-string v3, "healthInsightMessageDescription"

    invoke-static {v2, v13, v13, v0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v2

    invoke-static {v2, v5, v13, v13, v13}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/l;->b(Lv/l;)V

    const/4 v2, 0x2

    invoke-static {v2, v10, v11, v12}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v3, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "isByLLM"

    const/16 v16, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v3

    move/from16 v17, v2

    invoke-direct/range {v14 .. v22}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_6

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

    :cond_6
    iget-object v2, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lx/b;

    invoke-static {v4, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lx/b;

    invoke-static {v4, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lx/b;

    invoke-static {v4, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:HealthEnergyScore"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;)Lv/u;
    .locals 5

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;->id:Ljava/lang/String;

    const-string v2, "ContextualInsightData:HealthEnergyScore"

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
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getTrackerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "trackerName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getScore()J

    move-result-wide v0

    new-array v3, v2, [J

    aput-wide v0, v3, v4

    const-string v0, "score"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getScoreDiff()J

    move-result-wide v0

    new-array v3, v2, [J

    aput-wide v0, v3, v4

    const-string v0, "scoreDiff"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getGrade()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "grade"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getCharacterUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "characterUri"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getMeasurementDate()J

    move-result-wide v0

    new-array v3, v2, [J

    aput-wide v0, v3, v4

    const-string v0, "measurementDate"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getCharacterIcon()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "characterIcon"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getHealthInsightMessageTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "healthInsightMessageTitle"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->getHealthInsightMessageDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "healthInsightMessageDescription"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;->isByLLM()Z

    move-result p1

    new-array v0, v2, [Z

    aput-boolean p1, v0, v4

    const-string p1, "isByLLM"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/health/$$__AppSearch__HealthEnergyScoreDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/health/HealthEnergyScoreDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
