.class public final Lmc/y;
.super Lmc/b;
.source "SourceFile"


# instance fields
.field public final c:Lyc/w;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyc/w;)V
    .locals 2

    new-instance v0, LMb/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p2}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lmc/b;-><init>(Ljava/util/List;Lsb/k;)V

    iput-object p2, p0, Lmc/y;->c:Lyc/w;

    return-void
.end method
