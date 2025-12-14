.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->startLoadingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

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

    const-string p1, "TransBarLoadingAnimation"

    const-string v0, "startLoadingAnimation onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Ll9/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Ll9/e;

    move-result-object p1

    invoke-virtual {p1}, Ll9/e;->b()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;->onLoadingAnimationCancel()V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "TransBarLoadingAnimation"

    const-string p1, "startLoadingAnimation onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "TransBarLoadingAnimation"

    const-string p1, "startLoadingAnimation onAnimationRepeat"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {p1}, Lz3/t;->i()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startLoadingAnimation onAnimationStart isAnimating: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->i()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransBarLoadingAnimation"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
