.class Lorg/chromium/net/X509UtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/X509Util$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/net/X509Util$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/net/X509UtilJni;

    invoke-direct {v0}, Lorg/chromium/net/X509UtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public notifyClientCertStoreChanged()V
    .locals 0

    invoke-static {}, LJ/N;->MJdorYDE()V

    return-void
.end method

.method public notifyTrustStoreChanged()V
    .locals 0

    invoke-static {}, LJ/N;->M6C2IQIc()V

    return-void
.end method
