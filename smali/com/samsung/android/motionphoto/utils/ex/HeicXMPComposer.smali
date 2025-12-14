.class final Lcom/samsung/android/motionphoto/utils/ex/HeicXMPComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0083 \u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0083 \u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/motionphoto/utils/ex/HeicXMPComposer;",
        "",
        "Ljava/io/FileDescriptor;",
        "fd",
        "Ldb/r;",
        "native_remove_xmp_on_heic",
        "(Ljava/io/FileDescriptor;)V",
        "",
        "xmpSize",
        "",
        "native_reserve_xmp_on_heic",
        "(Ljava/io/FileDescriptor;I)J",
        "motionphoto_utils_ex_v1.3.20_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apex_motionphoto_utils_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private final native native_remove_xmp_on_heic(Ljava/io/FileDescriptor;)V
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation
.end method

.method private final native native_reserve_xmp_on_heic(Ljava/io/FileDescriptor;I)J
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation
.end method
