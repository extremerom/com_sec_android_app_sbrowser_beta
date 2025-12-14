.class Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->deleteHistory(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

.field final synthetic val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;->this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;->val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2$1;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->clearAllHistory()V

    return-void
.end method
