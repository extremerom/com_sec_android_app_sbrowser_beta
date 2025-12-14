.class public final synthetic LCb/a;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:LCb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LCb/a;

    const-string v5, "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;"

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-class v3, Luc/v;

    const-string v4, "loadFunction"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LCb/a;->a:LCb/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Luc/v;

    check-cast p2, Lcc/A;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Luc/v;->e(Lcc/A;)Lwc/s;

    move-result-object p0

    return-object p0
.end method
