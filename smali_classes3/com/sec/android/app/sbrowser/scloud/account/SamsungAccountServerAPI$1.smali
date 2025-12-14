.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->getTokenAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lhd/j;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lhd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "SamsungAccountServerAPI"

    const-string p2, "campaignSign : onFailure!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onAPIFailed(I)V

    return-void
.end method

.method public onResponse(Lhd/j;Lhd/T;)V
    .locals 4
    .param p1    # Lhd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhd/T;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "SamsungAccountServerAPI"

    const-string v0, "response json = "

    const-string v1, "response code = "

    :try_start_0
    iget-object v2, p2, Lhd/T;->g:Lhd/X;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p2, Lhd/T;->d:I

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lhd/X;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    const-string v0, "error_description"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorCode = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onAPIFailed(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    const-string v0, "userId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->f(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    const-string v0, "access_token"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->b(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    const-string v0, "access_token_expires_in"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->c(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    const-string v0, "refresh_token"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->d(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    const-string v0, "refresh_token_expires_in"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->e(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->g(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lhd/X;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lhd/X;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parse failed : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
