.class Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dirtyTerraceState()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    return-void
.end method

.method public getZoomRate()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getZoomPercent()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isDesktopMode()Z

    move-result p0

    return p0
.end method

.method public isTabClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result p0

    return p0
.end method

.method public onSetZoomValue(DZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setZoomValue(D)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyZoomValueChanged(DZ)V

    return-void
.end method

.method public setZoomButtonVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getZoomPercent()Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const-string p0, "SBrowserTabBase"

    const-string p1, "Do not hide zoom button unless zoom rate is 100%"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->setZoomButtonVisibility(Z)V

    return-void
.end method
