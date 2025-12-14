.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lc3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityDelegate:Lf1/b;

.field private final mContext:Landroid/content/Context;

.field private final mIconRes:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;

.field private mSelectedPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mAccessibilityDelegate:Lf1/b;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mContext:Landroid/content/Context;

    const p2, 0x7f0e01cb

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mIconRes:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mSelectedPage:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->lambda$setPageCount$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mSelectedPage:I

    return p0
.end method

.method private synthetic lambda$setPageCount$0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;->onPageSelected(I)V

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

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mSelectedPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mSelectedPage:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mIconRes:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mAccessibilityDelegate:Lf1/b;

    invoke-static {v2, v3}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v4, 0x8

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mSelectedPage:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->onPageSelected(I)V

    return-void
.end method

.method public setPageSelectListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;

    return-void
.end method
