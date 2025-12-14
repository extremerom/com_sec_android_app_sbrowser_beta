.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

.field private mIsZoomApplyToThisTabOnly:Z

.field private mIsZoomApplyToThisTabOnlyDex:Z

.field private mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

.field private mZoomValue:D

.field private mZoomValueDex:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;)V
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    return-object p0
.end method

.method private fixZoomValueIfNeeded()V
    .locals 9

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/SBrowserConstants;->ZOOM_PERCENT:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    int-to-double v7, v6

    cmpg-double v0, v0, v7

    if-gez v0, :cond_0

    int-to-double v0, v6

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setConfirmedZoomValue(D)V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    mul-double/2addr v0, v2

    aget v4, v4, v5

    int-to-double v5, v4

    cmpg-double v0, v0, v5

    if-gez v0, :cond_1

    int-to-double v0, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setConfirmedZoomValue(D)V

    :cond_1
    return-void
.end method

.method private showZoomInfoBar(ILandroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;Landroid/view/View;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->show(ILandroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public changeZoomValue(ZLandroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->getZoomRate()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->getNextZoomValue(ZI)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setConfirmedZoomValue(D)V

    if-eqz p2, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->showZoomInfoBar(ILandroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->dismissPopup()V

    return-void
.end method

.method public getNextZoomValue(ZI)D
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/SBrowserConstants;->ZOOM_PERCENT:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    if-ne v2, p2, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    if-ge p0, p1, :cond_3

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    if-lez p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    :cond_3
    :goto_2
    aget p0, v1, p0

    int-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getZoomValue()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    :goto_0
    return-wide v0
.end method

.method public getZoomValueDex()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    return-wide v0
.end method

.method public getZoomValueMobile()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    return-wide v0
.end method

.method public isZoomApplyToThisTabOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    :goto_0
    return p0
.end method

.method public isZoomApplyToThisTabOnlyDex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    return p0
.end method

.method public isZoomApplyToThisTabOnlyMobile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    return p0
.end method

.method public saveCommonZoomValue()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCommonZoomValueDex(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCommonZoomValueMobile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setConfirmedZoomValue(D)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->dirtyTerraceState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isTabClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setConfirmedZoomValue desktop mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", level: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", individual: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZoomFactor"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->saveCommonZoomValue()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    :goto_1
    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->onSetZoomValue(DZ)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->setZoomButtonVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomInfoBar:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->setZoomPercentageText(D)V

    :cond_5
    return-void
.end method

.method public setRestoredZoomValue(DZDZ)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->fixZoomValueIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->updateZoomValue()V

    return-void
.end method

.method public setZoomApplyToThisTabOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    :goto_0
    return-void
.end method

.method public setZoomValue(D)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->dirtyTerraceState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isTabClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    :goto_1
    invoke-interface {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->onSetZoomValue(DZ)V

    return-void
.end method

.method public showZoomInfoBar(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->getZoomRate()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->showZoomInfoBar(ILandroid/view/View;Z)V

    return-void
.end method

.method public updateZoomValue()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnlyDex:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueDex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValueDex:D

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setZoomValue(D)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mIsZoomApplyToThisTabOnly:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    :cond_2
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->mZoomValue:D

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setZoomValue(D)V

    :goto_0
    return-void
.end method
