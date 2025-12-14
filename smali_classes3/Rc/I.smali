.class public final synthetic LRc/I;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final a:LRc/I;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LRc/I;

    const-string v5, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v2, 0x0

    const/4 v1, 0x3

    const-class v3, LQc/i;

    const-string v4, "emit"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LRc/I;->a:LRc/I;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    invoke-interface {p1, p2, p3}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
