.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onExpand(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;->onExpand(Z)V

    :cond_0
    return-void
.end method
