.class Lorg/chromium/components/find_in_page/FindResultBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/chromium/components/find_in_page/FindResultBar;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar$2;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar$2;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lorg/chromium/components/find_in_page/FindResultBar$2;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
