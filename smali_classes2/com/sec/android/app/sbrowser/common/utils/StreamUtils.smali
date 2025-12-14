.class public Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static close(Landroid/content/ContentProviderClient;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException when closing closeable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "StreamUtils"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
