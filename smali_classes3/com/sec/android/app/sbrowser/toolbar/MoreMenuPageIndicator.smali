.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lc3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityDelegate:Lf1/b;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;

.field private mSelectedPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mAccessibilityDelegate:Lf1/b;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mSelectedPage:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->lambda$setPageCount$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mSelectedPage:I

    return p0
.end method

.method private synthetic lambda$setPageCount$0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;->onPageSelected(I)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mSelectedPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mSelectedPage:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071610

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07160f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f08077c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f14040e

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mAccessibilityDelegate:Lf1/b;

    invoke-static {v2, v3}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/u;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/toolbar/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mSelectedPage:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->onPageSelected(I)V

    return-void
.end method

.method public setPageSelectListener(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;

    return-void
.end method
