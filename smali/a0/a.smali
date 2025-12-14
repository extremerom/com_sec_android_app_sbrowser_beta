.class public final La0/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:La0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, La0/a;->a:La0/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, La0/B;->a:La0/B;

    goto :goto_0

    :cond_0
    sget-object p0, La0/t0;->a:La0/t0;

    :goto_0
    return-object p0
.end method
