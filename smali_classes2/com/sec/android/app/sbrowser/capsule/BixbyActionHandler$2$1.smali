.class Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2$1;->this$1:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "result"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[deleteHistory]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BixbyActionHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setHistoryBixbyUpdate(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2$1;->this$1:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;->val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 0

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    return-void
.end method
