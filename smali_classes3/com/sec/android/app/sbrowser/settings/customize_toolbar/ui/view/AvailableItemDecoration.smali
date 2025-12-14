.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# instance fields
.field private final mHorizontalSpace:I

.field private final mVerticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mHorizontalSpace:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mVerticalSpace:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070395

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mHorizontalSpace:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mVerticalSpace:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070394

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mHorizontalSpace:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mVerticalSpace:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 0

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mHorizontalSpace:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;->mVerticalSpace:I

    invoke-virtual {p1, p2, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
