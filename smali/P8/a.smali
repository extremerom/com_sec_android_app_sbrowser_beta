.class public abstract LP8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "a"


# virtual methods
.method public abstract getClient(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getServiceHandler(Ljava/lang/String;)LP8/b;
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p2}, LP8/a;->getServiceHandler(Ljava/lang/String;)LP8/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, LP8/a;->getClient(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3, p4}, LP8/b;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LP8/a;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "handleRequest can\'t find method:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
