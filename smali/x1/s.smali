.class public final synthetic Lx1/s;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:Lx1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lx1/s;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, Lx1/m;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lx1/s;->a:Lx1/s;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lx1/m;

    invoke-direct {p0}, Lx1/m;-><init>()V

    return-object p0
.end method
