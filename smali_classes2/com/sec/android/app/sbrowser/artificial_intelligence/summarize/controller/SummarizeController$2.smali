.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getVideoCallback(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$requestCode:J

.field final synthetic val$targetLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$requestCode:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$targetLang:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->lambda$onGetLanguageList$0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onGetLanguageList$0(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->onGetLanguageListAsync(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private onGetLanguageListAsync(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->onFailedToGetTranscript()V

    return-void

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$targetLang:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getSubtitle(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V

    return-void
.end method

.method private removeHtmlCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "[&,#].{2,4};"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFailedToGetTranscript()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$requestCode:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$body:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$targetLang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestSummarize(JLjava/lang/String;Ljava/lang/String;)LNc/j0;

    return-void
.end method

.method public onGetLanguageList(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "console : list(before) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SummarizeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "["

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "console : list(after) : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public onGetTranscript(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->removeHtmlCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - YouTube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "Video title > "

    const-string v2, "\nVideo caption > "

    invoke-static {v1, v0, v2, p1}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$requestCode:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->val$targetLang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestSummarize(JLjava/lang/String;Ljava/lang/String;)LNc/j0;

    return-void
.end method
