.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->C(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->C(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->o(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->y(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->x(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
