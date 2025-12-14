.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(LI4/d;)LI4/g;
    .locals 2

    new-instance p0, LF4/d;

    check-cast p1, LI4/b;

    iget-object v0, p1, LI4/b;->a:Landroid/content/Context;

    iget-object v1, p1, LI4/b;->b:LQ4/a;

    iget-object p1, p1, LI4/b;->c:LQ4/a;

    invoke-direct {p0, v0, v1, p1}, LF4/d;-><init>(Landroid/content/Context;LQ4/a;LQ4/a;)V

    return-object p0
.end method
