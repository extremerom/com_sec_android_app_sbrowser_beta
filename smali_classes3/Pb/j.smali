.class public final synthetic LPb/j;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LPb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPb/j;

    const-string v5, "<init>(Ljava/lang/reflect/Constructor;)V"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, LPb/q;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPb/j;->a:LPb/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Constructor;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LPb/q;

    invoke-direct {p0, p1}, LPb/q;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0
.end method
