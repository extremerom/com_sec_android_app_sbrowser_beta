.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->setTranslationToolBarY(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->val$y:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->val$y:F

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onTopOffsetsChanged(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$4;->val$y:F

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottomOffsetsChanged(F)V

    :cond_1
    :goto_0
    return-void
.end method
