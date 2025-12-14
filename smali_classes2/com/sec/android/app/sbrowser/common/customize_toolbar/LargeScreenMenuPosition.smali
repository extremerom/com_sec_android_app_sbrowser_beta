.class abstract Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPositionMobileLayout(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getAllToolbarItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0x20

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_1

    if-eqz p0, :cond_0

    move v3, v4

    :cond_0
    or-int/lit8 p0, v3, 0x2

    return p0

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    or-int/lit8 p0, v3, 0x2

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x7f0b0069

    if-ne p2, v1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-ge v0, p1, :cond_6

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    or-int/lit8 p0, v3, 0x2

    return p0

    :cond_6
    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    or-int/lit8 p0, v3, 0x2

    return p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    or-int/lit8 p0, v3, 0x2

    return p0
.end method

.method private getPositionTabletLayout(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getToolbarLeftItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getToolbarRightItems()Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x20

    const/16 v5, 0x10

    if-lt v2, v3, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_5

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lt v1, p3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_3

    move v4, v5

    :cond_3
    or-int p0, p1, v4

    return p0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const v2, 0x7f0b0069

    if-ge v1, p3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MenuItem;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    if-ne p3, v2, :cond_6

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    or-int p0, p1, v4

    return p0

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MenuItem;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    if-ne p3, v2, :cond_8

    if-eqz p0, :cond_7

    move v4, v5

    :cond_7
    or-int p0, p1, v4

    return p0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p3, :cond_b

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    or-int p0, p1, v4

    return p0

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p3, :cond_d

    if-eqz p0, :cond_c

    move v4, v5

    :cond_c
    or-int p0, p1, v4

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getPosition(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I
    .locals 1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    :goto_0
    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isMobileLayout()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;->getPositionMobileLayout(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;->getPositionTabletLayout(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I

    move-result p0

    return p0
.end method
