.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;


# instance fields
.field mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    return-void
.end method


# virtual methods
.method public dialogFinished(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->dialogFinished(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exitDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->exitDialog()V

    :cond_0
    return-void
.end method

.method public restartSearch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->restartSearch()V

    :cond_0
    return-void
.end method

.method public showBluetoothAdapterOffLink()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->showBluetoothAdapterOffLink()V

    :cond_0
    return-void
.end method

.method public showBluetoothOverviewLink()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->showBluetoothOverviewLink()V

    :cond_0
    return-void
.end method

.method public showNeedLocationPermissionLink()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserObserverImpl;->mHelper:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->showNeedLocationPermissionLink()V

    :cond_0
    return-void
.end method
