.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IHelpMeWriteController;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->lambda$extractContentForWritingComposer$0(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void
.end method

.method private extractContentByExtraction(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteConstants;->getDefaultResult()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v1, "HelpMeWriteController"

    const-string v2, "extractContentByExtraction(): request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;J)V

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V

    return-void
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$extractContentForWritingComposer$0(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;JLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "reason"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v0

    :catch_1
    :goto_0
    const-string v1, "true"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HelpMeWriteController"

    if-eqz v1, :cond_0

    invoke-direct {p0, p5, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p3

    const-string p2, "extractContentForWritingComposer(): success, duration -> "

    invoke-static {p0, p1, p2, v2}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const-string p5, "extractContentForWritingComposer(): failed, reason -> "

    if-eqz p4, :cond_1

    invoke-static {p5, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->extractContentByExtraction(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteConstants;->getDefaultResult(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    :goto_1
    return-void
.end method

.method private sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->showHelpMeWriteDebugPopupIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Lcom/sec/terrace/TerraceRequestPageContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private showHelpMeWriteDebugPopupIfNeeded(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isHelpMeWriteDebugOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showHelpMeWriteDebugPopupIfNeeded(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HelpMeWriteController"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->setTextContent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->show(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public extractContentForWritingComposer(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->isHelpMeWriteSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HelpMeWriteController"

    if-nez v0, :cond_0

    const-string v0, "extractContentForWritingComposer(): is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteConstants;->getDefaultResult()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteConstants;->getDefaultResult()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->sendResultForWritingComposer(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "extractContentForWritingComposer(): request"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->mActivity:Landroid/app/Activity;

    new-instance v9, LN4/i;

    const/4 v5, 0x1

    move-object v1, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, LN4/i;-><init>(JLjava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8, v0, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;->getContentForHelpMeWrite(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method
