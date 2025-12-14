.class public final synthetic LPb/k;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LPb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPb/k;

    const-string v5, "isSynthetic()Z"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, Ljava/lang/reflect/Member;

    const-string v4, "isSynthetic"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPb/k;->a:LPb/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Member;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
