.class public final Lrd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd/k;


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    sget-boolean p0, Lqd/h;->d:Z

    invoke-static {}, Lqd/f;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Lrd/m;
    .locals 0

    new-instance p0, Lrd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
