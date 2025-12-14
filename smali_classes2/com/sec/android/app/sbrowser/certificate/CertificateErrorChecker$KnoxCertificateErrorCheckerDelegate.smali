.class Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker$KnoxCertificateErrorCheckerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxCertificateErrorCheckerDelegate"
.end annotation


# virtual methods
.method public check(Ljava/security/cert/CertificateException;)I
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "check - certificate error type e:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CertificateErrorChecker"

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->certificatePolicyIsRevocationCheckEnabled()Z

    move-result p0

    const/4 v1, -0x2

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->c(Ljava/security/cert/CertificateException;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "check - certificate error msg:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 p0, -0x65

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->b()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 p0, -0x64

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method
