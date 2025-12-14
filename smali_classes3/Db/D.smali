.class public final LDb/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:LDb/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LDb/D;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDb/D;->a:LDb/D;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJb/p;

    check-cast p2, LJb/p;

    sget-object p0, LDb/I;->a:LKc/j;

    invoke-static {p1, p2}, LJb/q;->b(LJb/p;LJb/p;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
