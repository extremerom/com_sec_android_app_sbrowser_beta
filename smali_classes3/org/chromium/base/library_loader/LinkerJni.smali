.class Lorg/chromium/base/library_loader/LinkerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/library_loader/Linker$Natives;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeFindMemoryRegionAtRandomAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method private static native nativeFindRegionReservedByWebViewZygote(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeGetRelroSharingResult()I
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z
.end method

.method private static native nativeReserveMemoryForLibrary(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method private static native nativeUseRelros(JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method


# virtual methods
.method public findMemoryRegionAtRandomAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/library_loader/LinkerJni;->nativeFindMemoryRegionAtRandomAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    return-void
.end method

.method public findRegionReservedByWebViewZygote(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/library_loader/LinkerJni;->nativeFindRegionReservedByWebViewZygote(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result p0

    return p0
.end method

.method public getRelroSharingResult()I
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LinkerJni;->nativeGetRelroSharingResult()I

    move-result p0

    return p0
.end method

.method public loadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/chromium/base/library_loader/LinkerJni;->nativeLoadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result p0

    return p0
.end method

.method public reserveMemoryForLibrary(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/library_loader/LinkerJni;->nativeReserveMemoryForLibrary(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    return-void
.end method

.method public useRelros(JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/chromium/base/library_loader/LinkerJni;->nativeUseRelros(JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result p0

    return p0
.end method
