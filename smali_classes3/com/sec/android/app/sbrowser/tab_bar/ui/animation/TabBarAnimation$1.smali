.class Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->onAnimationCancel(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->onAnimationEnd(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->onAnimationStart(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V

    return-void
.end method
