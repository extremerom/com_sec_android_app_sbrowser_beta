.class public Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;
    }
.end annotation


# instance fields
.field private mOnContentLayoutChangeListener:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;)Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->mOnContentLayoutChangeListener:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;

    return-object p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->mOnContentLayoutChangeListener:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->mOnContentLayoutChangeListener:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setContentsLayoutAccessibilityDelegate()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setOnContentLayoutChangeListener(Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ContentsLayout;->mOnContentLayoutChangeListener:Lcom/sec/android/app/sbrowser/main_view/ContentsLayout$OnContentLayoutChangeListener;

    return-void
.end method
