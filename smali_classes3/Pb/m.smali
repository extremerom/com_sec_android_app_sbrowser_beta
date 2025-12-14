.class public final synthetic LPb/m;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LPb/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPb/m;

    const-string v5, "<init>(Ljava/lang/reflect/Method;)V"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, LPb/w;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPb/m;->a:LPb/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LPb/w;

    invoke-direct {p0, p1}, LPb/w;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0
.end method
