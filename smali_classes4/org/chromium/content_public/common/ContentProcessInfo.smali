.class public final Lorg/chromium/content_public/common/ContentProcessInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sIsChildProcess:Z


# direct methods
.method public static setInChildProcess(Z)V
    .locals 0

    sput-boolean p0, Lorg/chromium/content_public/common/ContentProcessInfo;->sIsChildProcess:Z

    return-void
.end method
