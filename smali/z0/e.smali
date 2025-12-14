.class public final Lz0/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:Lz0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Lz0/e;->a:Lz0/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->x()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La0/q;->K()V

    :cond_1
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
