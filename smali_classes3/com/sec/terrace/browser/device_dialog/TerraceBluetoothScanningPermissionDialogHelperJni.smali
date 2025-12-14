.class Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Natives;


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

.method public static get()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDialogFinished(JLcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mpkzsda6(JLjava/lang/Object;I)V

    return-void
.end method
