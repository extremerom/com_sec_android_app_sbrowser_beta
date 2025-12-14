.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadArticlesAloudDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueReadArticlesAloud(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->updateArticleIndex(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->start(Z)V

    return-void
.end method

.method public getCurrentTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->H(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result p0

    return p0
.end method

.method public getCurrentTabTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->H(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateTabForReadArticlesAloud(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getOrCreateTabForReadArticlesAloud(I)I

    move-result p0

    return p0
.end method

.method public getSummarizer()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->E(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getScsSummarizerClient()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object p0

    return-object p0
.end method

.method public isReadAloudShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result p0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->H(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->isValidTab(I)Z

    move-result p0

    return p0
.end method

.method public launchReadArticlesAloud(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->J(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V

    return-void
.end method

.method public loadUrl(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->loadUrl(ILjava/lang/String;)V

    return-void
.end method

.method public onActivateTab(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->setCurrentTab(I)V

    return-void
.end method

.method public onArticleIndexChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onArticleIndexChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->setCurrentTab(I)V

    return-void
.end method

.method public setHostTabId(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->setHostTabId(I)V

    return-void
.end method
