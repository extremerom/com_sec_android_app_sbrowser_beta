.class Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->requestUrlEditMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrl()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    return-void
.end method
