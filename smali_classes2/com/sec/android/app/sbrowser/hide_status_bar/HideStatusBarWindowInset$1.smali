.class Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "HideStatusBarWindowInset"

    const-string v0, "WindowInsetsAnimationControl: onCancelled"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->a(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)Landroid/os/CancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->a(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)Landroid/os/CancellationSignal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->d(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->f(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "HideStatusBarWindowInset"

    const-string v0, "WindowInsetsAnimationControl: onFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->f(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "HideStatusBarWindowInset"

    const-string v0, "WindowInsetsAnimationControl: onReady"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->d(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->e(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;Landroid/view/WindowInsetsAnimationController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->b(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)Landroid/view/WindowInsetsAnimationController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;->this$0:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->c(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p0, p2, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->u(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V

    return-void
.end method
