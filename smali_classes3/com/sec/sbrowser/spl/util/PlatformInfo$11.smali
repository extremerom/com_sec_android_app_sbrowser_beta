.class Lcom/sec/sbrowser/spl/util/PlatformInfo$11;
.super Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/util/PlatformInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v0, 0xbb9

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
