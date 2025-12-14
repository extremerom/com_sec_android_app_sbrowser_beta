.class public final Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;,
        Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;,
        Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;
    }
.end annotation


# static fields
.field static sInstance:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;


# instance fields
.field mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

.field mNativeBluetoothChooserDialogPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;
    .locals 1
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->sInstance:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->sInstance:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->sInstance:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    return-object v0
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->closeDialog()V

    :cond_0
    return-void
.end method

.method public createDialog(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-wide p4, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->createDialog(Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dialogFinished(ILjava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;->get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;->onDialogFinished(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;ILjava/lang/String;)V

    return-void
.end method

.method public exitDialog()V
    .locals 2
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    return-void
.end method

.method public notifyAdapterTurnedOff()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->notifyAdapterTurnedOff()V

    :cond_0
    return-void
.end method

.method public notifyAdapterTurnedOn()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->notifyAdapterTurnedOn()V

    :cond_0
    return-void
.end method

.method public notifyDiscoveryState(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->notifyDiscoveryState(I)V

    :cond_0
    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;->removeDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restartSearch()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;->get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;->restartSearch(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;)V
    .locals 0
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->getInstance()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    move-result-object p0

    iput-object p1, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mDelegate:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;

    return-void
.end method

.method public showBluetoothAdapterOffLink()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;->get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;->showBluetoothAdapterOffLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V

    return-void
.end method

.method public showBluetoothOverviewLink()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;->get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;->showBluetoothOverviewLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V

    return-void
.end method

.method public showNeedLocationPermissionLink()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;->get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->mNativeBluetoothChooserDialogPtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;->showNeedLocationPermissionLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V

    return-void
.end method
