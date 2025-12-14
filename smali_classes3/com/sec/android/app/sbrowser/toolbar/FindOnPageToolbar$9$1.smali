.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->w(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->x(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
