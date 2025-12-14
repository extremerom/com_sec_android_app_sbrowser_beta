.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Observer;


# instance fields
.field mHelper:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;->mHelper:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    return-void
.end method


# virtual methods
.method public exitDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;->mHelper:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->exitDialog()V

    :cond_0
    return-void
.end method

.method public finishDialog(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;->mHelper:Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->dialogFinished(I)V

    :cond_0
    return-void
.end method
