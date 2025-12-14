.class public Lorg/chromium/window/WindowApiCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final sAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/chromium/window/WindowUtil;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/chromium/window/WindowApiCheck;->sAvailable:Z

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/window/WindowApiCheck;->sAvailable:Z

    return v0
.end method
