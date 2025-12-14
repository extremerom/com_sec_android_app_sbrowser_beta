.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;


# instance fields
.field mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->closeDialog()V

    :cond_0
    return-void
.end method

.method public createDialog(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->setSecurityLevel(I)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    invoke-static {}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->getInstance()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;-><init>(Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->addObserver(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->build()Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
