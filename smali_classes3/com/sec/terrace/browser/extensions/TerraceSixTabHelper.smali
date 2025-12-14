.class public Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;,
        Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

.field private mNativeTinSixTabHelper:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    const-string p1, "EnableExtensions"

    invoke-static {p1}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    :goto_0
    return-void
.end method

.method private closeCurrentTab()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->closeCurrentTab()V

    :cond_0
    return-void
.end method

.method private closeTab(II)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->closeTab(II)V

    :cond_0
    return-void
.end method

.method private getCurrentActivityId()I
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getCurrentActivityId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getCurrentTabId()I
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getCurrentTabId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getCurrentTabIndex()I
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getCurrentTabIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getTabIdByIndex(ZI)I
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getTabIdByIndex(ZI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getTabIdList(Z)[I
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getTabIdList(Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->toIntArray(Ljava/util/List;)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isIncognito()Z
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->isIncognito()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private openInNewWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->openInNewWindow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setCurrentTab(II)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->setCurrentTab(II)V

    :cond_0
    return-void
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getLockedStatusByIndex(ZI)I
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;->getLockedStatusByIndex(ZI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public onAllTabsRemoved(ZI)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onAllTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V

    :cond_0
    return-void
.end method

.method public onAllUnlockedTabsRemoved(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onAllUnlockedTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V

    :cond_0
    return-void
.end method

.method public onBackgroundTabOpened(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onBackgroundTabOpened(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(IIIIZ)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onCurrentTabChanged(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIIZ)V

    :cond_0
    return-void
.end method

.method public onLaunchNewTab(ZI)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onLaunchNewTab(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V

    :cond_0
    return-void
.end method

.method public onOtherTabsRemoved(IZI)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onOtherTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IZI)V

    :cond_0
    return-void
.end method

.method public onTabAdded(IIIZ)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabAdded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIZ)V

    :cond_0
    return-void
.end method

.method public onTabDetailsLoaded(ILjava/lang/String;I)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabDetailsLoaded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabMoved(IIII)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabMoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIII)V

    :cond_0
    return-void
.end method

.method public onTabOrderChanged(III)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabOrderChanged(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;III)V

    :cond_0
    return-void
.end method

.method public onTabRemoved(ZI)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V

    :cond_0
    return-void
.end method

.method public onTabRemoving(IIIZ)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabRemoving(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIZ)V

    :cond_0
    return-void
.end method

.method public onTabStateLoaded(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;->get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;->mNativeTinSixTabHelper:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;->onTabStateLoaded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V

    :cond_0
    return-void
.end method
