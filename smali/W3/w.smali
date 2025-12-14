.class public final LW3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LW3/z;

.field public final b:Lv/r;


# direct methods
.method public constructor <init>(LZ3/x;)V
    .locals 2

    new-instance v0, LW3/z;

    invoke-direct {v0, p1}, LW3/z;-><init>(LZ3/x;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lv/r;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lv/r;-><init>(I)V

    iput-object p1, p0, LW3/w;->b:Lv/r;

    iput-object v0, p0, LW3/w;->a:LW3/z;

    return-void
.end method
