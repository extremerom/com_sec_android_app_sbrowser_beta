.class interface abstract Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/library_loader/LibraryPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract forkAndPrefetchNativeLibrary()V
.end method

.method public abstract percentageOfResidentNativeLibraryCode()I
.end method

.method public abstract periodicallyCollectResidency()V
.end method
