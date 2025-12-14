.class public Lcom/arcsoft/libobjectcapture/ArcObjectCaptureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileIsExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportObjectCapture()Z
    .locals 1

    const-string v0, "/system/lib64/libobjectcapture_jni.arcsoft.so"

    invoke-static {v0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureUtil;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/lib64/libobjectcapture.arcsoft.so"

    invoke-static {v0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureUtil;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
