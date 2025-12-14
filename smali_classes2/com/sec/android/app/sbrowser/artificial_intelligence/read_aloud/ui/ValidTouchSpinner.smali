.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SourceFile"


# instance fields
.field private mIsValidTouch:Z


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

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->mIsValidTouch:Z

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->mIsValidTouch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->mIsValidTouch:Z

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public updateValidTouch(FF)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->mIsValidTouch:Z

    return-void
.end method
