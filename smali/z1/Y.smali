.class public final Lz1/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[LAb/u;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Ltb/q;

    sget-object v1, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    const-class v2, Lz1/Y;

    const-string v3, "appManagerDataStore"

    const-string v4, "getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/r;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, v6}, Ltb/y;->g(Ltb/q;)LAb/t;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lz1/Y;->a:[LAb/u;

    return-void
.end method

.method public static final a(Lz1/Y;Ljava/lang/String;)Lp1/f;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "provider:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "name"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lp1/f;

    invoke-direct {p1, p0}, Lp1/f;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
