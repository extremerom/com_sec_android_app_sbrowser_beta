.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA_TYPE:Ljava/lang/String; = "ContextualInsightData:ContextualInsight"


# instance fields
.field final appDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field appVersionCode:Ljava/lang/Long;
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field final creationTimestampMillis:J
    .annotation build Landroidx/appsearch/annotation/Document$CreationTimestampMillis;
    .end annotation
.end field

.field final currentLocale:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final dismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field final documentTtlMillis:J
    .annotation build Landroidx/appsearch/annotation/Document$TtlMillis;
    .end annotation
.end field

.field featureIcons:Ljava/util/List;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;"
        }
    .end annotation
.end field

.field feedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field

.field final rankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field final schemaVersion:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field final tapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->i(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->creationTimestampMillis:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->f(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->documentTtlMillis:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->k(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->schemaVersion:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->currentLocale:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->l(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->tapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->dismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->j(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->rankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->h(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->feedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appVersionCode:Ljava/lang/Long;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->g(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->featureIcons:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const-string v1, "ContextualInsightData"

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Ljava/lang/Long;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "ContextualInsightData"

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->id:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->creationTimestampMillis:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->documentTtlMillis:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->schemaVersion:J

    move-object v1, p9

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->currentLocale:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->tapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->dismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object v1, p12

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->rankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->feedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appVersionCode:Ljava/lang/Long;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->featureIcons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAppDomain()Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    return-object p0
.end method

.method public getAppVersionCode()Ljava/lang/Long;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->appVersionCode:Ljava/lang/Long;

    return-object p0
.end method

.method public getCreationTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->creationTimestampMillis:J

    return-wide v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->currentLocale:Ljava/lang/String;

    return-object p0
.end method

.method public getDismissAction()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->dismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public getDocumentTtlMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->documentTtlMillis:J

    return-wide v0
.end method

.method public getFeatureIcons()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->featureIcons:Ljava/util/List;

    return-object p0
.end method

.method public getFeedbackAction()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->feedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getRankingMetaData()Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->rankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    return-object p0
.end method

.method public getSchemaVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->schemaVersion:J

    return-wide v0
.end method

.method public getTapAction()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;->tapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method
