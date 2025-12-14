.class public final synthetic LZ4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/a;
.implements LR5/g;


# static fields
.field public static final synthetic a:LZ4/j;

.field public static final synthetic b:LZ4/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LZ4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZ4/j;->a:LZ4/j;

    new-instance v0, LZ4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZ4/j;->b:LZ4/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LR5/p;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    sget p0, LZ4/a;->h:I

    if-eqz p1, :cond_0

    const-string p0, "google.messenger"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, LR5/h;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 p0, 0x3

    const-string v0, "Rpc"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error making request: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p1}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
