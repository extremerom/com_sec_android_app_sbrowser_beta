.class public final Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Samsung Account info issue with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;->getErrorDetail(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getErrorDetail(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown reason"

    return-object p0

    :cond_0
    const-string p0, "timeout"

    return-object p0

    :cond_1
    const-string p0, "invalid type"

    return-object p0

    :cond_2
    const-string p0, "no data"

    return-object p0

    :cond_3
    const-string p0, "no instance"

    return-object p0
.end method
