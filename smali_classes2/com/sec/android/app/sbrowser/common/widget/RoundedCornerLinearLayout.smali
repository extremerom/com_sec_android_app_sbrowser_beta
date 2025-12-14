.class public Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mRoundedCorner:Lq/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lq/d;

    if-nez v0, :cond_0

    new-instance v0, Lq/d;

    invoke-direct {v0, p1}, Lq/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lq/d;

    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Lq/d;->d(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lq/d;

    iget-object v0, p0, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Lq/d;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRoundedCorners(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;->mRoundedCorner:Lq/d;

    invoke-virtual {p0, p1}, Lq/d;->d(I)V

    return-void
.end method
