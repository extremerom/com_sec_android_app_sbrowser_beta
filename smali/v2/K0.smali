.class public final Lv2/K0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LJ2/L;


# direct methods
.method public constructor <init>(LJ2/L;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/K0;->a:LJ2/L;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/K0;

    iget-object p0, p0, Lv2/K0;->a:LJ2/L;

    invoke-direct {v0, p0, p1}, Lv2/K0;-><init>(LJ2/L;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lv2/K0;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/K0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/K0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lv2/K0;->a:LJ2/L;

    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->b(Ljava/lang/String;)Lv2/g1;

    move-result-object p0

    return-object p0
.end method
