.class abstract Lorg/chromium/mojo/system/impl/HandleBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field protected mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

.field private mMojoHandle:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iput-wide p2, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iput-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iget-wide v0, p1, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    iput-wide v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    iget-object p0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->close(J)V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/HandleBase;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandleImpl"

    const-string v1, "Handle was not closed."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iget-wide v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/system/impl/CoreImpl;->closeWithResult(J)I

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    return-object p0
.end method

.method public getMojoHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public releaseNativeHandle()J
    .locals 4

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:J

    return-wide v0
.end method

.method public toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method
