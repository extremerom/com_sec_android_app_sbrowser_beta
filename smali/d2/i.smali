.class public final Ld2/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:Ld2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld2/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Ld2/i;->a:Ld2/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm1/a;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LG5/n;->b()Lp1/b;

    move-result-object p0

    return-object p0
.end method
