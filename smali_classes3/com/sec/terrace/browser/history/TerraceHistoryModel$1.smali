.class Lcom/sec/terrace/browser/history/TerraceHistoryModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/history/TerraceHistoryModel;->clearAllHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/history/TerraceHistoryModel;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$1;->this$0:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowsingDataCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$1;->this$0:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-static {p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->a(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)V

    return-void
.end method
