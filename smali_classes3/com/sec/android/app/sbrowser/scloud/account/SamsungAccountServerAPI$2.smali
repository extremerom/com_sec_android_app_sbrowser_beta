.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->getProfileAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onAPIFailed(I)V

    return-void
.end method

.method public onResponse(Lhd/j;Lhd/T;)V
    .locals 3
    .param p1    # Lhd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhd/T;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "SamsungAccountServerAPI"

    const-string v0, "getProfileAsync response code = "

    :try_start_0
    iget-object v1, p2, Lhd/T;->g:Lhd/X;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p2, Lhd/T;->d:I

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onAPIFailed(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lhd/X;->string()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->h(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onTokenReceived()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;->val$callback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    const/4 p2, 0x2

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;->onAPIFailed(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Lhd/X;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lhd/X;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parse failed : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void
.end method
