.class Lorg/chromium/components/input/InputUtilsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/input/InputUtils$Natives;


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

.method public static get()Lorg/chromium/components/input/InputUtils$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/input/InputUtilsJni;

    invoke-direct {v0}, Lorg/chromium/components/input/InputUtilsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isTransferInputToVizSupported()Z
    .locals 0

    invoke-static {}, LJ/N;->MsNyAbPg()Z

    move-result p0

    return p0
.end method
