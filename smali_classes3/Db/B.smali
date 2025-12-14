.class public final synthetic LDb/B;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:LDb/B;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LDb/B;

    const-string v5, "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;"

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-class v3, Luc/v;

    const-string v4, "loadProperty"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LDb/B;->a:LDb/B;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Luc/v;

    check-cast p2, Lcc/I;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Luc/v;->f(Lcc/I;)Lwc/r;

    move-result-object p0

    return-object p0
.end method
