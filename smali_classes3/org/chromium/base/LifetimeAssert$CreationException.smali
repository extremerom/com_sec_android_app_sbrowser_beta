.class Lorg/chromium/base/LifetimeAssert$CreationException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/LifetimeAssert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreationException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "vvv This is where object was created. vvv"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
