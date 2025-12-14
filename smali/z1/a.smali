.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/q;


# instance fields
.field public final a:LK1/c;


# direct methods
.method public constructor <init>(LK1/c;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->a:LK1/c;

    return-void
.end method
