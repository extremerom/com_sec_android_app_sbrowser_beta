.class public interface abstract Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-void
.end method


# virtual methods
.method public canMoveTab(ZII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public finishSplitMode()V
    .locals 0

    return-void
.end method

.method public getAllTabIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object p0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getGroupCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGroupName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIndexByGroup(ZLjava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getIndexByTabId(ZI)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMovableGroupList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalUrl(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabColor(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabHeight(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabIdByIndex(ZI)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTabIdList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object p0
.end method

.method public getTabWidth(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTitleOrUrl(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnlockedGroupTabCount(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUnlockedTabCount(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasGroup(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasLockedTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasLockedTabInGroup(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentTab(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInTabList(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoGroup(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoTab(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLockedTab(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedToUpdateLayout()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenInOtherWindowAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabLockSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabRestoring()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUndoAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public printTabsIfNeeded(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public shouldFetchFaviconFromHistory(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateCustomHeader(Z)V
    .locals 0

    return-void
.end method
