.class public final Lv2/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LYc/d;

.field public final b:Lv2/H0;


# direct methods
.method public constructor <init>(Lv2/L0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    iput-object v0, p0, Lv2/D0;->a:LYc/d;

    new-instance v0, Lv2/H0;

    invoke-direct {v0, p1}, Lv2/H0;-><init>(Lv2/L0;)V

    iput-object v0, p0, Lv2/D0;->b:Lv2/H0;

    return-void
.end method
