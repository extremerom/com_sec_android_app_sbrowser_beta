.class Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mShadowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070676

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070677

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;->mShadowHeight:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;->setBackground()V

    return-void
.end method


# virtual methods
.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x30

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setBackground()V
    .locals 2

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;->mShadowHeight:I

    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
