.class public Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;,
        Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;

.field private mNativeTinAutocompleteController:J

.field private final mWebUISuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mWebUISuggestionList:Ljava/util/List;

    iput-wide p2, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mListener:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->init(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mWebUISuggestionList:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mListener:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->init(ZZ)V

    return-void
.end method

.method private static addOmniboxSuggestionToList(Ljava/util/List;Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static buildOmniboxSuggestion(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
    .locals 13
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v12, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-object v0, v12

    move v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V

    return-object v12
.end method

.method private static createOmniboxSuggestionList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private init(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;->get()Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;->init(Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->initWebUISuggestionsList()V

    return-void
.end method

.method private initWebUISuggestionsList()V
    .locals 15

    sget-object v0, Lcom/sec/terrace/TerraceConstants;->WEB_UI_URLS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "internet://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mWebUISuggestionList:Ljava/util/List;

    new-instance v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const-string v9, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v2

    move-object v7, v10

    move-object v8, v10

    invoke-direct/range {v3 .. v14}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    return-void
.end method

.method private onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mListener:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;->onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private putWebUIUrlsForInternet()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mListener:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mWebUISuggestionList:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;->onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    new-instance v0, Lorg/chromium/url/GURL;

    invoke-direct {v0, p2}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->putWebUIUrlsForInternet()V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;->get()Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;->start(JLcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public stop()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;->get()Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->mNativeTinAutocompleteController:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;->stop(JLcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;)V

    return-void
.end method
