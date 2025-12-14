.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->startSyncTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SBrowserSyncTimer"

    const-string v1, "executing timerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->cancelSyncTimer()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->triggerSyncManually()V

    return-void
.end method
