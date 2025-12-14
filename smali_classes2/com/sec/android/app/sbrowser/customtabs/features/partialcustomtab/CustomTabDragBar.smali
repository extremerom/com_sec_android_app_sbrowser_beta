.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabDragBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabDragBar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabDragBar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setHandleStrategy(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabDragBar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    return-void
.end method
