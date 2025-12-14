.class public final synthetic LAb/D;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LAb/D;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LAb/D;

    const-string v5, "getComponentType()Ljava/lang/Class;"

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, Ljava/lang/Class;

    const-string v4, "getComponentType"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LAb/D;->a:LAb/D;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Class;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
