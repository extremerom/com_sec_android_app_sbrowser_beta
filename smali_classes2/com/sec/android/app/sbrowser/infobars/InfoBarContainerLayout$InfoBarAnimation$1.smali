.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->g(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->onAnimationEnd()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->a(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->a(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->getAnimationType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;->notifyAnimationFinished(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->j(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V

    return-void
.end method
