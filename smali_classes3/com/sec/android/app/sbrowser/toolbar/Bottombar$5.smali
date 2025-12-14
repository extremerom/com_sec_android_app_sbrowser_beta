.class Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBrowsingAssistAnimationVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "si__BottomBar"

    const-string v0, "updateBrowsingAssistBadgeVisibility onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->q(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "si__BottomBar"

    const-string v0, "updateBrowsingAssistBadgeVisibility onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->q(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAnimationCount(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "si__BottomBar"

    const-string p1, "updateBrowsingAssistBadgeVisibility onAnimationRepeat"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateBrowsingAssistBadgeVisibility onAnimationStart isAnimating: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->f(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {v0}, Lz3/t;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__BottomBar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->f(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {p1}, Lz3/t;->i()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->g(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->g(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x1

    sput-boolean p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sBrowsingAssistAnimationShown:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->o(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    return-void
.end method
