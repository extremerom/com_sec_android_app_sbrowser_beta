.class Lcom/sec/terrace/browser/webauth/TinFido2HelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webauth/TinFido2Helper$Natives;


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

.method public static get()Lcom/sec/terrace/browser/webauth/TinFido2Helper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinFido2HelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinFido2HelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public parseAttestationObject([BLcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mwcr7s3D(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
