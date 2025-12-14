.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    return-void
.end method


# virtual methods
.method public getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiTabClosing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadAloudToolbarMaximized()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyTransBarClose()V
    .locals 0

    return-void
.end method

.method public shouldEnableCustomHeader()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateHistoryNaviAnchorView()V
    .locals 0

    return-void
.end method
