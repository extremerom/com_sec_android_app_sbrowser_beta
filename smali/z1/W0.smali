.class public final Lz1/W0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lz1/W0;->a:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, LH0/g;

    iget-wide v1, p0, Lz1/W0;->a:J

    invoke-direct {v0, v1, v2}, LH0/g;-><init>(J)V

    return-object v0
.end method
