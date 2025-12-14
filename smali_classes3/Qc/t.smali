.class public final LQc/t;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:LQc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQc/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LQc/t;->a:LQc/t;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
