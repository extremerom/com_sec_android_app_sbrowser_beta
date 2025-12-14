.class Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->clearBrowsingData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$6;->this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowsingDataCleared()V
    .locals 0

    return-void
.end method
