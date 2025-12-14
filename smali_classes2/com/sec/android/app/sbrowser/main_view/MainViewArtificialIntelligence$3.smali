.class Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getArticle(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field final synthetic val$tabId:I

.field final synthetic val$tryCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tryCount:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tabId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V
    .locals 0

    invoke-direct {p3, p0, p2, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->lambda$onSuccess$0(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->lambda$onSuccess$1(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->p(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getArticle:ReadArticlesAloud] article detection result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "si__MainViewArtificialIntelligence"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p4, 0xa

    if-ge p1, p4, :cond_0

    const-string p4, "[getArticle:ReadArticlesAloud] article is null"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)Landroid/os/Handler;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)Landroid/os/Handler;

    move-result-object p4

    new-instance p5, Lcom/sec/android/app/sbrowser/main_view/x;

    invoke-direct {p5, p2, p1, p3, p0}, Lcom/sec/android/app/sbrowser/main_view/x;-><init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {p4, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, " "

    invoke-static {p0, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBlockedDomain()V
    .locals 2

    const-string v0, "si__MainViewArtificialIntelligence"

    const-string v1, "[getArticle:ReadArticlesAloud] onBlockedDomain"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onNoIndex()V
    .locals 2

    const-string v0, "si__MainViewArtificialIntelligence"

    const-string v1, "[getArticle:ReadArticlesAloud] onNoIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onPaywall()V
    .locals 2

    const-string v0, "si__MainViewArtificialIntelligence"

    const-string v1, "[getArticle:ReadArticlesAloud] onPaywall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tryCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$tabId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    new-instance v4, Lcom/sec/android/app/sbrowser/main_view/w;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/w;-><init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->getExtractSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V

    return-void
.end method
