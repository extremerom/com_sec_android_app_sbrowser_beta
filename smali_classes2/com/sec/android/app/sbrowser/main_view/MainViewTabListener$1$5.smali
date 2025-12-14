.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->setTranslationBottomBarY(FZ)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;->val$y:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$5;->val$y:F

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBottomOffsetsChanged(F)V

    return-void
.end method
