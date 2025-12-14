.class Lorg/chromium/base/SysUtilsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/SysUtils$Natives;


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

.method public static get()Lorg/chromium/base/SysUtils$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/SysUtilsJni;

    invoke-direct {v0}, Lorg/chromium/base/SysUtilsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public logPageFaultCountToTracing()V
    .locals 0

    invoke-static {}, LJ/N;->MOXOasS5()V

    return-void
.end method
