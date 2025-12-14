.class public final synthetic LJc/r;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LJc/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LJc/r;

    const-string v5, "iterator()Ljava/util/Iterator;"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, LJc/l;

    const-string v4, "iterator"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LJc/r;->a:LJc/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJc/l;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
