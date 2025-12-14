.class Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDialogFinished(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MXgAlY40(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public restartSearch(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCtkUBfC(JLjava/lang/Object;)V

    return-void
.end method

.method public showBluetoothAdapterOffLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M0lejnyd(JLjava/lang/Object;)V

    return-void
.end method

.method public showBluetoothOverviewLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEsnjG1b(JLjava/lang/Object;)V

    return-void
.end method

.method public showNeedLocationPermissionLink(JLcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MtF8pmIl(JLjava/lang/Object;)V

    return-void
.end method
