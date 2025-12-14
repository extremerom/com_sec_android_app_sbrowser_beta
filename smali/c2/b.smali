.class public final Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc2/b;->a:Lc2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/PowerManager;)Z
    .locals 0
    .param p1    # Landroid/os/PowerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "pm"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/PowerManager;->isLowPowerStandbyEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceLightIdleMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
