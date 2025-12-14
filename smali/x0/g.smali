.class public final Lx0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/k;


# instance fields
.field public a:LJ0/b;

.field public final b:Lo3/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo3/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lo3/l;->b:Ljava/lang/Object;

    sget-object v1, Lx0/f;->Unknown:Lx0/f;

    iput-object v1, v0, Lo3/l;->a:Ljava/lang/Object;

    iput-object v0, p0, Lx0/g;->b:Lo3/l;

    return-void
.end method
