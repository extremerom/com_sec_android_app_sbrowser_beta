.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract continueReadArticlesAloud(I)V
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getCurrentTabTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentTabUrl()Ljava/lang/String;
.end method

.method public abstract getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
.end method

.method public abstract getOrCreateTabForReadArticlesAloud(I)I
.end method

.method public abstract getSummarizer()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
.end method

.method public abstract isReadAloudShowing()Z
.end method

.method public abstract isValidTab(I)Z
.end method

.method public abstract launchReadArticlesAloud(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadUrl(ILjava/lang/String;)V
.end method

.method public abstract onActivateTab(I)V
.end method

.method public abstract onArticleIndexChanged()V
.end method

.method public abstract setCurrentTab(I)V
.end method

.method public abstract setHostTabId(I)V
.end method
