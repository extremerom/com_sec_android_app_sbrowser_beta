.class Lorg/chromium/ui/gfx/ViewConfigurationHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/gfx/ViewConfigurationHelper$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/ui/gfx/ViewConfigurationHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/gfx/ViewConfigurationHelperJni;

    invoke-direct {v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public updateSharedViewConfiguration(Lorg/chromium/ui/gfx/ViewConfigurationHelper;FFFFF)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MtrEpb2R(Ljava/lang/Object;FFFFF)V

    return-void
.end method
