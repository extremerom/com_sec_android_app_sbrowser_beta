.class public final LB0/s;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LB0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LB0/s;->a:LB0/s;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance p0, Landroidx/compose/ui/node/a;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/compose/ui/node/a;-><init>(IIZ)V

    return-object p0
.end method
