.class Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(IZ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "notify() type:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isExpired:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CertificateErrorObserver"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p0, p1, 0x4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;->sFailureCode:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->certificatePolicyNotifyCertificateFailure(I)V

    return-void
.end method
