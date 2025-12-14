.class public final Lorg/chromium/mojo_base/BigBufferUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo_base/BigBufferUtil$Mapping;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final MAX_INLINE_ARRAY_SIZE:I = 0x10000


# direct methods
.method public static map(Lorg/chromium/mojo_base/mojom/BigBuffer;)Lorg/chromium/mojo_base/BigBufferUtil$Mapping;
    .locals 6

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Union;->which()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;

    invoke-virtual {p0}, Lorg/chromium/mojo_base/mojom/BigBuffer;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;-><init>(Lorg/chromium/mojo/system/SharedBufferHandle;Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo_base/mojom/BigBuffer;->getSharedMemory()Lorg/chromium/mojo_base/mojom/BigBufferSharedMemoryRegion;

    move-result-object p0

    iget-object v0, p0, Lorg/chromium/mojo_base/mojom/BigBufferSharedMemoryRegion;->bufferHandle:Lorg/chromium/mojo/system/SharedBufferHandle;

    iget v1, p0, Lorg/chromium/mojo_base/mojom/BigBufferSharedMemoryRegion;->size:I

    int-to-long v3, v1

    sget-object v5, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    const-wide/16 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojo/system/SharedBufferHandle;->map(JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;

    iget-object p0, p0, Lorg/chromium/mojo_base/mojom/BigBufferSharedMemoryRegion;->bufferHandle:Lorg/chromium/mojo/system/SharedBufferHandle;

    invoke-direct {v1, p0, v0}, Lorg/chromium/mojo_base/BigBufferUtil$Mapping;-><init>(Lorg/chromium/mojo/system/SharedBufferHandle;Ljava/nio/ByteBuffer;)V

    return-object v1
.end method
