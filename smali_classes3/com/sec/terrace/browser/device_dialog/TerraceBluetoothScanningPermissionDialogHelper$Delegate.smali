.class public interface abstract Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method

.method public abstract closeDialog()V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method

.method public abstract createDialog(Landroid/app/Activity;Ljava/lang/String;I)Z
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method
