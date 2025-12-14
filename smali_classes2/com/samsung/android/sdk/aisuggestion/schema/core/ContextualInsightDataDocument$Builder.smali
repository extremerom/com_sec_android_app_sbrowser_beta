.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

.field private mAppVersionCode:Ljava/lang/Long;

.field private mCreationTimestampMillis:J

.field private mCurrentLocale:Ljava/lang/String;

.field private mDismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

.field private mDocumentTtlMillis:J

.field private mFeatureIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mRankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

.field private mSchemaVersion:J

.field private mTapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;->getCURRENT_VERSION()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mSchemaVersion:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mAppDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mAppVersionCode:Ljava/lang/Long;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mCreationTimestampMillis:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mCurrentLocale:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mDismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mDocumentTtlMillis:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mFeatureIcons:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mFeedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mRankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mSchemaVersion:J

    return-wide v0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mTapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;I)V

    return-object v0
.end method

.method public setAppDomain(Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mAppDomain:Lcom/samsung/android/sdk/aisuggestion/schema/core/AppDomainDataDocument;

    return-object p0
.end method

.method public setAppVersionCode(Ljava/lang/Long;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mAppVersionCode:Ljava/lang/Long;

    return-object p0
.end method

.method public setCreationTimestampMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mCreationTimestampMillis:J

    return-object p0
.end method

.method public setCurrentLocale(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mCurrentLocale:Ljava/lang/String;

    return-object p0
.end method

.method public setDismissAction(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mDismissAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public setDocumentTtlMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mDocumentTtlMillis:J

    return-object p0
.end method

.method public setFeatureIcons(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mFeatureIcons:Ljava/util/List;

    return-object p0
.end method

.method public setFeedbackAction(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mFeedbackAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setRankingMetaData(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mRankingMetaData:Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    return-object p0
.end method

.method public setTapAction(Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument$Builder;->mTapAction:Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    return-object p0
.end method
