.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->initSyncObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->onSyncStatusChanged(I)V

    return-void
.end method
