.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getDetectArticleCallback(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

.field final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->onSuccessAsync(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->lambda$onSuccessAsync$0(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSuccessAsync$0(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->showSummaryWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->w(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->requestSummarize(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    const-string p1, "Summarize"

    invoke-static {p0, p4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSuccessAsync(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->u(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroidx/lifecycle/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->r(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/J;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->u(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroidx/lifecycle/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->B(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0, v3, v4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->y(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->updateLoadingStates(IZZ)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "SummarizeController"

    const-string v0, "the article is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    const-string v0, "NoSummarize"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNoContent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14009e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBlockedDomain()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->updateNoContent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    const-string v1, "BlockedDomain"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoIndex()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->updateNoContent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    const-string v1, "NoIndex"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaywall()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->val$eventId:Ljava/lang/String;

    const-string v1, "Paywalls"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->x(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;)V

    return-void
.end method
