.class Lorg/chromium/content/app/ContentMainJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/app/ContentMain$Natives;


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

.method public static get()Lorg/chromium/content/app/ContentMain$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/app/ContentMainJni;

    invoke-direct {v0}, Lorg/chromium/content/app/ContentMainJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setBindersFromParent(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, LJ/N;->M_Xh38az(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Z)I
    .locals 0

    invoke-static {p1}, LJ/N;->M1Y_XVCN(Z)I

    move-result p0

    return p0
.end method
