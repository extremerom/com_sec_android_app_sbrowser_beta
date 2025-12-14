.class public Lorg/chromium/url/Origin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/url/Origin$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mIsOpaque:Z

.field private final mPort:S

.field private final mScheme:Ljava/lang/String;

.field private final mTokenHighBits:J

.field private final mTokenLowBits:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;SZJJ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    iput-short p3, p0, Lorg/chromium/url/Origin;->mPort:S

    iput-boolean p4, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    iput-wide p5, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    iput-wide p7, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    return-void
.end method

.method public constructor <init>(Lorg/chromium/url/internal/mojom/Origin;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/chromium/url/internal/mojom/Origin;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iget-object v0, p1, Lorg/chromium/url/internal/mojom/Origin;->host:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    iget-short v0, p1, Lorg/chromium/url/internal/mojom/Origin;->port:S

    iput-short v0, p0, Lorg/chromium/url/Origin;->mPort:S

    iget-object p1, p1, Lorg/chromium/url/internal/mojom/Origin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    iget-wide v0, p1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->high:J

    iput-wide v0, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    iget-wide v0, p1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->low:J

    iput-wide v0, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    iput-wide v0, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    :goto_0
    return-void
.end method

.method private assignNativeOrigin(J)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/url/OriginJni;->get()Lorg/chromium/url/Origin$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    iget-short v3, p0, Lorg/chromium/url/Origin;->mPort:S

    iget-boolean v4, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    iget-wide v5, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    iget-wide v7, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    move-wide v9, p1

    invoke-interface/range {v0 .. v10}, Lorg/chromium/url/Origin$Natives;->assignNativeOrigin(Ljava/lang/String;Ljava/lang/String;SZJJJ)V

    return-void
.end method

.method public static createOpaqueOrigin()Lorg/chromium/url/Origin;
    .locals 1

    invoke-static {}, Lorg/chromium/url/OriginJni;->get()Lorg/chromium/url/Origin$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/url/Origin$Natives;->createOpaque()Lorg/chromium/url/Origin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/url/Origin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/chromium/url/Origin;

    iget-object v1, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lorg/chromium/url/Origin;->mPort:S

    iget-short v3, p1, Lorg/chromium/url/Origin;->mPort:S

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    iget-boolean v3, p1, Lorg/chromium/url/Origin;->mIsOpaque:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    iget-wide v5, p1, Lorg/chromium/url/Origin;->mTokenHighBits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    iget-wide p0, p1, Lorg/chromium/url/Origin;->mTokenLowBits:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getPort()I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-short p0, p0, Lorg/chromium/url/Origin;->mPort:S

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getTokenHighBits()J
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTokenLowBits()J
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    iget-short v2, p0, Lorg/chromium/url/Origin;->mPort:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-boolean v3, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/url/Origin;->mTokenHighBits:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lorg/chromium/url/Origin;->mTokenLowBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isOpaque()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/url/Origin;->mIsOpaque:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v0, p0, Lorg/chromium/url/Origin;->mScheme:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/url/Origin;->mHost:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getPort()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
