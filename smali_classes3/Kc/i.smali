.class public final synthetic LKc/i;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LKc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LKc/i;

    const-string v5, "next()Lkotlin/text/MatchResult;"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, LKc/e;

    const-string v4, "next"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LKc/i;->a:LKc/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LKc/e;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LKc/g;

    invoke-virtual {p1}, LKc/g;->a()LKc/g;

    move-result-object p0

    return-object p0
.end method
