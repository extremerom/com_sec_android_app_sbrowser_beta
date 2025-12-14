.class public Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mArticleHeader:Ljava/lang/String;

.field private mInnerHTML:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mTextContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mTextContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mArticleHeader:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mLocale:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mInnerHTML:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mArticleHeader:Ljava/lang/String;

    return-object p0
.end method

.method public getInnerHTML()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mInnerHTML:Ljava/lang/String;

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mTextContent:Ljava/lang/String;

    return-object p0
.end method

.method public setInnerHTML(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->mInnerHTML:Ljava/lang/String;

    return-void
.end method
