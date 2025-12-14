.class public final Lv2/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQc/h;

.field public final b:Lo3/e;

.field public final c:LB3/c;


# direct methods
.method public constructor <init>(LQc/h;Lo3/e;LB3/c;Lsb/a;)V
    .locals 1

    const-string v0, "cachedPageEvent"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/M0;->a:LQc/h;

    iput-object p2, p0, Lv2/M0;->b:Lo3/e;

    iput-object p3, p0, Lv2/M0;->c:LB3/c;

    return-void
.end method
