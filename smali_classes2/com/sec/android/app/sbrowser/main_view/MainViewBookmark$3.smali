.class Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->startBookmarkAddedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
