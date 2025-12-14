.class Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;
.super Lcom/sec/terrace/Terrace$InnerTextCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->extractContentByExtraction(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/sec/terrace/TerraceRequestPageContextCallback;

.field final synthetic val$timeMillis:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$callback:Lcom/sec/terrace/TerraceRequestPageContextCallback;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$timeMillis:J

    invoke-direct {p0}, Lcom/sec/terrace/Terrace$InnerTextCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->onResult(Ljava/util/Optional;)V

    return-void
.end method

.method public onResult(Ljava/util/Optional;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    const-string v1, "poi"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    const-string v4, "reason"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "success"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "result"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$bundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$callback:Lcom/sec/terrace/TerraceRequestPageContextCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteController$1;->val$timeMillis:J

    sub-long/2addr v0, p0

    const-string p0, "extractContentByExtraction(): success, duration -> "

    const-string p1, "HelpMeWriteController"

    invoke-static {v0, v1, p0, p1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
