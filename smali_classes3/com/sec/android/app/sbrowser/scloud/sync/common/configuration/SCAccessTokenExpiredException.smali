.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAccessTokenExpiredException;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException;
.source "SourceFile"


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", eCode : accessToken expired."

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
