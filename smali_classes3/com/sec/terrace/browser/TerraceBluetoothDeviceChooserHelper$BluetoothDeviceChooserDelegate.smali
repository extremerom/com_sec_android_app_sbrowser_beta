.class public interface abstract Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothDeviceChooserDelegate"
.end annotation


# virtual methods
.method public abstract addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V
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

.method public abstract notifyAdapterTurnedOff()V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method

.method public abstract notifyAdapterTurnedOn()V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method

.method public abstract notifyDiscoveryState(I)V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method

.method public abstract removeDevice(Ljava/lang/String;)V
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation
.end method
