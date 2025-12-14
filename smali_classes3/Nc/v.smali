.class public final LNc/v;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LNc/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LNc/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LNc/v;->a:LNc/v;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/f;

    instance-of p0, p1, LNc/x;

    if-eqz p0, :cond_0

    check-cast p1, LNc/x;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
