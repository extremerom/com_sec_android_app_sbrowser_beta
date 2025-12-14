.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;->attachData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->notifyDataUpdated()V

    return-void
.end method
