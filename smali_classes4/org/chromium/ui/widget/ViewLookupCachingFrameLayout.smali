.class public Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;
.super Lorg/chromium/ui/widget/OptimizedFrameLayout;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCachedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field final mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->mCachedViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->setHierarchyListenerOnTree(Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setHierarchyListenerOnTree(Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->setHierarchyListenerOnTree(Landroid/view/View;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCache()Landroid/util/SparseArray;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;->mCachedViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
