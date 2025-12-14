.class Lorg/chromium/base/task/TaskOriginException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "vvv This is where the task was posted. vvv"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
