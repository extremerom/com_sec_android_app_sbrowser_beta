.class Lorg/chromium/net/NetworkCapabilitiesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mNetworkCapabilities:J

.field private final mTransportTypes:J

.field private final mWrapped:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mWrapped:Landroid/net/NetworkCapabilities;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mNetworkCapabilities:J

    iput-wide v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mTransportTypes:J

    return-void
.end method


# virtual methods
.method public hasCapability(I)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mWrapped:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTransport(I)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mWrapped:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/net/NetworkCapabilitiesWrapper;->mTransportTypes:J

    const/4 p0, 0x1

    shl-int p1, p0, p1

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
