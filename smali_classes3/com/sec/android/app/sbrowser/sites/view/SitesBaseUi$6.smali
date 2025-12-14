.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showSelectAllCheckBoxAnimation(Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActionbarAnimRunning:Z

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->updateBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->c(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->scrollListIfRequired()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActionbarAnimRunning:Z

    return-void
.end method
