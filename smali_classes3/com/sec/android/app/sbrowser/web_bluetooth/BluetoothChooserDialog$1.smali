.class Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.location.MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->notifyAdapterTurnedOff()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->restartSearch()V

    :cond_2
    return-void
.end method
