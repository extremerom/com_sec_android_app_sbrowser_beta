.class Lcom/sec/terrace/TerraceCertificateChainHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceCertificateChainHelper$Natives;


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

.method public static get()Lcom/sec/terrace/TerraceCertificateChainHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceCertificateChainHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceCertificateChainHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCertificateChain(Lorg/chromium/content_public/browser/WebContents;)[[B
    .locals 0

    invoke-static {p1}, LJ/N;->MjNHkVHk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method
