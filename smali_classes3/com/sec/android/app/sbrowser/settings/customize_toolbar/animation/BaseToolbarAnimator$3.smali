.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->e(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->setUrlbarVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
