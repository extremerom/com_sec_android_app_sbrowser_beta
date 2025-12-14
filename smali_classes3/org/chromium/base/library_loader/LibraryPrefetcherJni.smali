.class Lorg/chromium/base/library_loader/LibraryPrefetcherJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/library_loader/LibraryPrefetcherJni;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/LibraryPrefetcherJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public forkAndPrefetchNativeLibrary()V
    .locals 0

    invoke-static {}, LJ/N;->MUjpxN8d()V

    return-void
.end method

.method public percentageOfResidentNativeLibraryCode()I
    .locals 0

    invoke-static {}, LJ/N;->MdFgVRJJ()I

    move-result p0

    return p0
.end method

.method public periodicallyCollectResidency()V
    .locals 0

    invoke-static {}, LJ/N;->MLXZo1U6()V

    return-void
.end method
