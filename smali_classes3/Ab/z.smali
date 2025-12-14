.class public final synthetic LAb/z;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LAb/z;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LAb/z;

    const-string v5, "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;"

    const/4 v2, 0x1

    const/4 v1, 0x1

    const-class v3, LAb/E;

    const-string v4, "typeToString"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LAb/z;->a:LAb/z;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Type;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LAb/E;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
