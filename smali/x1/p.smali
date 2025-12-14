.class public final Lx1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/r;


# static fields
.field public static final synthetic a:Lx1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx1/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx1/p;->a:Lx1/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    const-string p0, "operation"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lsb/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Lx1/r;)Lx1/r;
    .locals 0

    const-string p0, "other"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Modifier"

    return-object p0
.end method
