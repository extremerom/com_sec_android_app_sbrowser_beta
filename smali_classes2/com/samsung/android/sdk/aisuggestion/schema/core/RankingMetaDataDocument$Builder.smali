.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mImportantContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImportantTimeFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespace:Ljava/lang/String;

.field private mValidContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidTimeFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mImportantContexts:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mImportantTimeFrames:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mValidContexts:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mValidTimeFrames:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;I)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setImportantInsightContexts(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/InsightContext;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, La9/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, La9/b;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mImportantContexts:Ljava/util/List;

    return-object p0
.end method

.method public setImportantTimeFrames(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mImportantTimeFrames:Ljava/util/List;

    return-object p0
.end method

.method public setValidInsightContexts(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/InsightContext;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, La9/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, La9/b;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mValidContexts:Ljava/util/List;

    return-object p0
.end method

.method public setValidTimeFrames(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument$Builder;->mValidTimeFrames:Ljava/util/List;

    return-object p0
.end method
