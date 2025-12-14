.class public final Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;,
        Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Natives;,
        Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Observer;
    }
.end annotation


# static fields
.field static sInstance:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;


# instance fields
.field mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

.field mNativeBluetoothScanningPromptPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mNativeBluetoothScanningPromptPtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;
    .locals 1
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->sInstance:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->sInstance:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->sInstance:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    return-object v0
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;->addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;->closeDialog()V

    :cond_0
    return-void
.end method

.method public createDialog(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-wide p4, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mNativeBluetoothScanningPromptPtr:J

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;->createDialog(Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dialogFinished(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mNativeBluetoothScanningPromptPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelperJni;->get()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mNativeBluetoothScanningPromptPtr:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Natives;->onDialogFinished(JLcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;I)V

    :cond_0
    return-void
.end method

.method public exitDialog()V
    .locals 2
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mNativeBluetoothScanningPromptPtr:J

    return-void
.end method

.method public setDelegate(Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;)V
    .locals 0
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->getInstance()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    move-result-object p0

    iput-object p1, p0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->mDelegate:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;

    return-void
.end method
