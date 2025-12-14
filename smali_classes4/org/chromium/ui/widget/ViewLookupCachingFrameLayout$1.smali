.class Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout$1;->this$0:Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;

    invoke-static {p1}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->a(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout$1;->this$0:Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;

    invoke-static {p1, p2, p0}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->b(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout$1;->this$0:Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;

    invoke-static {p1}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->a(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout$1;->this$0:Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->b(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
