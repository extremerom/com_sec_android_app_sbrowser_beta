.class Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setShowSelectModeAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

.field final synthetic val$mActionModeType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->val$mActionModeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(LY2/f0;)V
    .locals 2
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->d(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setAnimationRunning(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->d(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isTouchActionDowned()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->b(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->val$mActionModeType:I

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->scrollListIfRequired()V

    return-void
.end method

.method public onTransitionStart(LY2/f0;)V
    .locals 0
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->d(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setAnimationRunning(Z)V

    return-void
.end method
