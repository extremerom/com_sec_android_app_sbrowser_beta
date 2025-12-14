.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;


# instance fields
.field mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->closeDialog()V

    :cond_0
    return-void
.end method

.method public createDialog(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->setSecurityLevel(I)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;

    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->getInstance()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;-><init>(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->addObserver(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->build()Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAdapterTurnedOff()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->notifyAdapterTurnedOff()V

    :cond_0
    return-void
.end method

.method public notifyAdapterTurnedOn()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->notifyAdapterTurnedOn()V

    :cond_0
    return-void
.end method

.method public notifyDiscoveryState(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->notifyDiscoveryState(I)V

    :cond_0
    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;->mDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->removeDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
