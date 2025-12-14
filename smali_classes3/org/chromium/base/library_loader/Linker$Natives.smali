.class interface abstract Lorg/chromium/base/library_loader/Linker$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract findMemoryRegionAtRandomAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method public abstract findRegionReservedByWebViewZygote(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public abstract getRelroSharingResult()I
.end method

.method public abstract loadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z
.end method

.method public abstract reserveMemoryForLibrary(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method public abstract useRelros(JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method
